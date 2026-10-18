package com.utils;

import java.util.Calendar;

/* loaded from: /home/user/work/dex/classes.dex */
public class TimeUtils {
    public static long nowToZeroTimeStamp() {
        long currentTimeMillis = System.currentTimeMillis();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(currentTimeMillis);
        int i = calendar.get(9);
        boolean z = i == 0;
        LogUtil.i("nowToZeroTimeStamp ampm:" + i);
        int i2 = calendar.get(10);
        if (!z) {
            i2 += 12;
        }
        int i3 = calendar.get(12);
        int i4 = calendar.get(13);
        int i5 = calendar.get(14);
        LogUtil.i("nowToZeroTimeStamp hour:" + i2 + ":" + i3 + ":" + i4);
        long j = (long) (i2 * 60 * 60 * 1000);
        long j2 = (long) (i3 * 60 * 1000);
        long j3 = (long) (i4 * 1000);
        LogUtil.i("nowToZeroTimeStamp ms:" + j + "," + j2 + "," + j3 + "," + i5);
        long j4 = j + j2 + j3 + ((long) i5);
        StringBuilder sb = new StringBuilder();
        sb.append("nowToZeroTimeStamp totalMS:");
        sb.append(j4);
        LogUtil.i(sb.toString());
        return j4;
    }
}
