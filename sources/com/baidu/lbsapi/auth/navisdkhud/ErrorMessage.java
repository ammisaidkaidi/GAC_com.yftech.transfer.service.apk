package com.baidu.lbsapi.auth.navisdkhud;

import android.support.v4.app.NotificationCompat;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
class ErrorMessage {
    ErrorMessage() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, -1);
            jSONObject.put("message", str);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }
}
