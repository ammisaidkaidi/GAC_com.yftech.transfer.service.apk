package com.tencent.taiutils;

import android.content.Context;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public class TimeUtils {
    public static final long DAY = 86486400;
    public static final long DAY2 = 172972800;
    public static final long DAY_MILLIS = 86400000;
    public static final long HALF_HOUR_MILLIS = 1800000;
    public static final long HOUR = 3603600;
    public static final long HOUR_MILLIS = 3600000;
    public static final long MINUTE = 60060;
    public static final long MINUTE_MILLIS = 60000;
    public static final long MONTH = 2681078400L;
    public static final long SECOND_MILLIS = 1000;
    public static final long WEEK = 605404800;
    public static final long YEAR = 31588292736L;
    public static final SimpleDateFormat mFormatTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public static final SimpleDateFormat mFormatDate = new SimpleDateFormat("yyyy-MM-dd");
    public static final SimpleDateFormat mFormatMinute = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    public static final SimpleDateFormat mFormatShortTime = new SimpleDateFormat("HH:mm:ss");
    public static final SimpleDateFormat mFormatTimeISO8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
    public static final SimpleDateFormat mFormatTimeISO8601_000Z = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.000Z'");
    public static final SimpleDateFormat mFormatShortDisplayTime = new SimpleDateFormat("MM-dd HH:mm");
    public static final SimpleDateFormat mFormatShortChineseTime = new SimpleDateFormat("MM月dd日 HH:mm");
    public static final SimpleDateFormat mFormatChineseTime = new SimpleDateFormat("yyyy年MM月dd日 HH:mm");
    public static final SimpleDateFormat mFormatShortEnglishTime = new SimpleDateFormat("MMMM dd, HH:mm", Locale.ENGLISH);
    public static final SimpleDateFormat mFormatEnglishTime = new SimpleDateFormat("MMMM dd, yyyy HH:mm", Locale.ENGLISH);
    public static final SimpleDateFormat mFormatChineseTimeWithWeek = new SimpleDateFormat("yyyy年MM月dd日 EEEE HH:mm", Locale.CHINA);
    public static final SimpleDateFormat mFormatShortChineseTimeWithWeek = new SimpleDateFormat("MM月dd日 EEEE HH:mm", Locale.CHINA);
    public static final SimpleDateFormat mFormatEnglishTimeWithWeek = new SimpleDateFormat("EEE  MMMM dd, yyyy HH:mm", Locale.ENGLISH);
    public static final SimpleDateFormat mFormatShortEnglishTimeWithWeek = new SimpleDateFormat("EEE  MMMM dd, HH:mm", Locale.ENGLISH);
    public static final SimpleDateFormat mFormatWeek = new SimpleDateFormat("EEEE");
    public static final SimpleDateFormat mFormatMonth = new SimpleDateFormat("MMMM");
    public static final SimpleDateFormat mFormatDay = new SimpleDateFormat("dd");
    public static final SimpleDateFormat mFormatHour = new SimpleDateFormat("HH:mm");
    public static final SimpleDateFormat mFormatMonthDay = new SimpleDateFormat("MM-dd");
    public static final SimpleDateFormat mFormatNoSpaseTime = new SimpleDateFormat("yyyy-MM-ddHHmmss");
    public static final SimpleDateFormat mFormatTimeSlash = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

    public TimeUtils() {
        throw new AssertionError();
    }

    public static String convertToUTC(long j) {
        return mFormatMinute.format(new Date(j - getZoneOffset()));
    }

    public static String getChineseTime(long j) {
        return mFormatChineseTime.format(new Date(j));
    }

    public static String getChineseTimeWithWeek(long j) {
        return mFormatChineseTimeWithWeek.format(new Date(j));
    }

    public static String getCurDate() {
        return mFormatDate.format(new Date());
    }

    public static int getCurHour() {
        return Calendar.getInstance().get(11);
    }

    public static String getCurSpaceTime() {
        return mFormatNoSpaseTime.format(new Date());
    }

    public static String getCurTime() {
        return mFormatTime.format(new Date());
    }

    public static String getCurTime(long j) {
        return mFormatTime.format(new Date(j));
    }

    public static String getCurTimeFor8601(long j, boolean z) {
        SimpleDateFormat simpleDateFormat;
        Date date;
        if (z) {
            simpleDateFormat = mFormatTimeISO8601;
            date = new Date(j - getZoneOffset());
        } else {
            simpleDateFormat = mFormatTimeISO8601;
            date = new Date(j);
        }
        return simpleDateFormat.format(date);
    }

    public static long getDate() {
        return new Date().getTime();
    }

    public static long getDate(String str) {
        try {
            return mFormatDate.parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static String getDate(long j) {
        return mFormatDate.format(new Date(j));
    }

    public static String getDate(long j, boolean z) {
        SimpleDateFormat simpleDateFormat;
        Date date;
        if (z) {
            simpleDateFormat = mFormatDate;
            date = new Date(j + getZoneOffset());
        } else {
            simpleDateFormat = mFormatDate;
            date = new Date(j);
        }
        return simpleDateFormat.format(date);
    }

    public static String getDate(String str, boolean z) {
        SimpleDateFormat simpleDateFormat;
        Date date;
        if (StringUtils.isBlank(str)) {
            return null;
        }
        long date2 = getDate(str);
        if (z) {
            simpleDateFormat = mFormatDate;
            date = new Date(date2 + getZoneOffset());
        } else {
            simpleDateFormat = mFormatDate;
            date = new Date(date2);
        }
        return simpleDateFormat.format(date);
    }

    public static String getDate(Date date) {
        return mFormatDate.format(date);
    }

    public static long getDateFrom8601(String str) {
        if (StringUtils.isBlank(str)) {
            return 0L;
        }
        try {
            return mFormatTimeISO8601.parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static String getDay(Date date) {
        if (date == null) {
            date = new Date();
        }
        return mFormatDay.format(date);
    }

    public static int getDaysGap(long j, long j2) {
        return (int) ((j2 - j) / DAY_MILLIS);
    }

    public static String getDisplayTime(long j, boolean z) {
        SimpleDateFormat simpleDateFormat;
        Date date;
        if (z) {
            simpleDateFormat = mFormatMinute;
            date = new Date(j + getZoneOffset());
        } else {
            simpleDateFormat = mFormatMinute;
            date = new Date(j);
        }
        return simpleDateFormat.format(date);
    }

    public static String getEnglishTime(long j, boolean z) {
        SimpleDateFormat simpleDateFormat;
        Date date;
        if (z) {
            simpleDateFormat = mFormatEnglishTime;
            date = new Date(j + getZoneOffset());
        } else {
            simpleDateFormat = mFormatEnglishTime;
            date = new Date(j);
        }
        return simpleDateFormat.format(date);
    }

    public static String getEnglishTimeWithWeek(long j) {
        return mFormatEnglishTimeWithWeek.format(new Date(j));
    }

    public static String getHour(Date date) {
        if (date == null) {
            date = new Date();
        }
        return mFormatHour.format(date);
    }

    public static long getMinute(String str) {
        try {
            return mFormatMinute.parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static String getMinute(long j, boolean z) {
        SimpleDateFormat simpleDateFormat;
        Date date;
        if (z) {
            simpleDateFormat = mFormatMinute;
            date = new Date(j + getZoneOffset());
        } else {
            simpleDateFormat = mFormatMinute;
            date = new Date(j);
        }
        return simpleDateFormat.format(date);
    }

    public static String getMinute(String str, boolean z) {
        SimpleDateFormat simpleDateFormat;
        Date date;
        if (StringUtils.isBlank(str)) {
            return null;
        }
        long minute = getMinute(str);
        if (z) {
            simpleDateFormat = mFormatMinute;
            date = new Date(minute + getZoneOffset());
        } else {
            simpleDateFormat = mFormatMinute;
            date = new Date(minute);
        }
        return simpleDateFormat.format(date);
    }

    public static String getMonth(Date date) {
        if (date == null) {
            date = new Date();
        }
        return mFormatMonth.format(date);
    }

    public static String getMonthDay(long j) {
        return j == 0 ? "1-1" : mFormatMonthDay.format(new Date(j));
    }

    public static String getMonthDay(String str) {
        return StringUtils.isBlank(str) ? "1-1" : mFormatMonthDay.format(new Date(getDateFrom8601(str)));
    }

    public static String getRentMonthDay(String str) {
        return StringUtils.isBlank(str) ? "01-01" : mFormatMonthDay.format(new Date(getTimeSlash(str)));
    }

    public static String getShortChineseTime(long j) {
        return mFormatShortChineseTime.format(new Date(j));
    }

    public static String getShortChineseTimeWithWeek(long j) {
        return mFormatShortChineseTimeWithWeek.format(new Date(j));
    }

    public static String getShortDisplayTime(long j) {
        return mFormatShortDisplayTime.format(new Date(j));
    }

    public static String getShortEnglishTime(long j) {
        return mFormatShortEnglishTime.format(new Date(j));
    }

    public static String getShortEnglishTimeWithWeek(long j) {
        return mFormatShortEnglishTimeWithWeek.format(new Date(j));
    }

    public static String getShortTime(long j, boolean z) {
        SimpleDateFormat simpleDateFormat;
        Date date;
        if (z) {
            simpleDateFormat = mFormatShortTime;
            date = new Date(j + getZoneOffset());
        } else {
            simpleDateFormat = mFormatShortTime;
            date = new Date(j);
        }
        return simpleDateFormat.format(date);
    }

    public static String getShortTime(Date date) {
        return mFormatShortTime.format(date);
    }

    public static long getTime(String str) {
        try {
            return mFormatTime.parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static String getTime(long j, boolean z) {
        SimpleDateFormat simpleDateFormat;
        Date date;
        if (z) {
            simpleDateFormat = mFormatTime;
            date = new Date(j + getZoneOffset());
        } else {
            simpleDateFormat = mFormatTime;
            date = new Date(j);
        }
        return simpleDateFormat.format(date);
    }

    public static long getTimeFrom8601UTC(String str) {
        if (StringUtils.isBlank(str)) {
            return 0L;
        }
        try {
            return mFormatTimeISO8601.parse(str).getTime() + getZoneOffset();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static long getTimeFrom8601UTC000Z(String str) {
        if (StringUtils.isBlank(str)) {
            return 0L;
        }
        try {
            return mFormatTimeISO8601_000Z.parse(str).getTime() + getZoneOffset();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static long getTimeSlash(String str) {
        if (StringUtils.isBlank(str)) {
            return 0L;
        }
        try {
            return mFormatTimeSlash.parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static String getWeek(Date date) {
        if (date == null) {
            date = new Date();
        }
        return mFormatWeek.format(date);
    }

    public static String getWeekOfDate(long j) {
        Calendar.getInstance().setTime(new Date(j));
        return new String[]{"周日", "周一", "周二", "周三", "周四", "周五", "周六"}[r1.get(7) - 1];
    }

    public static int getZoneOffset() {
        return Calendar.getInstance().get(16) + Calendar.getInstance().get(15);
    }

    public static boolean isZh(Context context) {
        return context.getResources().getConfiguration().locale.getLanguage().endsWith("zh");
    }
}
