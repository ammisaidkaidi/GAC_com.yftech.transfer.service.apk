package com.tencent.tai.pal.screen;

import com.tencent.tai.pal.INoProguardInterface;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IScreen extends INoProguardInterface {
    public static final int SCREEN_DEC_BRIGHTNESS = 2;
    public static final int SCREEN_DEC_BRIGHTNESS_BY_LEVEL = 4;
    public static final int SCREEN_INC_BRIGHTNESS = 1;
    public static final int SCREEN_INC_BRIGHTNESS_BY_LEVEL = 3;
    public static final int SCREEN_MAX_BRIGHTNESS = 5;
    public static final int SCREEN_MIN_BRIGHTNESS = 6;
    public static final int SCREEN_MUTE = 8;
    public static final int SCREEN_SET_BRIGHTNESS = 7;
    public static final int SCREEN_WAKE = 9;

    int adjustScreenBrightness(int i, int i2);

    int getScreenBrightness();

    int getScreenMAXBrightness();

    boolean isScreenMute();
}
