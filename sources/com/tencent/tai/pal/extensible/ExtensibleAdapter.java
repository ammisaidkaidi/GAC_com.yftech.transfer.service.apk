package com.tencent.tai.pal.extensible;

import android.os.Bundle;
import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ExtensibleAdapter extends BaseAdapter {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ExtensibleListener extends INoProguardInterface {
        void onExtensibleMsg(Bundle bundle);
    }

    public abstract Bundle callExtensibleApi(Bundle bundle);

    public abstract void registerExtensibleListener(ExtensibleListener extensibleListener);

    public abstract void unregisterExtensibleListener(ExtensibleListener extensibleListener);
}
