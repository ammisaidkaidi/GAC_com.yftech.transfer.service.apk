package com.tencent.car.wechatsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.car.export.message.WeChatMessage;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface OnWeChatMessageListener {
    void onWeChatMessageChanged(WeChatMessage weChatMessage);
}
