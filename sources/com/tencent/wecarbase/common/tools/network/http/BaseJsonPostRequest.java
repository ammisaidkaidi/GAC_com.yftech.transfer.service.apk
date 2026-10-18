package com.tencent.wecarbase.common.tools.network.http;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseJsonPostRequest extends HttpRequest {
    private String mBody;

    @Override // com.tencent.wecarbase.common.tools.network.http.HttpRequest
    public String getBodyContentType() {
        return "application/json";
    }

    public BaseJsonPostRequest(int i, String str, String str2) {
        super(i, str);
        this.mBody = str2;
    }

    @Override // com.tencent.wecarbase.common.tools.network.http.HttpRequest
    public byte[] getBody() {
        return this.mBody.getBytes();
    }
}
