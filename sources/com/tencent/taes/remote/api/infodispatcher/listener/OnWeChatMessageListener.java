package com.tencent.taes.remote.api.infodispatcher.listener;

import com.tencent.taes.base.api.bean.infodispatcher.wechat.WeCarWeChatMessage;

/* loaded from: /home/user/work/dex/classes.dex */
public interface OnWeChatMessageListener {
    void onWeChatMessageChanged(WeCarWeChatMessage weCarWeChatMessage);
}
