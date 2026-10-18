package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class DashboardModel implements Serializable {
    public static final int CANBOX_MEDIA_FB = 5;
    public static final int CANBOX_MEDIA_FF = 4;
    public static final int CANBOX_MEDIA_PAUSE = 2;
    public static final int CANBOX_MEDIA_PLAYING = 1;
    public static final int CANBOX_MEDIA_READING = 0;
    public static final int CANBOX_MEDIA_STOP = 3;
    private static final long serialVersionUID = 7289240947431833104L;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class AudioModel {
        public String mAlbumName;
        public String mArtistName;
        public int mCurrentIndex;
        public int mCurrentTimeSec;
        public int mNoUse;
        public int mPlayState;
        public int mTotalNumber;
        public int mTotalTimeSec;
        public String mTrackName;
        public int mType;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class HFPModel {
        public String mCallStr;
        public int mCallingStatus;
        public String mName;
        public int mNoUse1;
        public int mNoUse2;
        public String mNum;
        public int mType;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RadioModel {
        public String mCurrentFreqStr;
        public int mFmAmNum;
        public int mFreqDataLst;
        public String mNameStr;
        public int mPty;
        public String mRadioTypeStr;
        public int mType;
    }
}
