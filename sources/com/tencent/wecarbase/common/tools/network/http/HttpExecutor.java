package com.tencent.wecarbase.common.tools.network.http;

import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public class HttpExecutor {
    private static final String TAG = "HttpExecutor";
    private static final int TIMEOUT = 10000;
    private static HttpStack httpStack = new HttpUrlStack(10000);

    public static HttpResult execute(HttpRequest httpRequest) throws IOException {
        HttpResult httpResult = new HttpResult();
        httpResult.setResponse(httpStack.performRequest(httpRequest));
        return httpResult;
    }
}
