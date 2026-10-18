package com.tencent.taiutils.network;

import android.support.annotation.NonNull;
import okhttp3.Response;

/* loaded from: /home/user/work/dex/classes.dex */
public interface HttpResponseConverter<T> {
    public static final HttpResponseConverter<String> STRING = new StringResponseConverter();
    public static final HttpResponseConverter<byte[]> BYTES = new BytesResponseConverter();

    @NonNull
    T convert(Response response);
}
