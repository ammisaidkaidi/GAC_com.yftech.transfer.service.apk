package com.tencent.taes.remote.api.account.bean;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class TDFModel<T> {
    private long acrossTime;
    private T data;
    private String host;
    private String message;
    private int status;
    private String timestamp;
    private String traceId;

    public boolean isSuccess() {
        return this.status == 0;
    }

    public long getAcrossTime() {
        return this.acrossTime;
    }

    public void setAcrossTime(long j) {
        this.acrossTime = j;
    }

    public T getData() {
        return this.data;
    }

    public void setData(T t) {
        this.data = t;
    }

    public String getHost() {
        return this.host;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public String getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(String str) {
        this.timestamp = str;
    }

    public String getTraceId() {
        return this.traceId;
    }

    public void setTraceId(String str) {
        this.traceId = str;
    }
}
