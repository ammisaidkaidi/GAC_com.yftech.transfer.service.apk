package com.tencent.wecarbase.utils;

import com.tencent.wecarbase.common.ConfigHolder;

/* loaded from: /home/user/work/dex/classes.dex */
public enum Platform {
    TEST_11("test11"),
    FEIGE("210202"),
    DFQC("211609"),
    ROADROVER_T8("232001"),
    SL_NWD_T3("230303"),
    RL_MTK3561("232605"),
    RL_TAS_V2("240005"),
    RL_NAVI("210005"),
    JLBT("142507"),
    ROADROVER_T3("242008"),
    ZXCL("240010"),
    BCLX("240011"),
    GUANGQI_A39("142976"),
    GUANGQI_A35("142955"),
    GUANGQI_A32("142917"),
    GUANGQI_A26("142956"),
    GUANGQI_A06("142933"),
    GUANGQI_A75("142935"),
    GUANGQI_A10("142936"),
    YUANTE("143016"),
    BYD_TANG("142814"),
    PUFANGDA_MIRRO("310013"),
    TUOTU_MIRRO("310027"),
    LIUQI_HUAYANG("143106"),
    LIUQI_T5("143168"),
    CHANGAN_HAOBANGSHOU("140000"),
    CHANGAN_S311("143073"),
    CHJ_M01("178177"),
    UNKNOW("");

    private static String TAG = Platform.class.getSimpleName();
    String mChannel;

    Platform(String str) {
        this.mChannel = str;
    }

    public static boolean isGuangQi() {
        Platform platform = getPlatform();
        return platform == GUANGQI_A26 || platform == GUANGQI_A35 || platform == GUANGQI_A32 || platform == GUANGQI_A06 || platform == GUANGQI_A75 || platform == GUANGQI_A10;
    }

    public static boolean isGuangQiNew() {
        return getPlatform() == GUANGQI_A39;
    }

    public static boolean isLiuQiT5() {
        return getPlatform() == LIUQI_T5;
    }

    public static Platform fromString(String str) {
        for (Platform platform : values()) {
            if (platform.mChannel.equalsIgnoreCase(str)) {
                return platform;
            }
        }
        return UNKNOW;
    }

    public static Platform getPlatform() {
        String str = "";
        if (ConfigHolder.getInstance().hasInitialized() && ConfigHolder.getInstance().getConfig() != null) {
            str = ConfigHolder.getInstance().getConfig().getGlobalAPPChannel();
        }
        LogUtils.fd(TAG, "getPlatform, channel = " + str);
        try {
            return fromString(str);
        } catch (IllegalArgumentException unused) {
            return UNKNOW;
        }
    }
}
