package com.tencent.tai.pal.audio;

import android.media.AudioAttributes;
import android.os.Build;
import android.support.annotation.RequiresApi;

/* compiled from: AudioUtils.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class a {
    @RequiresApi(api = 21)
    public static AudioAttributes a(int i) {
        int i2 = 11;
        int i3 = 1;
        if (i != 10) {
            if (i != 20) {
                if (i != 30) {
                    if (i == 50 || i == 60) {
                        i2 = 12;
                    } else {
                        if (i == 80) {
                            i2 = 5;
                        } else if (i != 100) {
                            if (i != 110) {
                                if (i != 1000) {
                                    switch (i) {
                                        case 120:
                                        case 121:
                                            break;
                                        case IAudio.TX_BT_PHONE /* 122 */:
                                            break;
                                        case IAudio.TX_SYS /* 123 */:
                                            i2 = 13;
                                            break;
                                        default:
                                            i2 = 0;
                                            i3 = 0;
                                            break;
                                    }
                                } else {
                                    i2 = 7;
                                }
                            }
                            i2 = 1;
                            i3 = 2;
                        }
                        i3 = 4;
                    }
                }
                return new AudioAttributes.Builder().setContentType(i3).setUsage(i2).build();
            }
            if (Build.VERSION.SDK_INT >= 26) {
                i2 = 16;
            }
            return new AudioAttributes.Builder().setContentType(i3).setUsage(i2).build();
        }
        i2 = 2;
        return new AudioAttributes.Builder().setContentType(i3).setUsage(i2).build();
    }
}
