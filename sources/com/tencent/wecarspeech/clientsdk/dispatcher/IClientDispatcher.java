package com.tencent.wecarspeech.clientsdk.dispatcher;

import com.tencent.wecarspeech.clientsdk.model.SSRResult;
import com.tencent.wecarspeech.clientsdk.model.STrvResult;
import com.tencent.wecarspeech.vframework.IGeneralCtrlResultCallback;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IClientDispatcher {
    void dispatchAppSkill(long j, String str, String str2, String str3, int i);

    void dispatchDebugSkill(long j, String str, String str2, String str3, int i);

    boolean dispatchDuplexSSREvent(long j, SSRResult sSRResult, int i);

    boolean dispatchDuplexSTrvEvent(long j, STrvResult sTrvResult, int i);

    void dispatchGeneralCtrl(long j, int i, IGeneralCtrlResultCallback iGeneralCtrlResultCallback);

    void dispatchSSREvent(long j, SSRResult sSRResult, int i);

    void dispatchSTTEvent(long j, SSRResult sSRResult);

    void dispatchSTrvEvent(long j, STrvResult sTrvResult, int i);

    void dispatchSystemSkill(long j, String str, String str2, String str3, int i);

    void dispatchSystemWakeup(long j, String str, String str2, int i);

    void dispatchWakeup(long j, String str, String str2, int i);
}
