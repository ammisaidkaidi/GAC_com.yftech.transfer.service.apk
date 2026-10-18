package com.tencent.tai.pal.client;

import android.os.Bundle;
import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.extensible.IExtensible;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALExtensibleManager extends IExtensible {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ExtensibleListener extends INoProguardInterface {
        void onExtensibleMsg(Bundle bundle);
    }

    Bundle callExtensibleApi(Bundle bundle);

    void registerExtensibleListener(ExtensibleListener extensibleListener);

    void unregisterExtensibleListener(ExtensibleListener extensibleListener);
}
