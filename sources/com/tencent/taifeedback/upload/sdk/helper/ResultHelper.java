package com.tencent.taifeedback.upload.sdk.helper;

/* loaded from: /home/user/work/dex/classes.dex */
public class ResultHelper {
    public static final int FAIL = 1;
    public static final int SUCCESS = 0;
    private int code;
    private String feedbackid;
    private String msg;

    public int getCode() {
        return this.code;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public String getFeedbackid() {
        return this.feedbackid;
    }

    public void setFeedbackid(String str) {
        this.feedbackid = str;
    }
}
