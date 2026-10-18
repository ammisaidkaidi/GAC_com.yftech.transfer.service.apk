package com.tencent.wecarbase.carinfo.keyinput;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarKeyInputListener {
    public static final int KEY_CODE_INVALID = -1;
    public static final int KEY_CODE_PHY_BACK = 109;
    public static final int KEY_CODE_PHY_HOME = 107;
    public static final int KEY_CODE_PHY_MENU = 106;
    public static final int KEY_CODE_PHY_MP3 = 113;
    public static final int KEY_CODE_PHY_MUTE = 103;
    public static final int KEY_CODE_PHY_NAVI = 111;
    public static final int KEY_CODE_PHY_NEXT = 108;
    public static final int KEY_CODE_PHY_POWER = 105;
    public static final int KEY_CODE_PHY_PRE = 110;
    public static final int KEY_CODE_PHY_TEL = 112;
    public static final int KEY_CODE_PHY_VOICE = 104;
    public static final int KEY_CODE_PHY_VOLADD = 101;
    public static final int KEY_CODE_PHY_VOLDEC = 102;
    public static final int KEY_CODE_WHEEL_HANGUP = 5;
    public static final int KEY_CODE_WHEEL_MENU = 11;
    public static final int KEY_CODE_WHEEL_MODE = 10;
    public static final int KEY_CODE_WHEEL_MUTE = 9;
    public static final int KEY_CODE_WHEEL_NEXT = 7;
    public static final int KEY_CODE_WHEEL_PLAY = 8;
    public static final int KEY_CODE_WHEEL_PREVIOUS = 6;
    public static final int KEY_CODE_WHEEL_TEL = 4;
    public static final int KEY_CODE_WHEEL_VOICE = 3;
    public static final int KEY_CODE_WHEEL_VOLADD = 2;
    public static final int KEY_CODE_WHEEL_VOLDEC = 1;
    public static final int KEY_EVENT_ACTION_DOWN = 1;
    public static final int KEY_EVENT_ACTION_LONG_PRESS = 4;
    public static final int KEY_EVENT_ACTION_SINGLE_TAP = 3;
    public static final int KEY_EVENT_ACTION_UP = 2;

    void onKeyEvent(int i, int i2);
}
