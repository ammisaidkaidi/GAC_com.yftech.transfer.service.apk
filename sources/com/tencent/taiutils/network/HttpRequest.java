package com.tencent.taiutils.network;

import okhttp3.Request;

/* loaded from: /home/user/work/dex/classes.dex */
public class HttpRequest<T> {
    public Request.Builder okHttpRequestBuilder;
    public HttpResponseConverter<T> responseConverter;

    public Request.Builder getOkHttpRequestBuilder() {
        return this.okHttpRequestBuilder;
    }

    public HttpResponseConverter<T> getResponseConverter() {
        return this.responseConverter;
    }

    public HttpRequest<T> setOkHttpRequestBuilder(Request.Builder builder) {
        this.okHttpRequestBuilder = builder;
        return this;
    }

    public HttpRequest<T> setResponseConverter(HttpResponseConverter<T> httpResponseConverter) {
        this.responseConverter = httpResponseConverter;
        return this;
    }
}
