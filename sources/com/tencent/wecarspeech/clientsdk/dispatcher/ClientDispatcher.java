package com.tencent.wecarspeech.clientsdk.dispatcher;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.impl.DomainContainer;
import com.tencent.wecarspeech.clientsdk.impl.DynamicContainer;
import com.tencent.wecarspeech.clientsdk.impl.SceneContainer;
import com.tencent.wecarspeech.clientsdk.interfaces.IRejectSemanticCallBack;
import com.tencent.wecarspeech.clientsdk.interfaces.ISSRCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.ISTTListener;
import com.tencent.wecarspeech.clientsdk.interfaces.ISTrvCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.ISemanticFilter;
import com.tencent.wecarspeech.clientsdk.model.Domain;
import com.tencent.wecarspeech.clientsdk.model.SSRResult;
import com.tencent.wecarspeech.clientsdk.model.STrvResult;
import com.tencent.wecarspeech.clientsdk.model.SemanticFilterResult;
import com.tencent.wecarspeech.clientsdk.model.Skill;
import com.tencent.wecarspeech.clientsdk.model.WakeUpEvent;
import com.tencent.wecarspeech.clientsdk.model.WakeUpScene;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import com.tencent.wecarspeech.vframework.IGeneralCtrlResultCallback;
import java.util.Iterator;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class ClientDispatcher implements IClientDispatcher {
    private static final String TAG = "ClientDispatcher";
    private DomainContainer mDomainContainer;
    private DynamicContainer mDynamicContainer;
    private SceneContainer mSceneContainer;

    public ClientDispatcher(@NonNull SceneContainer sceneContainer, @NonNull DomainContainer domainContainer, @NonNull DynamicContainer dynamicContainer) {
        this.mSceneContainer = sceneContainer;
        this.mDomainContainer = domainContainer;
        this.mDynamicContainer = dynamicContainer;
        LogUtils.d(TAG, "dispatcher : " + this + "domainContainer: " + this.mDomainContainer);
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public void dispatchAppSkill(long j, String str, String str2, String str3, int i) {
        LogUtils.d(TAG, "dispatchAppSkill sessionId = " + j + " semantic = " + str3);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            LogUtils.d(TAG, "dispatchAppSkill domainType = " + str + " skillType = " + str2);
            if (this.mDomainContainer != null) {
                Skill appSkill = this.mDomainContainer.getAppSkill(str, str2);
                if (appSkill != null) {
                    LogUtils.d(TAG, "dispatchAppSkill skillId = " + appSkill.getSkillId());
                    appSkill.onSREvent(j, str3, i);
                    return;
                }
                Skill systemSkill = this.mDomainContainer.getSystemSkill(str, str2);
                if (systemSkill != null) {
                    LogUtils.d(TAG, "dispatchSystemSkill skillId = " + systemSkill.getSkillId());
                    systemSkill.onSREvent(j, str3, i);
                    return;
                }
                LogUtils.d(TAG, "domainContainer: " + this.mDomainContainer);
                Set<Domain> appDomainSet = this.mDomainContainer.getAppDomainSet();
                if (appDomainSet != null) {
                    Iterator<Domain> it = appDomainSet.iterator();
                    while (it.hasNext()) {
                        LogUtils.d(TAG, "domain: " + it.next().getDomainType());
                    }
                }
                LogUtils.e(TAG, "dispatchAppSkill no skill matched");
                return;
            }
            LogUtils.e(TAG, "mDomainContainer == null , no dispatch");
            return;
        }
        LogUtils.e(TAG, "dispatchAppSkill domainType or skillType is empty,domainType = " + str + " skillType = " + str2);
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public void dispatchWakeup(long j, String str, String str2, int i) {
        LogUtils.d(TAG, "dispatchWakeup onWakeup taskId = " + j + " sceneId = " + str + " word = " + str2);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (this.mSceneContainer != null) {
                WakeUpScene sceneById = this.mSceneContainer.getSceneById(str);
                if (sceneById != null) {
                    for (WakeUpEvent wakeUpEvent : sceneById.getEventSets()) {
                        if (wakeUpEvent.hitWord(str2)) {
                            LogUtils.d(TAG, "dispatchWakeup hit event, id = " + wakeUpEvent.getEventId());
                            wakeUpEvent.onWakeupEvent(j, wakeUpEvent.getIndicationByWord(str2), str2, i);
                        }
                    }
                    return;
                }
                LogUtils.e(TAG, "error dispatchWakeup scene == null");
                return;
            }
            LogUtils.e(TAG, "error mSceneContainer == null");
            return;
        }
        LogUtils.e(TAG, "error dispatchWakeup sceneId == null");
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public void dispatchSystemSkill(long j, String str, String str2, String str3, int i) {
        LogUtils.d(TAG, "dispatchSystemSkill taskId = " + j + " semantic = " + str3);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            LogUtils.d(TAG, "dispatchSystemSkill domainType = " + str + " skillType = " + str2);
            if (this.mDomainContainer != null) {
                Skill systemSkill = this.mDomainContainer.getSystemSkill(str, str2);
                if (systemSkill != null) {
                    LogUtils.d(TAG, "dispatchSystemSkill skillId = " + systemSkill.getSkillId());
                    systemSkill.onSREvent(j, str3, i);
                    return;
                }
                LogUtils.e(TAG, "dispatchSystemSkill no skill matched");
                return;
            }
            LogUtils.e(TAG, "mDomainContainer == null , no dispatch");
            return;
        }
        LogUtils.e(TAG, "dispatchSystemSkill domainType or skillType is empty,domainType = " + str + " skillType = " + str2);
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public void dispatchDebugSkill(long j, String str, String str2, String str3, int i) {
        LogUtils.d(TAG, "dispatchDebugSkill taskId = " + j + " semantic = " + str3);
        dispatchAppSkill(j, str, str2, str3, i);
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public void dispatchSystemWakeup(long j, String str, String str2, int i) {
        LogUtils.d(TAG, "dispatchSystemWakeup onWakeup taskId = " + j + " sceneId = " + str + " word = " + str2);
        if (!TextUtils.isEmpty(str2)) {
            if (this.mSceneContainer != null) {
                WakeUpScene systemWakeup = this.mSceneContainer.getSystemWakeup();
                if (systemWakeup != null) {
                    for (WakeUpEvent wakeUpEvent : systemWakeup.getEventSets()) {
                        if (wakeUpEvent.hitWord(str2)) {
                            LogUtils.d(TAG, "dispatchSystemWakeup hit event, id = " + wakeUpEvent.getEventId());
                            wakeUpEvent.onWakeupEvent(j, wakeUpEvent.getIndicationByWord(str2), str2, 0);
                        }
                    }
                    return;
                }
                LogUtils.e(TAG, "error dispatchSystemWakeup scene == null");
                return;
            }
            LogUtils.e(TAG, "error mSceneContainer == null");
            return;
        }
        LogUtils.e(TAG, "error dispatchWakeup word == null");
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public boolean dispatchDuplexSSREvent(long j, SSRResult sSRResult, int i) {
        ISSRCallback sSRCallback;
        boolean z;
        boolean z2;
        LogUtils.d(TAG, "dispatchDuplexSSREvent taskId = " + j + " result = " + sSRResult);
        if (this.mDynamicContainer == null) {
            LogUtils.d(TAG, "dispatchDuplexSSREvent mDynamicContainer == null , no dispatch");
            return false;
        }
        if (sSRResult != null && sSRResult.isSeriesSession()) {
            sSRCallback = this.mDynamicContainer.getISSRContextCallback();
        } else {
            sSRCallback = this.mDynamicContainer.getSSRCallback();
        }
        if (sSRCallback == null || sSRResult == null) {
            LogUtils.e(TAG, "dispatchDuplexSSREvent issrCallback is null or result is null");
            z = false;
        } else {
            z = true;
        }
        if (z && sSRResult.getType() == SSRResult.SSResultType.SR) {
            ISemanticFilter semanticFilter = this.mDynamicContainer.getSemanticFilter();
            SemanticFilterResult mapSemanticToEvent = semanticFilter == null ? null : semanticFilter.mapSemanticToEvent(j, sSRResult.getSemantic(), this.mDynamicContainer.getTrvSceneWords());
            if (mapSemanticToEvent == null) {
                mapSemanticToEvent = new SemanticFilterResult(1);
            }
            z2 = mapSemanticToEvent.getResult() != 3;
            if (mapSemanticToEvent.getResult() == 2) {
                LogUtils.e(TAG, "dispatchDuplexSSREvent will not has this case so return false!");
            }
        } else {
            z2 = z;
        }
        IRejectSemanticCallBack rejectSemanticCallback = this.mDynamicContainer.getRejectSemanticCallback();
        if (z2 && sSRResult.getType() != SSRResult.SSResultType.REJECT) {
            this.mDynamicContainer.setStart(false);
            this.mDynamicContainer.setSSRCallback(null);
            this.mDynamicContainer.setSemanticFilter(null);
            this.mDynamicContainer.setRejectSemanticCallback(null);
        }
        if (z2) {
            switch (sSRResult.getType()) {
                case SR:
                    sSRCallback.onSREvent(j, sSRResult.getSemantic(), i);
                    break;
                case TIMEOUT:
                    sSRCallback.onTimeout(j, sSRResult.getTimeoutMsg());
                    break;
                case INTERRUPT:
                    sSRCallback.onInterrupt(j, sSRResult.getInterruptReason());
                    break;
                case REJECT:
                    if (rejectSemanticCallback != null) {
                        rejectSemanticCallback.onRejectEvent(j, sSRResult.getSemantic());
                        break;
                    } else {
                        sSRCallback.onSREvent(j, sSRResult.getSemantic(), i);
                        break;
                    }
                default:
                    LogUtils.e(TAG, "dispatchSSREvent illegal result type");
                    break;
            }
        }
        return z2;
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public void dispatchGeneralCtrl(long j, int i, IGeneralCtrlResultCallback iGeneralCtrlResultCallback) {
        LogUtils.d(TAG, "dispatchDuplexSSREvent taskId = " + j + " generalCtrlCode = " + i);
        this.mDynamicContainer.getISSRContextCallback().onGeneralCtrl(j, i, iGeneralCtrlResultCallback);
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public boolean dispatchDuplexSTrvEvent(long j, STrvResult sTrvResult, int i) {
        boolean z;
        boolean z2;
        LogUtils.d(TAG, "dispatchDuplexSTrvEvent taskId = " + j + " result = " + sTrvResult);
        if (this.mDynamicContainer == null) {
            LogUtils.d(TAG, "dispatchDuplexSTrvEvent mDynamicContainer == null , no dispatch");
            return false;
        }
        ISTrvCallback sTrvCallback = this.mDynamicContainer.getSTrvCallback();
        if (sTrvCallback == null || sTrvResult == null) {
            LogUtils.e(TAG, "dispatchDuplexSTrvEvent isTrvCallback is null or result is null");
            this.mDynamicContainer.clearTrvSceneWords();
            z = false;
        } else {
            z = true;
        }
        if (z && sTrvResult.getType() == STrvResult.STrvResultType.SR) {
            ISemanticFilter semanticFilter = this.mDynamicContainer.getSemanticFilter();
            SemanticFilterResult mapSemanticToEvent = semanticFilter == null ? null : semanticFilter.mapSemanticToEvent(j, sTrvResult.getSemantic(), this.mDynamicContainer.getTrvSceneWords());
            if (mapSemanticToEvent == null) {
                mapSemanticToEvent = new SemanticFilterResult(1);
            }
            z2 = mapSemanticToEvent.getResult() != 3;
            if (mapSemanticToEvent.getResult() == 2) {
                sTrvResult = new STrvResult(STrvResult.STrvResultType.WAKEUP);
                sTrvResult.setWord(mapSemanticToEvent.getHitWord());
            }
        } else {
            z2 = z;
        }
        IRejectSemanticCallBack rejectSemanticCallback = this.mDynamicContainer.getRejectSemanticCallback();
        if (z2 && sTrvResult.getType() != STrvResult.STrvResultType.REJECT) {
            this.mDynamicContainer.setStart(false);
            this.mDynamicContainer.setSTrvCallback(null);
            this.mDynamicContainer.setSemanticFilter(null);
            this.mDynamicContainer.setRejectSemanticCallback(null);
        }
        if (z2) {
            switch (sTrvResult.getType()) {
                case SR:
                    this.mDynamicContainer.clearTrvSceneWords();
                    sTrvCallback.onSREvent(j, sTrvResult.getSemantic(), i);
                    break;
                case WAKEUP:
                    String word = sTrvResult.getWord();
                    String indicationByWord = this.mDynamicContainer.getIndicationByWord(word);
                    this.mDynamicContainer.clearTrvSceneWords();
                    sTrvCallback.onWakeup(j, indicationByWord, word, i);
                    break;
                case TIMEOUT:
                    this.mDynamicContainer.clearTrvSceneWords();
                    sTrvCallback.onTimeout(j, sTrvResult.getTimeoutMsg());
                    break;
                case INTERRUPT:
                    this.mDynamicContainer.clearTrvSceneWords();
                    sTrvCallback.onInterrupt(j, sTrvResult.getInterruptReason());
                    break;
                case REJECT:
                    if (rejectSemanticCallback != null) {
                        rejectSemanticCallback.onRejectEvent(j, sTrvResult.getSemantic());
                        break;
                    }
                    break;
                default:
                    this.mDynamicContainer.clearTrvSceneWords();
                    LogUtils.e(TAG, "dispatchDuplexSTrvEvent illegal result type");
                    break;
            }
        }
        return z2;
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public void dispatchSTTEvent(long j, SSRResult sSRResult) {
        LogUtils.d(TAG, "dispatchSTTEvent taskId = " + j + " result = " + sSRResult);
        if (this.mDynamicContainer == null) {
            LogUtils.d(TAG, "dispatchSTTEvent mDynamicContainer == null , no dispatch");
            return;
        }
        this.mDynamicContainer.setStart(false);
        ISTTListener sTTListener = this.mDynamicContainer.getSTTListener();
        this.mDynamicContainer.setSSRCallback(null);
        if (sTTListener == null) {
            LogUtils.e(TAG, "dispatchSTTEvent sttListener == null");
            return;
        }
        if (sSRResult == null) {
            LogUtils.e(TAG, "dispatchSTTEvent result == null");
            return;
        }
        switch (sSRResult.getType()) {
            case TIMEOUT:
                sTTListener.onTimeout(j, sSRResult.getTimeoutMsg());
                return;
            case INTERRUPT:
                sTTListener.onInterrupt(j, sSRResult.getInterruptReason());
                return;
            default:
                LogUtils.e(TAG, "dispatchSTTEvent illegal result type");
                return;
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public void dispatchSSREvent(long j, SSRResult sSRResult, int i) {
        LogUtils.d(TAG, "dispatchSSREvent taskId = " + j + " result = " + sSRResult);
        if (this.mDynamicContainer == null) {
            LogUtils.d(TAG, "dispatchSSREvent mDynamicContainer == null , no dispatch");
            return;
        }
        if (this.mDynamicContainer.getTaskId() != 0 && j != this.mDynamicContainer.getTaskId()) {
            LogUtils.d(TAG, "dispatchSSREvent mDynamicContainer.getTaskId() = " + this.mDynamicContainer.getTaskId());
            return;
        }
        this.mDynamicContainer.setStart(false);
        ISSRCallback sSRCallback = this.mDynamicContainer.getSSRCallback();
        this.mDynamicContainer.setSSRCallback(null);
        if (sSRCallback == null) {
            LogUtils.e(TAG, "dispatchSSREvent issrCallback == null");
            return;
        }
        if (sSRResult == null) {
            LogUtils.e(TAG, "dispatchSSREvent result == null");
            return;
        }
        switch (sSRResult.getType()) {
            case SR:
                sSRCallback.onSREvent(j, sSRResult.getSemantic(), i);
                return;
            case TIMEOUT:
                sSRCallback.onTimeout(j, sSRResult.getTimeoutMsg());
                return;
            case INTERRUPT:
                sSRCallback.onInterrupt(j, sSRResult.getInterruptReason());
                return;
            default:
                LogUtils.e(TAG, "dispatchSSREvent illegal result type");
                return;
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher
    public void dispatchSTrvEvent(long j, STrvResult sTrvResult, int i) {
        LogUtils.d(TAG, "dispatchSTrvEvent taskId = " + j + " result = " + sTrvResult);
        if (this.mDynamicContainer == null) {
            LogUtils.d(TAG, "dispatchSTrvEvent mDynamicContainer == null , no dispatch");
            return;
        }
        this.mDynamicContainer.setStart(false);
        ISTrvCallback sTrvCallback = this.mDynamicContainer.getSTrvCallback();
        this.mDynamicContainer.setSTrvCallback(null);
        if (sTrvCallback == null) {
            LogUtils.e(TAG, "dispatchSTrvEvent isTrvCallback == null");
            this.mDynamicContainer.clearTrvSceneWords();
            return;
        }
        if (sTrvResult == null) {
            LogUtils.e(TAG, "dispatchSTrvEvent result == null");
            this.mDynamicContainer.clearTrvSceneWords();
            return;
        }
        switch (sTrvResult.getType()) {
            case SR:
                this.mDynamicContainer.clearTrvSceneWords();
                sTrvCallback.onSREvent(j, sTrvResult.getSemantic(), i);
                return;
            case WAKEUP:
                String word = sTrvResult.getWord();
                String indicationByWord = this.mDynamicContainer.getIndicationByWord(word);
                this.mDynamicContainer.clearTrvSceneWords();
                sTrvCallback.onWakeup(j, indicationByWord, word, i);
                return;
            case TIMEOUT:
                this.mDynamicContainer.clearTrvSceneWords();
                sTrvCallback.onTimeout(j, sTrvResult.getTimeoutMsg());
                return;
            case INTERRUPT:
                this.mDynamicContainer.clearTrvSceneWords();
                sTrvCallback.onInterrupt(j, sTrvResult.getInterruptReason());
                return;
            default:
                this.mDynamicContainer.clearTrvSceneWords();
                LogUtils.e(TAG, "dispatchSTrvEvent illegal result type");
                return;
        }
    }
}
