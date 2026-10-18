package com.tencent.taes.remote.api.location.nmea;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.remote.api.location.nmea.GnssStatus;
import com.yftech.transfer.phonelink.manager.CarLocationManager;
import com.yftech.transfer.service.CarAppList;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class NmeaParser {
    private static final int GPS_FIXED = 3;
    private static final int GPS_NONE = 0;
    private static final int GPS_NOTIFY = 4;
    private static final String TAG = "NMEA";
    private GnssStatus mGnssStatus;
    private GnssStatus.Listener mGpsStatusListener;
    private Handler mHandler;
    private NmeaLocationListener mLocationListener;
    private int mCurrentGpsStatus = 0;
    private ArrayList<Integer> activeSatellites = new ArrayList<>();
    private TextUtils.SimpleStringSplitter mNmeaSplitter = new TextUtils.SimpleStringSplitter(',');
    private boolean mShouldParseStatellite = true;
    private NmeaParserUtil mParserUtil = new NmeaParserUtil();

    public void start() {
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        if (looper == null) {
            Log.e(TAG, "nmea handler looper create fail");
            looper = Looper.getMainLooper();
        }
        start(looper);
    }

    public void start(Looper looper) {
        this.mGnssStatus = new GnssStatus();
        this.mGnssStatus.setShouldCopySatelliteList(this.mShouldParseStatellite);
        this.mHandler = new Handler(looper) { // from class: com.tencent.taes.remote.api.location.nmea.NmeaParser.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                NmeaParser.this.parse((String) message.obj);
            }
        };
    }

    public void close() {
        Looper looper;
        if (this.mHandler == null || (looper = this.mHandler.getLooper()) == null || looper == Looper.getMainLooper()) {
            return;
        }
        looper.quit();
    }

    public void parseNmea(String str) {
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.obj = str;
        this.mHandler.sendMessage(obtainMessage);
    }

    public void setLocationListener(NmeaLocationListener nmeaLocationListener) {
        this.mLocationListener = nmeaLocationListener;
    }

    public void setGnssStatusListener(GnssStatus.Listener listener) {
        this.mGpsStatusListener = listener;
    }

    public void setParseStatellite(final boolean z) {
        if (this.mHandler != null) {
            this.mHandler.post(new Runnable() { // from class: com.tencent.taes.remote.api.location.nmea.NmeaParser.2
                @Override // java.lang.Runnable
                public void run() {
                    NmeaParser.this.mShouldParseStatellite = z;
                    if (NmeaParser.this.mGnssStatus != null) {
                        NmeaParser.this.mGnssStatus.setShouldCopySatelliteList(z);
                    }
                }
            });
            return;
        }
        this.mShouldParseStatellite = z;
        if (this.mGnssStatus != null) {
            this.mGnssStatus.setShouldCopySatelliteList(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parse(String str) {
        char c;
        if (str == null || str.length() < 6) {
            return;
        }
        String substring = str.substring(3, 6);
        int hashCode = substring.hashCode();
        if (hashCode == 70497) {
            if (substring.equals("GGA")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode == 70869) {
            if (substring.equals("GSA")) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 70890) {
            if (hashCode == 81256 && substring.equals("RMC")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (substring.equals("GSV")) {
                c = 3;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                this.mNmeaSplitter.setString(str.substring(7, str.lastIndexOf("*")));
                if (parseGGA()) {
                    this.mCurrentGpsStatus = 3;
                } else {
                    this.mCurrentGpsStatus = 4;
                }
                this.mGnssStatus.copySatellite();
                if (this.mGpsStatusListener != null) {
                    try {
                        this.mGpsStatusListener.onGnssStatusChanged(4, this.mGnssStatus);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                this.mGnssStatus.clearSatellitesList();
                this.mGnssStatus.clearUsedSatellite();
                return;
            case 1:
                this.mNmeaSplitter.setString(str.substring(7, str.lastIndexOf("*")));
                if (parseRMC()) {
                    this.mCurrentGpsStatus = 3;
                    if (this.mLocationListener != null) {
                        this.mLocationListener.onNmeaLocationChanged(this.mGnssStatus.getFixLocation(), this.mGnssStatus);
                    }
                    this.mGnssStatus.setFixed(true);
                    return;
                }
                this.mCurrentGpsStatus = 3;
                if (this.mLocationListener != null) {
                    this.mLocationListener.onNmeaLocationChanged(this.mGnssStatus.getEmptyLocation(), this.mGnssStatus);
                }
                this.mGnssStatus.setFixed(true);
                return;
            case 2:
                this.mNmeaSplitter.setString(str.substring(7, str.lastIndexOf("*")));
                parseGSA(str.substring(1, 3));
                return;
            case 3:
                this.mNmeaSplitter.setString(str.substring(7, str.lastIndexOf("*")));
                parseGSV(str.substring(1, 3));
                return;
            default:
                return;
        }
    }

    public boolean hasGPSFixed() {
        return this.mCurrentGpsStatus == 3;
    }

    public GnssStatus getGnssStatus() {
        return this.mGnssStatus;
    }

    private boolean parseGGA() {
        this.mNmeaSplitter.next();
        String next = this.mNmeaSplitter.next();
        String next2 = this.mNmeaSplitter.next();
        String next3 = this.mNmeaSplitter.next();
        String next4 = this.mNmeaSplitter.next();
        String next5 = this.mNmeaSplitter.next();
        String next6 = this.mNmeaSplitter.next();
        String next7 = this.mNmeaSplitter.next();
        String next8 = this.mNmeaSplitter.next();
        String next9 = this.mNmeaSplitter.next();
        String next10 = this.mNmeaSplitter.next();
        this.mNmeaSplitter.next();
        if (next5 == null || "".equals(next5) || CarAppList.MediaPage.PAGE_FM.equals(next5)) {
            return CarAppList.MediaPage.PAGE_FM.equals(next5) ? false : false;
        }
        this.mGnssStatus.setQuality(this.mParserUtil.parseNmeaInt(next5));
        if (next != null && !"".equals(next)) {
            this.mGnssStatus.setLatitude(this.mParserUtil.parseNmeaLatitude(next, next2));
        }
        if (next3 != null && !"".equals(next3)) {
            this.mGnssStatus.setLongitude(this.mParserUtil.parseNmeaLongitude(next3, next4));
        }
        if (next7 != null && !"".equals(next7)) {
            this.mGnssStatus.setHDOP(this.mParserUtil.parseNmeaFloat(next7));
        }
        if (next8 != null && !"".equals(next8)) {
            this.mGnssStatus.setAltitude(this.mParserUtil.parseNmeaAlt(next8, next9).doubleValue());
        }
        if (next6 != null && !"".equals(next6)) {
            this.mGnssStatus.setNbSat(this.mParserUtil.parseNmeaInt(next6));
        }
        if (next10 == null || "".equals(next10)) {
            return true;
        }
        this.mGnssStatus.setHeight(this.mParserUtil.parseNmeaFloat(next10));
        return true;
    }

    private boolean parseRMC() {
        String next = this.mNmeaSplitter.next();
        String next2 = this.mNmeaSplitter.next();
        String next3 = this.mNmeaSplitter.next();
        String next4 = this.mNmeaSplitter.next();
        String next5 = this.mNmeaSplitter.next();
        String next6 = this.mNmeaSplitter.next();
        String next7 = this.mNmeaSplitter.next();
        String next8 = this.mNmeaSplitter.next();
        String next9 = this.mNmeaSplitter.next();
        this.mNmeaSplitter.next();
        this.mNmeaSplitter.next();
        this.mGnssStatus.setMode(next2);
        this.mGnssStatus.setFixTimestamp(this.mParserUtil.parseNmeaTime(next9, next));
        if (next2 == null || "".equals(next2) || !CarLocationManager.STATUS_EFFECT.equals(next2)) {
            return CarLocationManager.STATUS_NO_EFFECT.equals(next2) ? false : false;
        }
        if (next3 != null && !"".equals(next3)) {
            this.mGnssStatus.setLatitude(this.mParserUtil.parseNmeaLatitude(next3, next4));
        }
        if (next5 != null && !"".equals(next5)) {
            this.mGnssStatus.setLongitude(this.mParserUtil.parseNmeaLongitude(next5, next6));
        }
        if (next7 != null && !"".equals(next7)) {
            this.mGnssStatus.setSpeed(this.mParserUtil.parseNmeaSpeed(next7, "N"));
        }
        if (next8 == null || "".equals(next8)) {
            return true;
        }
        this.mGnssStatus.setBearing(this.mParserUtil.parseNmeaFloat(next8));
        return true;
    }

    private void parseGSA(String str) {
        this.mGnssStatus.setMode(this.mNmeaSplitter.next());
        if (CarAppList.MediaPage.PAGE_AM.equals(this.mNmeaSplitter.next())) {
            return;
        }
        for (int i = 0; i < 12; i++) {
            String next = this.mNmeaSplitter.next();
            if (next != null && !"".equals(next)) {
                this.mGnssStatus.addUsedSatellite(((Integer) parase(str, Integer.parseInt(next)).second).intValue());
            }
        }
        String next2 = this.mNmeaSplitter.next();
        String next3 = this.mNmeaSplitter.next();
        String next4 = this.mNmeaSplitter.next();
        this.mGnssStatus.setPDOP(Float.parseFloat(next2));
        this.mGnssStatus.setHDOP(Float.parseFloat(next3));
        this.mGnssStatus.setVDOP(Float.parseFloat(next4));
    }

    private void parseGSV(String str) {
        int intValue;
        if (this.mShouldParseStatellite) {
            String next = this.mNmeaSplitter.next();
            String next2 = this.mNmeaSplitter.next();
            String next3 = this.mNmeaSplitter.next();
            Integer valueOf = Integer.valueOf(Integer.parseInt(next2));
            Integer valueOf2 = Integer.valueOf(Integer.parseInt(next));
            Integer valueOf3 = Integer.valueOf(Integer.parseInt(next3));
            if (valueOf3.intValue() != 0) {
                boolean equals = valueOf.equals(valueOf2);
                int i = 4;
                if (equals && (intValue = valueOf3.intValue() % 4) != 0) {
                    i = intValue;
                }
                for (int i2 = 0; i2 < i; i2++) {
                    String next4 = this.mNmeaSplitter.next();
                    if (next4 == null || "".equals(next4)) {
                        return;
                    }
                    String next5 = this.mNmeaSplitter.next();
                    String next6 = this.mNmeaSplitter.next();
                    float parseNmeaFloat = this.mParserUtil.parseNmeaFloat(this.mNmeaSplitter.next());
                    if (parseNmeaFloat < 65.0f) {
                        Pair<String, Integer> parase = parase(str, Integer.parseInt(next4));
                        String str2 = (String) parase.first;
                        int intValue2 = ((Integer) parase.second).intValue();
                        GnssSatellite gnssSatellite = new GnssSatellite(str2, intValue2);
                        gnssSatellite.setStatus(this.mParserUtil.parseNmeaFloat(next5), this.mParserUtil.parseNmeaFloat(next6), parseNmeaFloat);
                        this.mGnssStatus.addSatellite(gnssSatellite);
                        this.activeSatellites.add(Integer.valueOf(intValue2));
                    }
                }
            }
        }
    }

    private Pair<String, Integer> parase(String str, int i) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == 2114) {
            if (str.equals("BD")) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 2277) {
            if (hashCode == 2281 && str.equals("GP")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("GL")) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                if (i < 64) {
                    str = "GL";
                    break;
                }
                break;
            case 1:
                if (i != 193) {
                    if (200 < i && i < 211) {
                        str = "BD";
                        break;
                    } else if (32 < i && i < 72) {
                        str = "SB";
                        break;
                    } else if (119 < i && i < 139) {
                        str = "SB";
                        break;
                    }
                } else {
                    str = "QZ";
                    break;
                }
                break;
            case 2:
                if (i < 16) {
                    i += 200;
                    break;
                }
                break;
        }
        return new Pair<>(str, Integer.valueOf(i));
    }
}
