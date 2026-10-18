package com.tencent.wecarspeech.clientsdk.impl;

import android.os.RemoteException;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher;
import com.tencent.wecarspeech.clientsdk.model.AppInfo;
import com.tencent.wecarspeech.clientsdk.model.SSRResult;
import com.tencent.wecarspeech.clientsdk.model.STrvResult;
import com.tencent.wecarspeech.clientsdk.model.VrMetaData;
import com.tencent.wecarspeech.clientsdk.utils.GsonUtils;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import com.tencent.wecarspeech.vframework.IDuplexSSrCallback;
import com.tencent.wecarspeech.vframework.IDuplexSTrvCallback;
import com.tencent.wecarspeech.vframework.IGeneralCtrlResultCallback;
import com.tencent.wecarspeech.vframework.ISREventCallback;
import com.tencent.wecarspeech.vframework.ISSRCallback;
import com.tencent.wecarspeech.vframework.ISTrvCallback;
import com.tencent.wecarspeech.vframework.ISpeechService;
import com.tencent.wecarspeech.vframework.IWakeupCallback;
import com.tencent.wecarspeech.vframework.IWeCarCallback;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class MessageListener {
    private static final String TAG = "MessageListener";
    private String mAppId;
    private SpeechClient mClient;
    private IClientDispatcher mDispatcher;
    private DynamicContainer mDynamicContainer;
    private ISpeechService mWecarService;

    /* JADX INFO: Access modifiers changed from: protected */
    public MessageListener(SpeechClient speechClient, ISpeechService iSpeechService, IClientDispatcher iClientDispatcher, DynamicContainer dynamicContainer) {
        this.mWecarService = iSpeechService;
        this.mDispatcher = iClientDispatcher;
        this.mClient = speechClient;
        this.mAppId = speechClient.getAppId();
        this.mDynamicContainer = dynamicContainer;
    }

    public void start() {
        String json = GsonUtils.toJson(new AppInfo(this.mClient.getAppName(), this.mClient.getPkgName(), this.mClient.getAlias(), this.mClient.getClientType()));
        LogUtils.d(TAG, "start appInfoStr = " + json);
        try {
            this.mWecarService.registerClient(this.mAppId, json, new IWeCarCallback.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.MessageListener.1
                @Override // com.tencent.wecarspeech.vframework.IWeCarCallback
                public void onCallBack(int i, String str) throws RemoteException {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    try {
                        MessageListener.this.mClient.setVFVersionCode(new JSONObject(str).getInt("versionCode"));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
            this.mWecarService.setClientSdkVersion(this.mClient.getAppId(), SpeechClientMgr.getInstance().getClientSdkVersion());
            this.mWecarService.registerSREventCallback(this.mAppId, new ISREventCallback.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.MessageListener.2
                @Override // com.tencent.wecarspeech.vframework.ISREventCallback
                public void onSREvent(long j, String str, String str2, String str3) {
                    LogUtils.d(MessageListener.TAG, "onSREventWithDoa taskId id = " + j + " semantic= " + str3 + ",doaDirectionMode.");
                    MessageListener.this.mDynamicContainer.setStart(false);
                    MessageListener.this.mDispatcher.dispatchAppSkill(j, str, str2, str3, 0);
                }

                @Override // com.tencent.wecarspeech.vframework.ISREventCallback
                public void onSREventWithDoa(long j, String str, String str2, String str3, int i) {
                    LogUtils.d(MessageListener.TAG, "onSREventWithDoa taskId id = " + j + " semantic= " + str3 + ",doaDirectionMode:" + i);
                    MessageListener.this.mDynamicContainer.setStart(false);
                    MessageListener.this.mDispatcher.dispatchAppSkill(j, str, str2, str3, i);
                }
            });
            this.mWecarService.registerWakeupCallback(this.mAppId, new IWakeupCallback.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.MessageListener.3
                @Override // com.tencent.wecarspeech.vframework.IWakeupCallback
                public void onWakeup(long j, String str, String str2) throws RemoteException {
                    LogUtils.d(MessageListener.TAG, "onWakeup session id = " + j + " sceneId= " + str + " word = " + str2);
                    MessageListener.this.mDynamicContainer.setStart(false);
                    MessageListener.this.mDispatcher.dispatchWakeup(j, str, str2, 0);
                }

                @Override // com.tencent.wecarspeech.vframework.IWakeupCallback
                public void onWakeupWithDoa(long j, String str, String str2, int i) throws RemoteException {
                    LogUtils.d(MessageListener.TAG, "onWakeup session id = " + j + " sceneId= " + str + ", doaDirection = " + i + " word = " + str2);
                    MessageListener.this.mDynamicContainer.setStart(false);
                    MessageListener.this.mDispatcher.dispatchWakeup(j, str, str2, i);
                }
            });
            VrMetaData vrMetaData = this.mClient.getVrMetaData();
            if (vrMetaData != null && vrMetaData.getVersionCode() >= 300) {
                this.mWecarService.registerDuplexSSRCallback(this.mAppId, new IDuplexSSrCallback.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.MessageListener.4
                    @Override // com.tencent.wecarspeech.vframework.IDuplexSSrCallback
                    public boolean onSSREvent(long j, String str, int i) throws RemoteException {
                        LogUtils.d(MessageListener.TAG, "onSSREvent taskId id = " + j + ", doaDirection = " + i + " semantic= " + str);
                        SSRResult sSRResult = (SSRResult) GsonUtils.fromJson(str, SSRResult.class);
                        MessageListener.this.mDynamicContainer.setStart(false);
                        return MessageListener.this.mDispatcher.dispatchDuplexSSREvent(j, sSRResult, i);
                    }

                    @Override // com.tencent.wecarspeech.vframework.IDuplexSSrCallback
                    public void onGeneralCtrl(long j, int i, IGeneralCtrlResultCallback iGeneralCtrlResultCallback) throws RemoteException {
                        LogUtils.d(MessageListener.TAG, "onGeneralCtrl taskId = " + j + " generalCtrlCode = " + i);
                        MessageListener.this.mDispatcher.dispatchGeneralCtrl(j, i, iGeneralCtrlResultCallback);
                    }
                });
                this.mWecarService.registerDuplexSTrvCallback(this.mAppId, new IDuplexSTrvCallback.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.MessageListener.5
                    @Override // com.tencent.wecarspeech.vframework.IDuplexSTrvCallback
                    public boolean onSTrvEvent(long j, String str, int i) throws RemoteException {
                        LogUtils.d(MessageListener.TAG, "onSTrvEvent taskId id = " + j + ", doaDirection = " + i + " semantic= " + str);
                        STrvResult sTrvResult = (STrvResult) GsonUtils.fromJson(str, STrvResult.class);
                        MessageListener.this.mDynamicContainer.setStart(false);
                        return MessageListener.this.mDispatcher.dispatchDuplexSTrvEvent(j, sTrvResult, i);
                    }
                });
            } else {
                this.mWecarService.registerSSRCallback(this.mAppId, new ISSRCallback.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.MessageListener.6
                    @Override // com.tencent.wecarspeech.vframework.ISSRCallback
                    public void onSSREvent(long j, String str) throws RemoteException {
                        LogUtils.d(MessageListener.TAG, "onSSREvent taskId id = " + j + " semantic= " + str);
                        SSRResult sSRResult = (SSRResult) GsonUtils.fromJson(str, SSRResult.class);
                        MessageListener.this.mDynamicContainer.setStart(false);
                        MessageListener.this.mDispatcher.dispatchSSREvent(j, sSRResult, 0);
                    }

                    @Override // com.tencent.wecarspeech.vframework.ISSRCallback
                    public void onSSREventWithDoa(long j, String str, int i) throws RemoteException {
                        LogUtils.d(MessageListener.TAG, "onSSREvent taskId id = " + j + " semantic= " + str);
                        SSRResult sSRResult = (SSRResult) GsonUtils.fromJson(str, SSRResult.class);
                        MessageListener.this.mDynamicContainer.setStart(false);
                        MessageListener.this.mDispatcher.dispatchSSREvent(j, sSRResult, i);
                    }
                });
                this.mWecarService.registerSTrvCallback(this.mAppId, new ISTrvCallback.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.MessageListener.7
                    @Override // com.tencent.wecarspeech.vframework.ISTrvCallback
                    public void onSTrvEvent(long j, String str) throws RemoteException {
                        LogUtils.d(MessageListener.TAG, "onSTrvEvent taskId id = " + j + " semantic= " + str);
                        STrvResult sTrvResult = (STrvResult) GsonUtils.fromJson(str, STrvResult.class);
                        MessageListener.this.mDynamicContainer.setStart(false);
                        MessageListener.this.mDispatcher.dispatchSTrvEvent(j, sTrvResult, 0);
                    }

                    @Override // com.tencent.wecarspeech.vframework.ISTrvCallback
                    public void onSTrvEventWithDoa(long j, String str, int i) throws RemoteException {
                        LogUtils.d(MessageListener.TAG, "onSTrvEvent taskId id = " + j + ", doaDirection = " + i + " semantic= " + str);
                        STrvResult sTrvResult = (STrvResult) GsonUtils.fromJson(str, STrvResult.class);
                        MessageListener.this.mDynamicContainer.setStart(false);
                        MessageListener.this.mDispatcher.dispatchSTrvEvent(j, sTrvResult, i);
                    }
                });
            }
            this.mWecarService.registerSTTCallback(this.mAppId, new ISSRCallback.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.MessageListener.8
                @Override // com.tencent.wecarspeech.vframework.ISSRCallback
                public void onSSREvent(long j, String str) throws RemoteException {
                    LogUtils.d(MessageListener.TAG, "onSTTEvent taskId id = " + j + ", doaDirection =  semantic= " + str);
                    SSRResult sSRResult = (SSRResult) GsonUtils.fromJson(str, SSRResult.class);
                    MessageListener.this.mDynamicContainer.setStart(false);
                    MessageListener.this.mDispatcher.dispatchSTTEvent(j, sSRResult);
                }

                @Override // com.tencent.wecarspeech.vframework.ISSRCallback
                public void onSSREventWithDoa(long j, String str, int i) throws RemoteException {
                    LogUtils.d(MessageListener.TAG, "onSTTEvent taskId id = " + j + ", doaDirection = " + i + " semantic= " + str);
                    SSRResult sSRResult = (SSRResult) GsonUtils.fromJson(str, SSRResult.class);
                    MessageListener.this.mDynamicContainer.setStart(false);
                    MessageListener.this.mDispatcher.dispatchSTTEvent(j, sSRResult);
                }
            });
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
