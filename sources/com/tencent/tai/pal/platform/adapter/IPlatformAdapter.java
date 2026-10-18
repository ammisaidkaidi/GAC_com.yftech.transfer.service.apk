package com.tencent.tai.pal.platform.adapter;

import android.content.Context;
import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPlatformAdapter extends INoProguardInterface {
    <T extends BaseAdapter> T getAdapter(Class<T> cls);

    PlatformSupportInfo getSupportInfo();

    void onCreate(Context context);

    void onInitialized();
}
