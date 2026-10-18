package com.tencent.taiutils.network;

import android.support.annotation.NonNull;
import okhttp3.Response;

/* loaded from: /home/user/work/dex/classes.dex */
public class BytesResponseConverter implements HttpResponseConverter<byte[]> {
    @Override // com.tencent.taiutils.network.HttpResponseConverter
    @NonNull
    public byte[] convert(Response response) {
        return response.body().bytes();
    }
}
