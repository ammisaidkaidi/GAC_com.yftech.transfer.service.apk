package com.yftech.transfer.tencent.access;

import com.tencent.wecarspeech.sdk.listener.IAsrCommandListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class AsrCommand implements IAsrCommandListener {
    @Override // com.tencent.wecarspeech.sdk.listener.IAsrCommandListener
    public void onAsrCommand(String str, String str2) {
        TASSystem.LOGI("onAsrCommand cmd:" + str + ",tag:" + str2);
    }
}
