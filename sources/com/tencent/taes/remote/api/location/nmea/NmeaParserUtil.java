package com.tencent.taes.remote.api.location.nmea;

import android.text.TextUtils;
import com.tencent.taiutils.StringUtils;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

/* loaded from: /home/user/work/dex/classes.dex */
public class NmeaParserUtil {
    private SimpleDateFormat mTimeFormat = new SimpleDateFormat("ddMMyy HHmmss.SSS");

    public NmeaParserUtil() {
        this.mTimeFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public double parseNmeaLatitude(String str, String str2) {
        if (str != null && str2 != null && !str.equals("") && !str2.equals("")) {
            double parseDouble = Double.parseDouble(str) / 100.0d;
            double floor = Math.floor(parseDouble);
            double d = (parseDouble - floor) / 0.6d;
            if (str2.equals("S")) {
                return -(floor + d);
            }
            if (str2.equals("N")) {
                return d + floor;
            }
        }
        return 0.0d;
    }

    public double parseNmeaLongitude(String str, String str2) {
        if (str != null && str2 != null && !str.equals("") && !str2.equals("")) {
            double parseDouble = Double.parseDouble(str) / 100.0d;
            double floor = Math.floor(parseDouble);
            double d = (parseDouble - floor) / 0.6d;
            if (str2.equals("W")) {
                return -(floor + d);
            }
            if (str2.equals("E")) {
                return d + floor;
            }
        }
        return 0.0d;
    }

    public float parseNmeaSpeed(String str, String str2) {
        if (str != null && str2 != null && !str.equals("") && !str2.equals("")) {
            float parseFloat = Float.parseFloat(str) / 3.6f;
            if (str2.equals("K")) {
                return parseFloat;
            }
            if (str2.equals("N")) {
                return parseFloat * 1.852f;
            }
        }
        return 0.0f;
    }

    public long parseNmeaTime(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return System.currentTimeMillis();
        }
        try {
            return this.mTimeFormat.parse(str + " " + str2).getTime();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public Double parseNmeaAlt(String str, String str2) {
        if (str != null && str2 != null && !str.equals("") && !str2.equals("")) {
            if (str2.equals("M") || str2.equals(StringUtils.UNIT_MINUTE_EN)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            if (str2.equals("KM") || str2.equals("km")) {
                return Double.valueOf(Double.parseDouble(str) * 1000.0d);
            }
            return Double.valueOf(Double.parseDouble(str));
        }
        return Double.valueOf(Double.NaN);
    }

    public float parseNmeaFloat(String str) {
        if (str == null || str.equals("")) {
            return Float.NaN;
        }
        return Float.parseFloat(str);
    }

    public int parseNmeaInt(String str) {
        if (str == null || str.equals("")) {
            return 0;
        }
        return Integer.parseInt(str);
    }
}
