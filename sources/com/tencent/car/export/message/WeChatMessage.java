package com.tencent.car.export.message;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.tencent.wecarbase.wecarnavi.ExternalDefaultBroadcastKey;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class WeChatMessage {

    @SerializedName("msgState")
    public int msgState;

    @SerializedName("msgType")
    public int msgType;

    @SerializedName(ExternalDefaultBroadcastKey.KEY.SEARCH_RICHINFO)
    public String richInfo;

    @SerializedName("unreadMsgCount")
    public int unreadMsgCount;

    @SerializedName("userIcon")
    public String userIcon;

    @SerializedName("userName")
    public String userName;

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class MsgState {

        @SerializedName("CALLING_STATE_FINISH")
        public static final int CALLING_STATE_FINISH = 20;

        @SerializedName("CALLING_STATE_VOICE_CONNECTING")
        public static final int CALLING_STATE_VOICE_CONNECTING = 17;

        @SerializedName("CALLING_STATE_VOICE_INVITING")
        public static final int CALLING_STATE_VOICE_INVITING = 13;

        @SerializedName("CALLING_STATE_VOICE_TALKING")
        public static final int CALLING_STATE_VOICE_TALKING = 19;

        @SerializedName("CALLING_STATE_VOICE_WAITTING_ACCEPT")
        public static final int CALLING_STATE_VOICE_WAITTING_ACCEPT = 15;

        @SerializedName("CLOSE_PROJECTION")
        public static final int CLOSE_PROJECTION = 25;

        @SerializedName("STATE_CALLING")
        public static final int STATE_CALLING = 8;

        @SerializedName("STATE_CALL_END")
        public static final int STATE_CALL_END = 9;

        @SerializedName("STATE_CANCEL")
        public static final int STATE_CANCEL = 10;

        @SerializedName("STATE_CONNECTIONG")
        public static final int STATE_CONNECTIONG = 4;

        @SerializedName("STATE_DASHBOARD_CLOSE")
        public static final int STATE_DASHBOARD_CLOSE = 24;

        @SerializedName("STATE_DASHBOARD_OPEN")
        public static final int STATE_DASHBOARD_OPEN = 22;

        @SerializedName("STATE_DASHBOARD_UPDATE")
        public static final int STATE_DASHBOARD_UPDATE = 23;

        @SerializedName("STATE_LOGIN")
        public static final int STATE_LOGIN = 11;

        @SerializedName("STATE_LOGOUT")
        public static final int STATE_LOGOUT = 12;

        @SerializedName("STATE_PLAY")
        public static final int STATE_PLAY = 1;

        @SerializedName("STATE_PLAY_COMPLETED")
        public static final int STATE_PLAY_COMPLETED = 2;

        @SerializedName("STATE_RECORDING")
        public static final int STATE_RECORDING = 5;

        @SerializedName("STATE_REPLAY")
        public static final int STATE_REPLAY = 3;

        @SerializedName("STATE_SEND_FAIL")
        public static final int STATE_SEND_FAIL = 7;

        @SerializedName("STATE_SEND_SUCCESS")
        public static final int STATE_SEND_SUCCESS = 6;

        @SerializedName("STATE_START")
        public static final int STATE_START = 0;

        @SerializedName("VOIP_STATE_NONE")
        public static final int VOIP_STATE_NONE = 21;
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class MsgType {

        @SerializedName("MSG_LOGINOUT")
        public static final int MSG_LOGINOUT = 3;

        @SerializedName("MSG_OTHER")
        public static final int MSG_OTHER = 4;

        @SerializedName("MSG_POI")
        public static final int MSG_POI = 2;

        @SerializedName("MSG_TEXT")
        public static final int MSG_TEXT = 0;

        @SerializedName("MSG_VOIP")
        public static final int MSG_VOIP = 1;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("  msgType = ");
        stringBuffer.append(this.msgType);
        stringBuffer.append("  msgState = ");
        stringBuffer.append(this.msgState);
        stringBuffer.append("  unreadMsgCount = ");
        stringBuffer.append(this.unreadMsgCount);
        stringBuffer.append("  richInfo = ");
        stringBuffer.append(this.richInfo);
        return stringBuffer.toString();
    }
}
