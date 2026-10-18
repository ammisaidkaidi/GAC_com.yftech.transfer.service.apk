package com.tencent.taes.remote.api.location.nmea;

import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class GnssStatus {
    static final int GPS_EVENT_FIRST_FIX = 3;
    static final int GPS_EVENT_SATELLITE_STATUS = 4;
    static final int GPS_EVENT_STARTED = 1;
    static final int GPS_EVENT_STOPPED = 2;
    public static final int SIGNAL_LEVEL_1 = 1;
    public static final int SIGNAL_LEVEL_2 = 2;
    public static final int SIGNAL_LEVEL_3 = 3;
    public static final int SIGNAL_LEVEL_4 = 4;
    public static final int SIGNAL_LEVEL_5 = 5;
    private float HDOP;
    private float PDOP;
    private float VDOP;
    private double altitude;
    private float angle;
    private int fixMode;
    private long fixTimestamp;
    private double height;
    private double latitude;
    private double longitude;
    private int mUsedSatelliteNum;
    private String mode;
    private int nbsat;
    private int numSatellites;
    private float precision;
    private int quality;
    private float speed;
    private long startTimestamp;
    private long timestamp;
    private long firstFixTimestamp = 0;
    private boolean mShouldCopySatelliteList = true;
    private SparseIntArray mUsedSatelliteArray = new SparseIntArray();
    private List<GnssSatellite> mCurrentGnssSatelliteList = new ArrayList();
    private List<GnssSatellite> mGnssSatelliteListCopy = new ArrayList();
    private boolean hasFixed = false;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Listener {
        void onGnssStatusChanged(int i, GnssStatus gnssStatus);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addUsedSatellite(int i) {
        this.mUsedSatelliteArray.put(i, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearUsedSatellite() {
        Log.e("GSA", "clearUsedSatellite");
        this.mUsedSatelliteArray.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void setShouldCopySatelliteList(boolean z) {
        this.mShouldCopySatelliteList = z;
        if (!z) {
            this.mCurrentGnssSatelliteList.clear();
            this.mGnssSatelliteListCopy.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addSatellite(GnssSatellite gnssSatellite) {
        this.mCurrentGnssSatelliteList.add(gnssSatellite);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearSatellitesList() {
        this.mCurrentGnssSatelliteList.clear();
    }

    public synchronized int getFixSatelliteCount() {
        return this.mUsedSatelliteNum;
    }

    public synchronized List<GnssSatellite> getSatellites() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList(this.mGnssSatelliteListCopy.size());
            for (int i = 0; i < this.mGnssSatelliteListCopy.size(); i++) {
                arrayList.add(this.mGnssSatelliteListCopy.get(i).copy());
            }
        } catch (Throwable unused) {
            return new ArrayList();
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized GnssStatus copySatellite() {
        this.mUsedSatelliteNum = this.mUsedSatelliteArray.size();
        if (this.mShouldCopySatelliteList) {
            this.mGnssSatelliteListCopy.clear();
            for (int i = 0; i < this.mCurrentGnssSatelliteList.size(); i++) {
                GnssSatellite gnssSatellite = this.mCurrentGnssSatelliteList.get(i);
                gnssSatellite.setUsedInFix(this.mUsedSatelliteArray.indexOfKey(gnssSatellite.getPrn()) >= 0);
                this.mGnssSatelliteListCopy.add(gnssSatellite);
            }
            Collections.sort(this.mGnssSatelliteListCopy, new Comparator<GnssSatellite>() { // from class: com.tencent.taes.remote.api.location.nmea.GnssStatus.1
                @Override // java.util.Comparator
                public int compare(GnssSatellite gnssSatellite2, GnssSatellite gnssSatellite3) {
                    return gnssSatellite2.getPrn() - gnssSatellite3.getPrn();
                }
            });
        }
        return this;
    }

    void clearTTFF() {
        this.firstFixTimestamp = 0L;
    }

    long getTTFF() {
        if (this.firstFixTimestamp == 0 || this.startTimestamp == 0 || this.firstFixTimestamp < this.startTimestamp) {
            return 0L;
        }
        return this.firstFixTimestamp - this.startTimestamp;
    }

    long getFixTimestamp() {
        return this.fixTimestamp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFixTimestamp(long j) {
        this.timestamp = j;
        this.fixTimestamp = j;
        if (this.firstFixTimestamp == 0) {
            this.firstFixTimestamp = j;
        }
    }

    void setTimestamp(long j) {
        if (this.startTimestamp == 0) {
            this.startTimestamp = j;
        }
        if (this.timestamp != j) {
            this.numSatellites = 0;
        }
        this.timestamp = j;
    }

    long getTimestamp() {
        return this.timestamp;
    }

    public boolean hasFixed() {
        return this.hasFixed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFixed(boolean z) {
        this.hasFixed = z;
    }

    void clear() {
        clearTTFF();
        clearSatellitesList();
        this.timestamp = 0L;
        this.startTimestamp = 0L;
        this.fixTimestamp = 0L;
        this.precision = 10.0f;
        this.PDOP = 0.0f;
        this.HDOP = 0.0f;
        this.VDOP = 0.0f;
        this.latitude = 0.0d;
        this.longitude = 0.0d;
        this.altitude = 0.0d;
        this.height = 0.0d;
        this.speed = 0.0f;
        this.angle = 0.0f;
        this.nbsat = 0;
        this.numSatellites = 0;
        this.fixMode = 0;
        this.quality = 0;
        this.mode = "N";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location getFixLocation() {
        Location location = new Location("gps");
        if (Build.VERSION.SDK_INT >= 17) {
            location.setElapsedRealtimeNanos(SystemClock.elapsedRealtimeNanos());
        }
        location.setLatitude(this.latitude);
        location.setLongitude(this.longitude);
        location.setAccuracy(this.HDOP * 5.0f);
        location.setTime(this.fixTimestamp);
        location.setAltitude(this.altitude);
        Bundle bundle = new Bundle();
        bundle.putInt("satellites", this.nbsat);
        location.setExtras(bundle);
        location.setBearing(this.angle);
        location.setSpeed(this.speed);
        return location;
    }

    double getLatitude() {
        return this.latitude;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLatitude(double d) {
        this.latitude = d;
    }

    double getLongitude() {
        return this.longitude;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLongitude(double d) {
        this.longitude = d;
    }

    double getAltitude() {
        return this.altitude;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAltitude(double d) {
        this.altitude = d;
    }

    float getPrecision() {
        return this.precision;
    }

    void setPrecision(float f) {
        this.precision = f;
    }

    public double getPDOP() {
        return this.PDOP;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPDOP(float f) {
        this.PDOP = f;
    }

    public double getHDOP() {
        return this.HDOP;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHDOP(float f) {
        this.HDOP = f;
    }

    public double getVDOP() {
        return this.VDOP;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVDOP(float f) {
        this.VDOP = f;
    }

    double getHeight() {
        return this.height;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHeight(double d) {
        this.height = d;
    }

    float getSpeed() {
        return this.speed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSpeed(float f) {
        this.speed = f;
    }

    double getBearing() {
        return this.angle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBearing(float f) {
        this.angle = f;
    }

    int getQuality() {
        return this.quality;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setQuality(int i) {
        this.quality = i;
    }

    int getNbSat() {
        return this.nbsat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNbSat(int i) {
        this.nbsat = i;
    }

    String getMode() {
        return this.mode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMode(String str) {
        this.mode = str;
    }

    int getNumSatellites() {
        return this.numSatellites;
    }

    void setNumSatellites(int i) {
        this.numSatellites = i;
    }

    void addNumSatellites(int i) {
        this.numSatellites += i;
    }

    int getFixMode() {
        return this.fixMode;
    }

    void setFixMode(int i) {
        this.fixMode = i;
    }

    public synchronized int getSignalLevel() {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.mGnssSatelliteListCopy.size(); i5++) {
            float snr = this.mGnssSatelliteListCopy.get(i5).getSnr();
            if (snr >= 45.0f) {
                i++;
            }
            if (snr >= 40.0f) {
                i2++;
            }
            if (snr >= 35.0f) {
                i3++;
            }
            if (snr >= 30.0f) {
                i4++;
            }
        }
        if (i >= 3) {
            return 1;
        }
        if (i2 >= 2) {
            return 2;
        }
        if (i3 >= 2) {
            return 3;
        }
        return i4 >= 2 ? 4 : 5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location getEmptyLocation() {
        Location location = new Location("gps");
        if (Build.VERSION.SDK_INT >= 17) {
            location.setElapsedRealtimeNanos(SystemClock.elapsedRealtimeNanos());
        }
        location.setLatitude(0.0d);
        location.setLongitude(0.0d);
        location.setAccuracy(0.0f);
        location.setTime(0L);
        location.setAltitude(0.0d);
        Bundle bundle = new Bundle();
        bundle.putInt("satellites", 0);
        location.setExtras(bundle);
        location.setBearing(0.0f);
        location.setSpeed(0.0f);
        return location;
    }
}
