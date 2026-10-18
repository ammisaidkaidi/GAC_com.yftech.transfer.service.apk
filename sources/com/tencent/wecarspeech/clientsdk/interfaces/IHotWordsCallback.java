package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.clientsdk.enums.HotWordResult;
import com.tencent.wecarspeech.vframework.IHotWordsCallback;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class IHotWordsCallback extends IHotWordsCallback.Stub {
    public abstract void onResult(HotWordResult hotWordResult);

    @Override // com.tencent.wecarspeech.vframework.IHotWordsCallback
    public void onUploadResult(int i) {
        HotWordResult hotWordResult = HotWordResult.UPLOAD_SUCCESS;
        switch (i) {
            case 0:
                hotWordResult = HotWordResult.UPLOAD_SUCCESS;
                break;
            case 1:
                hotWordResult = HotWordResult.UPLOAD_FAIL;
                break;
            case 2:
                hotWordResult = HotWordResult.CLEAN_UP_SUCCESS;
                break;
            case 3:
                hotWordResult = HotWordResult.CLEAN_UP_FAIL;
                break;
            case 4:
                hotWordResult = HotWordResult.UPLOAD_ING;
                break;
        }
        onResult(hotWordResult);
    }
}
