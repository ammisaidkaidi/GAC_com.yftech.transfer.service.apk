package com.tencent.wecarbase.client.onlife;

import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.wecarbase.common.ReflectUtils;
import com.tencent.wecarbase.taibaseui.popupview.PopupViewManager;
import com.tencent.wecarbase.utils.LogUtils;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class OnlifeNotify {
    private static volatile OnlifeNotify sInstance;
    private final String TAG = getClass().getSimpleName();

    public static OnlifeNotify getInstance() {
        if (sInstance == null) {
            synchronized (OnlifeNotify.class) {
                if (sInstance == null) {
                    sInstance = new OnlifeNotify();
                }
            }
        }
        return sInstance;
    }

    public void handleMessage(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("content");
            String string = jSONObject2.getString(FeedBackConstants.PROP_BUG_TITLE);
            if (string.equals("")) {
                return;
            }
            String string2 = jSONObject2.getString(FeedBackConstants.PROP_BUG_DETAIL);
            ReflectUtils.playTTS(jSONObject2.getString("voice_text"));
            PopupViewManager.getInstance().showPopupWindowParkAutoClose(string, string2, null, null);
        } catch (Exception e) {
            LogUtils.e(this.TAG, "OnlifeNotify, error: " + e.getMessage());
        }
    }
}
