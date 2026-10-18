package com.tencent.taes.api.moss.bean;

import android.support.v4.app.NotificationCompat;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class ResultBean {
    public String version = "";
    public String timestamp = "";
    public String host = "";
    public int acrossTime = -1;
    public String traceId = "";
    public int status = -1;
    public String message = "";
    public List<MiniAppInfo> data = new ArrayList();

    public static ResultBean fromJSON(String str) throws JSONException {
        ResultBean resultBean = new ResultBean();
        JSONObject jSONObject = new JSONObject(str);
        resultBean.version = jSONObject.optString(DeviceHelper.JSON_FIELD_VERSION);
        resultBean.timestamp = jSONObject.optString("timestamp");
        resultBean.host = jSONObject.optString("host");
        resultBean.acrossTime = jSONObject.optInt("acrossTime");
        resultBean.traceId = jSONObject.optString("traceId");
        resultBean.status = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        resultBean.message = jSONObject.optString("message");
        JSONObject optJSONObject = jSONObject.optJSONObject("data");
        if (optJSONObject != null) {
            JSONArray optJSONArray = optJSONObject.optJSONArray("value");
            for (int i = 0; i < optJSONArray.length(); i++) {
                resultBean.data.add(createAppDataFromJSON(optJSONArray.getJSONObject(i).toString()));
            }
        }
        return resultBean;
    }

    public static MiniAppInfo createAppDataFromJSON(String str) throws JSONException {
        MiniAppInfo miniAppInfo = new MiniAppInfo();
        JSONObject jSONObject = new JSONObject(str);
        miniAppInfo.id = jSONObject.optInt("id");
        miniAppInfo.appId = jSONObject.optString("appid");
        miniAppInfo.pkgName = jSONObject.optString("pkgName");
        miniAppInfo.cnName = jSONObject.optString("cnName");
        miniAppInfo.enName = jSONObject.optString("enName");
        miniAppInfo.mossUrl = jSONObject.optString("mossUrl");
        miniAppInfo.logoUrl = jSONObject.optString("logoUrl");
        miniAppInfo.version = jSONObject.optString(DeviceHelper.JSON_FIELD_VERSION);
        miniAppInfo.mossMD5 = jSONObject.optString("mossMD5");
        miniAppInfo.channelId = jSONObject.optString("channelId");
        miniAppInfo.pagePath = jSONObject.optString("pagePath");
        return miniAppInfo;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("ResultBean{");
        stringBuffer.append("version='");
        stringBuffer.append(this.version);
        stringBuffer.append('\'');
        stringBuffer.append(", timestamp='");
        stringBuffer.append(this.timestamp);
        stringBuffer.append('\'');
        stringBuffer.append(", host='");
        stringBuffer.append(this.host);
        stringBuffer.append('\'');
        stringBuffer.append(", acrossTime=");
        stringBuffer.append(this.acrossTime);
        stringBuffer.append(", traceId='");
        stringBuffer.append(this.traceId);
        stringBuffer.append('\'');
        stringBuffer.append(", status=");
        stringBuffer.append(this.status);
        stringBuffer.append(", message='");
        stringBuffer.append(this.message);
        stringBuffer.append('\'');
        stringBuffer.append(", data=");
        stringBuffer.append(this.data);
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
