package com.tencent.taiutils.network;

import android.support.annotation.NonNull;
import okhttp3.Response;

/* loaded from: /home/user/work/dex/classes.dex */
public class StringResponseConverter implements HttpResponseConverter<String> {
    @Override // com.tencent.taiutils.network.HttpResponseConverter
    @NonNull
    public String convert(Response response) {
        return (response == null || response.body() == null) ? "" : response.body().string();
    }
}
