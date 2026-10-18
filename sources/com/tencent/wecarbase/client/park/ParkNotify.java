package com.tencent.wecarbase.client.park;

import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.wecarbase.common.ReflectUtils;
import com.tencent.wecarbase.taibaseui.popupview.PopupViewManager;
import com.tencent.wecarbase.utils.AppResourcesUtils;
import com.tencent.wecarbase.utils.LogUtils;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class ParkNotify {
    private static final ArrayMap<String, Integer> mParkSpLogo = new ArrayMap<>();
    private static final ArrayMap<String, String> mParkSpName = new ArrayMap<>();
    private static volatile ParkNotify sInstance;
    private final String TAG = getClass().getSimpleName();
    private final long MAX_PASS_TIME = 120;
    private final String mLogoUrl = "http://wxmycar.map.qq.com/pic/logo";

    public void init() {
    }

    static {
        mParkSpLogo.put("etcp", Integer.valueOf(AppResourcesUtils.getSdkId("icon_park_sp_etcp", AppResourcesUtils.RS_DRAWABLE)));
        mParkSpLogo.put("easypark", Integer.valueOf(AppResourcesUtils.getSdkId("icon_park_sp_easypark", AppResourcesUtils.RS_DRAWABLE)));
        mParkSpName.put("etcp", "ETCP");
        mParkSpName.put("easypark", "停简单");
    }

    public static ParkNotify getInstance() {
        if (sInstance == null) {
            synchronized (ParkNotify.class) {
                if (sInstance == null) {
                    sInstance = new ParkNotify();
                }
            }
        }
        return sInstance;
    }

    public void handleMessage(JSONObject jSONObject) {
        Integer num;
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("content");
            Long valueOf = Long.valueOf(jSONObject2.getLong("event_time"));
            LogUtils.d(this.TAG, "pass time = " + Math.abs((Long.valueOf(System.currentTimeMillis()).longValue() / 1000) - valueOf.longValue()));
            String string = jSONObject2.getString(FeedBackConstants.PROP_BUG_TITLE);
            if (string.equals("")) {
                return;
            }
            String string2 = jSONObject2.getString(FeedBackConstants.PROP_BUG_DETAIL);
            String string3 = jSONObject2.getString("voice_text");
            if (!jSONObject2.isNull("extra")) {
                jSONObject2.getString("extra");
            }
            String str = null;
            String string4 = !jSONObject2.isNull("park_sp") ? jSONObject2.getString("park_sp") : null;
            if (string4 != null) {
                str = mParkSpName.get(string4);
                num = mParkSpLogo.get(string4);
            } else {
                num = null;
            }
            ReflectUtils.playTTS(string3);
            showPopupView(string, string2, str, num);
        } catch (Exception e) {
            LogUtils.e(this.TAG, "ParkNotify , error: " + Log.getStackTraceString(e));
        }
    }

    public void showPopupView(String str, String str2, String str3, Integer num) {
        PopupViewManager.getInstance().showPopupWindowParkAutoClose(str, str2, str3, num);
    }
}
