package com.tencent.tai.pal.audio;

import com.tencent.tai.pal.INoProguardInterface;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IAudio extends INoProguardInterface {
    public static final int ADJUST_LOWER = -1;
    public static final int ADJUST_MUTE = -100;
    public static final int ADJUST_RAISE = 1;
    public static final int ADJUST_SAME = 0;
    public static final int ADJUST_SET_TO = 888;
    public static final int ADJUST_TOGGLE_MUTE = 101;
    public static final int ADJUST_UNMUTE = 100;
    public static final int AUDIOFOCUS_REQUEST_DELAYED = 2;
    public static final int AUDIOFOCUS_REQUEST_FAILED = 0;
    public static final int AUDIOFOCUS_REQUEST_GRANTED = 1;

    @Deprecated
    public static final int AUDIO_EVENT_AUDIO_PLAY = 3;

    @Deprecated
    public static final int AUDIO_EVENT_AUDIO_STOP = 4;

    @Deprecated
    public static final int AUDIO_EVENT_RECORD_END = 2;

    @Deprecated
    public static final int AUDIO_EVENT_RECORD_START = 1;
    public static final String TAG_KARAOKE = "TAG_com_tencent_wecar_karaoke";
    public static final String TAG_WECARFLOW = "TAG_com_tencent_wecarflow";
    public static final String TAG_WECARGAMES = "TAG_com_tencent_wecargames";
    public static final String TAG_WECARMAP = "TAG_com_tencent_wecarnavi";
    public static final String TAG_WECARMAS = "TAG_com_tencent_wecarmas";
    public static final String TAG_WECARMOSS = "TAG_com_tencent_wecarmoss";
    public static final String TAG_WECARSCENE = "TAG_com_tencent_wecarscene";
    public static final String TAG_WECARSPEECH = "TAG_com_tencent_wecarspeech";
    public static final String TAG_WECHAT = "TAG_com_tencent_wechat";
    public static final int TX_BT_MUSIC = 121;
    public static final int TX_BT_PHONE = 122;
    public static final int TX_IM_RING = 1000;
    public static final int TX_IM_TTS = 30;
    public static final int TX_MEDIA = 110;
    public static final int TX_MIC_IM_VR = 230;
    public static final int TX_MIC_KARAOKE = 240;
    public static final int TX_MIC_VOIP = 200;
    public static final int TX_MIC_VR = 210;
    public static final int TX_MIC_VR_WAKEUP = 220;

    @Deprecated
    public static final int TX_NAVI_GUIDANCE_L1 = 60;
    public static final int TX_NAVI_GUIDANCE_L2 = 50;
    public static final int TX_NOTIFICATION = 80;
    public static final int TX_PHONE = 10;
    public static final int TX_RADIO = 120;
    public static final int TX_SYS = 123;
    public static final int TX_VR = 100;
    public static final int TX_VR_TTS = 20;
}
