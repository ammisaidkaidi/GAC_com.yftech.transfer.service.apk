package com.tencent.libspeechcommon.def;

import android.support.annotation.Keep;
import android.text.TextUtils;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public final class ActionRet {
    private static ActionRet mRet;
    public int code;
    public String contextInfo;
    public String message;

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ActionCode {
        public static final int ALREADY = 2;
        public static final int CONTEXT = 6;
        public static final int FAIL = 0;
        public static final int MANUAL = 4;
        public static final int NOTSUPPORT = -1;
        public static final int OUT_OF_RANGE = 3;
        public static final int PLAY_AUDIO = 7;
        public static final int PLAY_MESSAGE = 5;
        public static final int SILENCE = 8;
        public static final int SUCCESS = 1;
    }

    private ActionRet(int i, String str, String str2) {
        this.code = i;
        this.message = str;
        this.contextInfo = str2;
    }

    public static ActionRet create(int i) {
        ActionRet actionRet;
        synchronized (ActionRet.class) {
            if (mRet == null) {
                mRet = new ActionRet(i, null, null);
            } else {
                mRet.code = i;
                mRet.message = null;
                mRet.contextInfo = null;
            }
            actionRet = mRet;
        }
        return actionRet;
    }

    public static ActionRet create(int i, String str) {
        ActionRet actionRet;
        synchronized (ActionRet.class) {
            if (mRet == null) {
                mRet = new ActionRet(i, str, null);
            } else {
                mRet.code = i;
                mRet.message = str;
                mRet.contextInfo = null;
            }
            actionRet = mRet;
        }
        return actionRet;
    }

    public static ActionRet create(int i, String str, String str2) {
        ActionRet actionRet;
        synchronized (ActionRet.class) {
            if (mRet == null) {
                mRet = new ActionRet(i, str, str2);
            } else {
                mRet.code = i;
                mRet.message = str;
                mRet.contextInfo = str2;
            }
            actionRet = mRet;
        }
        return actionRet;
    }

    public static ActionRet toActionRet(byte[] bArr) {
        if (bArr != null) {
            try {
                String optString = new JSONObject(new String(bArr)).optString(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, null);
                if (!TextUtils.isEmpty(optString)) {
                    JSONObject jSONObject = new JSONObject(optString);
                    return new ActionRet(jSONObject.getInt("code"), jSONObject.optString("message", null), jSONObject.optString("contextInfo", null));
                }
            } catch (JSONException e) {
                LogUtils.e("ActionRet", e.toString());
            }
        }
        return null;
    }

    public int getCode() {
        int i;
        synchronized (ActionRet.class) {
            i = this.code;
        }
        return i;
    }

    public String getContextInfo() {
        String str;
        synchronized (ActionRet.class) {
            str = this.contextInfo;
        }
        return str;
    }

    public String getMessage() {
        String str;
        synchronized (ActionRet.class) {
            str = this.message;
        }
        return str;
    }

    public String toJson() {
        String str;
        synchronized (ActionRet.class) {
            String str2 = "{\"code\":" + this.code;
            if (!TextUtils.isEmpty(this.message)) {
                str2 = str2 + ", \"message\":\"" + this.message + "\"";
            }
            if (!TextUtils.isEmpty(this.contextInfo)) {
                str2 = str2 + ", \"contextInfo\":\"" + this.contextInfo + "\"";
            }
            str = str2 + "}";
        }
        return str;
    }
}
