package com.tencent.taes.api.moss.bean;

import com.google.gson.annotations.SerializedName;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class MiniAppInfo {

    @SerializedName("appid")
    public String appId;

    @SerializedName("banner")
    public String banner;

    @SerializedName("channelId")
    public String channelId;

    @SerializedName("cnName")
    public String cnName;

    @SerializedName("commonDomain")
    public ArrayList<String> commonDomain;

    @SerializedName("downloadDomain")
    public ArrayList<String> downloadDomain;

    @SerializedName("enName")
    public String enName;

    @SerializedName("id")
    public int id;

    @SerializedName("lastUsedTime")
    public String lastUsedTime;

    @SerializedName("logoUrl")
    public String logoUrl;

    @SerializedName("mossMD5")
    public String mossMD5;

    @SerializedName("mossUrl")
    public String mossUrl;

    @SerializedName("opWords")
    public String opWords;

    @SerializedName("operateDomain")
    public ArrayList<String> operateDomain;

    @SerializedName("pagePath")
    public String pagePath;

    @SerializedName("pkgName")
    public String pkgName;

    @SerializedName("socketDomain")
    public ArrayList<String> socketDomain;

    @SerializedName("uploadDomain")
    public ArrayList<String> uploadDomain;

    @SerializedName(DeviceHelper.JSON_FIELD_VERSION)
    public String version;

    public String toString() {
        return "MiniAppInfo{id=" + this.id + ", appId='" + this.appId + "', pkgName='" + this.pkgName + "', cnName='" + this.cnName + "', enName='" + this.enName + "', mossUrl='" + this.mossUrl + "', logoUrl='" + this.logoUrl + "', version='" + this.version + "', mossMD5='" + this.mossMD5 + "', channelId='" + this.channelId + "', pagePath='" + this.pagePath + "', lastUsedTime='" + this.lastUsedTime + "', commonDomain='" + this.commonDomain + "', socketDomain='" + this.socketDomain + "', uploadDomain='" + this.uploadDomain + "', downloadDomain='" + this.downloadDomain + "', operateDomain='" + this.operateDomain + "'}";
    }
}
