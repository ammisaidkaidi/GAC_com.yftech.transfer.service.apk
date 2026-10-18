package com.tencent.wecarbase.common.tools.network.http;

import java.io.IOException;
import org.apache.http.HttpResponse;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class HttpStack {
    protected int timeout;

    public abstract HttpResponse performRequest(HttpRequest httpRequest) throws IOException;

    public HttpStack(int i) {
        this.timeout = i;
    }
}
