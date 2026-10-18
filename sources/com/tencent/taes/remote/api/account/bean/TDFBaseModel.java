package com.tencent.taes.remote.api.account.bean;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.tencent.taes.remote.api.account.bean.BaseModel;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class TDFBaseModel<T extends BaseModel> {
    private long acrossTime;

    @SerializedName("data")
    private T baseModel;
    private String host;
    private String message;
    private int status;
    private String timestamp;
    private String traceId;

    public String getTraceId() {
        return this.traceId;
    }

    public String getTimestamp() {
        return this.timestamp;
    }

    public int getStatus() {
        return this.status;
    }

    public String getMessage() {
        return this.message;
    }

    public String getHost() {
        return this.host;
    }

    public long getAcrossTime() {
        return this.acrossTime;
    }

    public T getBaseModel() {
        return this.baseModel;
    }
}
