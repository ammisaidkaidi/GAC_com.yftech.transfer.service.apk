package com.tencent.wecarspeech.clientsdk.impl;

import android.app.Application;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.BuildConfig;
import com.tencent.wecarspeech.clientsdk.dispatcher.ClientDispatcher;
import com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher;
import com.tencent.wecarspeech.clientsdk.enums.DomainType;
import com.tencent.wecarspeech.clientsdk.exceptions.ClientNotInitException;
import com.tencent.wecarspeech.clientsdk.exceptions.ExceptionCtrlManager;
import com.tencent.wecarspeech.clientsdk.exceptions.IllegalDomainException;
import com.tencent.wecarspeech.clientsdk.exceptions.IllegalSceneException;
import com.tencent.wecarspeech.clientsdk.exceptions.IllegalSkillException;
import com.tencent.wecarspeech.clientsdk.exceptions.MultiSceneException;
import com.tencent.wecarspeech.clientsdk.exceptions.UnsupportedWordException;
import com.tencent.wecarspeech.clientsdk.interfaces.ICarStatusListener;
import com.tencent.wecarspeech.clientsdk.interfaces.IHotWordsCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.IPlayStateCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.ISpeechActiveListener;
import com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient;
import com.tencent.wecarspeech.clientsdk.interfaces.IStartResultCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.OnStopCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.RecordCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.SessionInterruptListener;
import com.tencent.wecarspeech.clientsdk.interfaces.SpeechStateCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.VrSpriteInterruptedListener;
import com.tencent.wecarspeech.clientsdk.model.AsrContext;
import com.tencent.wecarspeech.clientsdk.model.BaseVoiceParams;
import com.tencent.wecarspeech.clientsdk.model.Domain;
import com.tencent.wecarspeech.clientsdk.model.HelpInfo;
import com.tencent.wecarspeech.clientsdk.model.HotContact;
import com.tencent.wecarspeech.clientsdk.model.HotMusic;
import com.tencent.wecarspeech.clientsdk.model.HotWechat;
import com.tencent.wecarspeech.clientsdk.model.HotWordModel;
import com.tencent.wecarspeech.clientsdk.model.HotWordType;
import com.tencent.wecarspeech.clientsdk.model.RecordConfig;
import com.tencent.wecarspeech.clientsdk.model.SRContextParams;
import com.tencent.wecarspeech.clientsdk.model.STTParams;
import com.tencent.wecarspeech.clientsdk.model.SegmentResult;
import com.tencent.wecarspeech.clientsdk.model.SegmentText;
import com.tencent.wecarspeech.clientsdk.model.SemanticContext;
import com.tencent.wecarspeech.clientsdk.model.SessionParams;
import com.tencent.wecarspeech.clientsdk.model.Skill;
import com.tencent.wecarspeech.clientsdk.model.SmartParams;
import com.tencent.wecarspeech.clientsdk.model.SubWakeupScene;
import com.tencent.wecarspeech.clientsdk.model.VoiceParams;
import com.tencent.wecarspeech.clientsdk.model.VrMetaData;
import com.tencent.wecarspeech.clientsdk.model.WakeUpEvent;
import com.tencent.wecarspeech.clientsdk.model.WakeUpScene;
import com.tencent.wecarspeech.clientsdk.utils.AppUtils;
import com.tencent.wecarspeech.clientsdk.utils.GsonUtils;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import com.tencent.wecarspeech.vframework.IAudioRecordCallback;
import com.tencent.wecarspeech.vframework.ISSTResult;
import com.tencent.wecarspeech.vframework.ISpeechService;
import com.tencent.wecarspeech.vframework.RecordParam;
import com.tencent.wecarspeech.vframework.RecordSyncParam;
import com.tencent.wecarspeech.vframework.StartRecordResult;
import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class SpeechClient implements ISpeechClient {
    private static final String TAG = "SpeechClient";
    private static final Object mSyncLock = new Object();
    private final int DELAY_MILLIS;
    private String mAlias;
    private String mAppId;
    private String mAppName;
    private long mClientType;
    private Application mContext;
    private IClientDispatcher mDispatcher;
    private DomainContainer mDomainContainer;
    private DynamicContainer mDynamicContainer;
    private Handler mHandlerBinder;
    private boolean mHasState;
    private boolean mIsObserveState;
    private String mPkgName;
    private SceneContainer mSceneContainer;
    private volatile ISpeechService mSpeechService;
    private long mState;
    private SystemRegistration mSysRegistration;
    private int mVFVersionCode;
    private VrMetaData mVrMetaData;
    private Runnable syncState;
    private Runnable writeProviderDomain;
    private Runnable writeProviderWakeup;

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    @Deprecated
    public String getClientSdkVersion() {
        return BuildConfig.VERSION_NAME;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SpeechClient(Application application, Handler handler, String str, String str2, String str3, long j, boolean z) {
        this.DELAY_MILLIS = 600;
        this.mClientType = 0L;
        this.mHasState = false;
        this.writeProviderWakeup = new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SpeechClient.this.mSceneContainer) {
                    SpeechClient.this.mSysRegistration.registerSystemWakeup(SpeechClient.this.mSceneContainer.getSystemWakeup());
                }
            }
        };
        this.writeProviderDomain = new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.8
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SpeechClient.this.mDomainContainer) {
                    SpeechClient.this.mSysRegistration.registerSystemDomain(SpeechClient.this.mDomainContainer.getSystemDomainSet());
                }
            }
        };
        this.syncState = new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.66
            @Override // java.lang.Runnable
            public void run() {
                SpeechClient.this.syncClientState();
            }
        };
        if (application == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("context cannot be null"));
            return;
        }
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("appId cannot be empty"));
            return;
        }
        this.mHandlerBinder = handler;
        this.mAppId = str;
        this.mContext = application;
        this.mIsObserveState = z;
        this.mAppName = str2;
        this.mAlias = str3;
        this.mClientType = j;
        this.mSysRegistration = new SystemRegistration(this.mContext, handler, this);
        this.mSceneContainer = new SceneContainer();
        this.mDomainContainer = new DomainContainer();
        this.mDynamicContainer = new DynamicContainer();
        this.mDispatcher = new ClientDispatcher(this.mSceneContainer, this.mDomainContainer, this.mDynamicContainer);
    }

    private SpeechClient() {
        this.DELAY_MILLIS = 600;
        this.mClientType = 0L;
        this.mHasState = false;
        this.writeProviderWakeup = new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SpeechClient.this.mSceneContainer) {
                    SpeechClient.this.mSysRegistration.registerSystemWakeup(SpeechClient.this.mSceneContainer.getSystemWakeup());
                }
            }
        };
        this.writeProviderDomain = new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.8
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SpeechClient.this.mDomainContainer) {
                    SpeechClient.this.mSysRegistration.registerSystemDomain(SpeechClient.this.mDomainContainer.getSystemDomainSet());
                }
            }
        };
        this.syncState = new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.66
            @Override // java.lang.Runnable
            public void run() {
                SpeechClient.this.syncClientState();
            }
        };
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String getAppId() {
        return this.mAppId;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String getPkgName() {
        if (!TextUtils.isEmpty(this.mPkgName)) {
            return this.mPkgName;
        }
        if (this.mContext == null) {
            return "";
        }
        this.mPkgName = AppUtils.getPackageName(this.mContext);
        return this.mPkgName;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setClientType(long j) {
        this.mClientType = j;
        LogUtils.d(TAG, "setClientType = " + this.mClientType);
        syncClientType();
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void startSRWithContext(final long j, final SRContextParams sRContextParams) {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.1
            @Override // java.lang.Runnable
            public void run() {
                SpeechClient.this.startWaitVoiceInputInner(j, false, sRContextParams);
            }
        });
    }

    public String getAlias() {
        return this.mAlias;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setPkgName(String str) {
        this.mPkgName = str;
        syncPackageName();
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String getAppName() {
        if (!TextUtils.isEmpty(this.mAppName)) {
            return this.mAppName;
        }
        if (this.mContext == null) {
            return "";
        }
        this.mAppName = AppUtils.getAppName(this.mContext);
        return this.mAppName;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setAppName(String str) {
        this.mAppName = str;
        syncAppName();
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public long activateVrSprite(boolean z, boolean z2, VrSpriteInterruptedListener vrSpriteInterruptedListener) throws ClientNotInitException, RemoteException {
        LogUtils.d(TAG, "activateVrSprite");
        if (vrSpriteInterruptedListener == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("listener cannot be null"));
            return 0L;
        }
        if (!z && z2) {
            z2 = false;
            LogUtils.w(TAG, "set dimBehind to false when modal is set to false");
        }
        if (this.mSpeechService == null) {
            ExceptionCtrlManager.getInstance().throwException(new ClientNotInitException("ClientNotInit , mSpeechService == null"));
            return 0L;
        }
        return this.mSpeechService.activateVrSprite(this.mAppId, z, z2, vrSpriteInterruptedListener);
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setAudioRecordCallback(IAudioRecordCallback iAudioRecordCallback) throws RemoteException {
        if (this.mSpeechService != null) {
            this.mSpeechService.setAudioRecordCallback(iAudioRecordCallback);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setRecordOnly(boolean z) throws RemoteException {
        if (this.mSpeechService != null) {
            this.mSpeechService.setRecordOnly(z);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void registSpeechStateCallback(SpeechStateCallback speechStateCallback) throws RemoteException {
        if (this.mSpeechService != null) {
            this.mSpeechService.registSpeechStateCallback(speechStateCallback);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregistSpeechStateCallback(SpeechStateCallback speechStateCallback) throws RemoteException {
        if (this.mSpeechService != null) {
            this.mSpeechService.unregistSpeechStateCallback(speechStateCallback);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setSpeechState(int i, int i2) {
        LogUtils.d(TAG, "clientSDK setSpeechState: " + this.mSpeechService + "  eventType: " + i + "  eventCode: " + i2);
        if (this.mVFVersionCode > 0 && this.mVFVersionCode < 102) {
            LogUtils.e(TAG, "setSpeechState is supported at VERSION_CODE_102, but VFramework version code is " + this.mVFVersionCode);
            return;
        }
        if (this.mSpeechService != null) {
            try {
                this.mSpeechService.setSpeechState(i, i2);
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
            }
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void notifyUsbConnectedStatus(boolean z) {
        if (this.mSpeechService != null) {
            try {
                this.mSpeechService.setUSBStatus(z);
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
            }
        }
    }

    public boolean isIsObserveState() {
        return this.mIsObserveState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onClientConnect(ISpeechService iSpeechService) {
        LogUtils.d(TAG, "onLinkSuccess mAppIdonLinkSuccess mAppId = " + this.mAppId);
        this.mSpeechService = iSpeechService;
        this.mDynamicContainer.setStart(false);
        final MessageListener messageListener = new MessageListener(this, this.mSpeechService, this.mDispatcher, this.mDynamicContainer);
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.2
            @Override // java.lang.Runnable
            public void run() {
                messageListener.start();
            }
        });
        syncRegistrationsToService();
        syncClientState(0L);
        syncAppName();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onClientDisconnect() {
        this.mSpeechService = null;
        if (this.mSceneContainer != null) {
            this.mSceneContainer.unregisterWakeupScene();
            this.mSceneContainer.unregisterAllSubWakeupScene();
        }
    }

    private void syncAppName() {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.3
            @Override // java.lang.Runnable
            public void run() {
                if (SpeechClient.this.mSpeechService != null) {
                    try {
                        SpeechClient.this.mSpeechService.setAppName(SpeechClient.this.mAppId, SpeechClient.this.mAppName);
                    } catch (RemoteException e) {
                        LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                    } catch (NullPointerException e2) {
                        LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                    }
                }
            }
        });
    }

    private void syncPackageName() {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.4
            @Override // java.lang.Runnable
            public void run() {
                if (SpeechClient.this.mSpeechService != null) {
                    if (SpeechClient.this.mVFVersionCode <= 0 || SpeechClient.this.mVFVersionCode >= 300) {
                        try {
                            SpeechClient.this.mSpeechService.setPackageName(SpeechClient.this.mAppId, SpeechClient.this.mPkgName);
                            return;
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                            return;
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                            return;
                        }
                    }
                    LogUtils.e(SpeechClient.TAG, "setPackageName is supported at VERSION_CODE_300, but VFramework version code is " + SpeechClient.this.mVFVersionCode);
                }
            }
        });
    }

    private void syncClientType() {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.5
            @Override // java.lang.Runnable
            public void run() {
                if (SpeechClient.this.mSpeechService != null) {
                    if (SpeechClient.this.mVFVersionCode <= 0 || SpeechClient.this.mVFVersionCode >= 304) {
                        try {
                            SpeechClient.this.mSpeechService.setClientType(SpeechClient.this.mAppId, SpeechClient.this.mClientType);
                            return;
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                            return;
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                            return;
                        }
                    }
                    LogUtils.e(SpeechClient.TAG, "syncClientType is supported at VERSION_CODE_304, but VFramework version code is " + SpeechClient.this.mVFVersionCode);
                }
            }
        });
    }

    private void syncRegistrationsToService() {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.6
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SpeechClient.mSyncLock) {
                    SpeechClient.this.syncAppDomainToService();
                    SpeechClient.this.syncAppWakeupToService();
                    SpeechClient.this.syncWakeupSceneToService();
                    SpeechClient.this.syncSubWakeupSceneToService();
                    SpeechClient.this.syncSystemDomainToService();
                    SpeechClient.this.syncSystemWakeupToService();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncAppDomainToService() {
        if (this.mSpeechService == null) {
            return;
        }
        LogUtils.d(TAG, "syncAppDomainToService");
        Set<Domain> appDomainSet = this.mDomainContainer.getAppDomainSet();
        if (appDomainSet == null || appDomainSet.size() == 0) {
            LogUtils.d(TAG, "appDomainSet = null or appDomainSet is empty");
            return;
        }
        for (Domain domain : appDomainSet) {
            synchronized (domain) {
                String json = GsonUtils.toJson(domain);
                LogUtils.d(TAG, "syncAppDomainToService domain = " + json);
                try {
                    if (this.mSpeechService == null) {
                        return;
                    } else {
                        this.mSpeechService.registerAppDomain(this.mAppId, json);
                    }
                } catch (RemoteException e) {
                    LogUtils.e(TAG, "RemoteException ", e);
                } catch (NullPointerException e2) {
                    LogUtils.e(TAG, "NullPointerException ", e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncSystemDomainToService() {
        if (this.mSpeechService == null) {
            return;
        }
        LogUtils.d(TAG, "syncSystemDomainToService, VFVersionCode = " + getVFVersionCode());
        if (getVFVersionCode() >= 302) {
            Set<Domain> systemDomainSet = this.mDomainContainer.getSystemDomainSet();
            if (systemDomainSet == null) {
                LogUtils.d(TAG, "systemDomainSet = null");
                return;
            }
            try {
                this.mSpeechService.registerSystemDomainSet(this.mAppId, GsonUtils.toJson(systemDomainSet));
                return;
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
                return;
            } catch (NullPointerException e2) {
                LogUtils.e(TAG, "NullPointerException ", e2);
                return;
            }
        }
        registerSystemDomain();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncAppWakeupToService() {
        if (this.mSpeechService == null) {
            return;
        }
        LogUtils.d(TAG, "syncAppWakeupToService");
        WakeUpScene appWakeup = this.mSceneContainer.getAppWakeup();
        if (appWakeup == null) {
            LogUtils.d(TAG, "wakeUpScene = null");
            return;
        }
        try {
            this.mSpeechService.registerAppWakeup(this.mAppId, GsonUtils.toJson(appWakeup));
        } catch (RemoteException e) {
            LogUtils.e(TAG, "RemoteException ", e);
        } catch (NullPointerException e2) {
            LogUtils.e(TAG, "NullPointerException ", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncSystemWakeupToService() {
        if (this.mSpeechService == null) {
            return;
        }
        LogUtils.d(TAG, "syncSystemWakeupToService VFVersionCode = " + getVFVersionCode());
        if (getVFVersionCode() >= 302) {
            WakeUpScene systemWakeup = this.mSceneContainer.getSystemWakeup();
            if (systemWakeup == null) {
                LogUtils.d(TAG, "wakeUpScene = null");
                return;
            }
            try {
                this.mSpeechService.registerSystemWakeUpEvent(this.mAppId, GsonUtils.toJson(systemWakeup));
                return;
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
                return;
            } catch (NullPointerException e2) {
                LogUtils.e(TAG, "NullPointerException ", e2);
                return;
            }
        }
        registerSystemWakeup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncWakeupSceneToService() {
        if (this.mSpeechService == null) {
            return;
        }
        LogUtils.d(TAG, "syncWakeupSceneToService");
        WakeUpScene sceneWakeup = this.mSceneContainer.getSceneWakeup();
        if (sceneWakeup == null) {
            LogUtils.d(TAG, "wakeUpScene = null");
            return;
        }
        try {
            this.mSpeechService.registerSceneWakeup(this.mAppId, GsonUtils.toJson(sceneWakeup));
        } catch (RemoteException e) {
            LogUtils.e(TAG, "RemoteException ", e);
        } catch (NullPointerException e2) {
            LogUtils.e(TAG, "NullPointerException ", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncSubWakeupSceneToService() {
        if (this.mSpeechService == null) {
            return;
        }
        LogUtils.d(TAG, "syncSubWakeupSceneToService");
        Set<SubWakeupScene> subSceneWakeupSet = this.mSceneContainer.getSubSceneWakeupSet();
        if (subSceneWakeupSet == null || subSceneWakeupSet.size() <= 0) {
            return;
        }
        try {
            Iterator<SubWakeupScene> it = subSceneWakeupSet.iterator();
            while (it.hasNext()) {
                this.mSpeechService.registerSubSceneWakeup(this.mAppId, GsonUtils.toJson(it.next()));
            }
        } catch (RemoteException e) {
            LogUtils.e(TAG, "RemoteException ", e);
        } catch (NullPointerException e2) {
            LogUtils.e(TAG, "NullPointerException ", e2);
        }
    }

    private void registerSystemWakeup() {
        this.mHandlerBinder.removeCallbacks(this.writeProviderWakeup);
        this.mHandlerBinder.postDelayed(this.writeProviderWakeup, 500L);
    }

    private void registerSystemDomain() {
        this.mHandlerBinder.removeCallbacks(this.writeProviderDomain);
        this.mHandlerBinder.postDelayed(this.writeProviderDomain, 500L);
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public VrMetaData getVrMetaData() {
        if (this.mSpeechService != null) {
            try {
                this.mVrMetaData = (VrMetaData) GsonUtils.fromJson(this.mSpeechService.getVrMetaData(this.mAppId), VrMetaData.class);
                return this.mVrMetaData;
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return this.mVrMetaData;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerSystemSkill(DomainType domainType, Skill skill) throws IllegalDomainException, IllegalSkillException {
        if (domainType == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalDomainException("domain type cannot be null"));
            return "";
        }
        if (skill == null || TextUtils.isEmpty(skill.getSkillType())) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalSkillException("skillType cannot be null"));
            return "";
        }
        return registerSystemSkill(domainType.name(), skill);
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerSystemSkill(String str, Skill skill) throws IllegalDomainException, IllegalSkillException {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalDomainException("domainType cannot be empty"));
            return "";
        }
        if (skill == null || TextUtils.isEmpty(skill.getSkillType())) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalSkillException("skillType cannot be null"));
            return "";
        }
        LogUtils.d(TAG, "registerSystemSkill, skillId = " + skill.getSkillId() + " VFVersionCode = " + getVFVersionCode());
        this.mDomainContainer.registerSystemSkill(str, skill);
        final String json = GsonUtils.toJson(this.mDomainContainer.getSystemDomainSet());
        if (this.mSpeechService != null) {
            if (getVFVersionCode() >= 302) {
                this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (SpeechClient.this.mSpeechService != null) {
                            try {
                                SpeechClient.this.mSpeechService.registerSystemDomainSet(SpeechClient.this.mAppId, json);
                            } catch (RemoteException e) {
                                LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                            } catch (NullPointerException e2) {
                                LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                            }
                        }
                    }
                });
            } else {
                registerSystemDomain();
            }
        }
        return skill.getSkillId();
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterSystemSkill(String str) {
        LogUtils.d(TAG, "unregisterSystemSkill, skillId = " + str + " VFVersionCode = " + getVFVersionCode());
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalSkillException("skillId cannot be empty"));
            return;
        }
        this.mDomainContainer.unregisterSystemSkill(str);
        final String json = GsonUtils.toJson(this.mDomainContainer.getSystemDomainSet());
        if (this.mSpeechService != null) {
            if (getVFVersionCode() >= 302) {
                this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.10
                    @Override // java.lang.Runnable
                    public void run() {
                        if (SpeechClient.this.mSpeechService != null) {
                            try {
                                SpeechClient.this.mSpeechService.registerSystemDomainSet(SpeechClient.this.mAppId, json);
                            } catch (RemoteException e) {
                                LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                            } catch (NullPointerException e2) {
                                LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                            }
                        }
                    }
                });
            } else {
                registerSystemDomain();
            }
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void registerAppDomain(Domain domain) {
        if (domain == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalDomainException("invalid domain"));
            return;
        }
        final String json = GsonUtils.toJson(domain);
        this.mDomainContainer.registerAppDomain(domain);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.11
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.registerAppDomain(SpeechClient.this.mAppId, json);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterAppDomain(DomainType domainType) {
        if (domainType == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("type cannot be null"));
        } else {
            unregisterAppDomain(domainType.name());
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterAppDomain(final String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("type cannot be empty"));
            return;
        }
        this.mDomainContainer.unregisterAppDomain(str);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.12
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.unregisterAppDomain(SpeechClient.this.mAppId, str);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerAppSkill(DomainType domainType, Skill skill) throws IllegalDomainException, IllegalSkillException {
        if (domainType == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalDomainException("domain type cannot be null"));
            return "";
        }
        if (skill == null || TextUtils.isEmpty(skill.getSkillType())) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalSkillException("skillType cannot be null"));
            return "";
        }
        return registerAppSkill(domainType.name(), skill);
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerAppSkill(final String str, final Skill skill) throws IllegalDomainException, IllegalSkillException {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalDomainException("domainType cannot be empty"));
            return "";
        }
        if (skill == null || TextUtils.isEmpty(skill.getSkillType())) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalSkillException("skillType cannot be null"));
            return "";
        }
        this.mDomainContainer.registerAppSkill(str, skill);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.13
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.registerAppSkill(SpeechClient.this.mAppId, str, GsonUtils.toJson(skill));
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
        return skill.getSkillId();
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterAppSkill(final String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalSkillException("skillId cannot be empty"));
            return;
        }
        this.mDomainContainer.unregisterAppSkill(str);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.14
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.unregisterAppSkill(SpeechClient.this.mAppId, str);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerSystemWakeUpEvent(WakeUpEvent wakeUpEvent) throws IllegalArgumentException, UnsupportedWordException {
        if (wakeUpEvent == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalSkillException("wakeUpEvent cannot be null"));
            return "";
        }
        LogUtils.d(TAG, "registerSystemWakeUpEvent, wakeUpEvent = " + wakeUpEvent.getEventId() + " VFVersionCode = " + getVFVersionCode());
        try {
            if (this.mSpeechService != null && this.mSpeechService.isInWakeupSRMap(GsonUtils.toJson(wakeUpEvent.getWordSet()))) {
                ExceptionCtrlManager.getInstance().throwException(new UnsupportedWordException("words which will map to SR cannot be registered as system wakeup event"));
                return "";
            }
        } catch (RemoteException e) {
            LogUtils.e(TAG, "RemoteException ", e);
        }
        this.mSceneContainer.registerSysWakeupEvent(wakeUpEvent);
        registerSystemWakeupSceneToSpeechService(this.mSceneContainer.getSystemWakeup());
        return wakeUpEvent.getEventId();
    }

    private void registerSystemWakeupSceneToSpeechService(final WakeUpScene wakeUpScene) {
        if (this.mSpeechService != null) {
            if (getVFVersionCode() >= 302) {
                this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.15
                    @Override // java.lang.Runnable
                    public void run() {
                        if (SpeechClient.this.mSpeechService != null) {
                            try {
                                SpeechClient.this.mSpeechService.registerSystemWakeUpEvent(SpeechClient.this.mAppId, GsonUtils.toJson(wakeUpScene));
                            } catch (RemoteException e) {
                                LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                            } catch (NullPointerException e2) {
                                LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                            }
                        }
                    }
                });
            } else {
                registerSystemWakeup();
            }
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterSystemWakeUpEvent(String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("eventId cannot be null"));
        } else {
            this.mSceneContainer.unregisterSysWakeupEvent(str);
            registerSystemWakeupSceneToSpeechService(this.mSceneContainer.getSystemWakeup());
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerAppWakeupEvent(WakeUpEvent wakeUpEvent) throws IllegalArgumentException, UnsupportedWordException {
        if (wakeUpEvent == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("wakeUpEvent cannot be null"));
            return "";
        }
        final String json = GsonUtils.toJson(wakeUpEvent);
        if (this.mSpeechService != null) {
            try {
                if (this.mSpeechService.isInWakeupSRMap(GsonUtils.toJson(wakeUpEvent.getWordSet()))) {
                    ExceptionCtrlManager.getInstance().throwException(new UnsupportedWordException("words which will map to SR cannot be registered as App wakeup event"));
                    return "";
                }
                this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.16
                    @Override // java.lang.Runnable
                    public void run() {
                        if (SpeechClient.this.mSpeechService != null) {
                            try {
                                SpeechClient.this.mSpeechService.registerAppWakeupEvent(SpeechClient.this.mAppId, json);
                            } catch (RemoteException e) {
                                LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                            } catch (NullPointerException e2) {
                                LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                            }
                        }
                    }
                });
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
            }
        }
        this.mSceneContainer.registerAppWakeupEvent(wakeUpEvent);
        return wakeUpEvent.getEventId();
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterAppWakeupEvent(final String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("eventId cannot be null"));
            return;
        }
        this.mSceneContainer.unregisterAppWakeupEvent(str);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.17
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.unregisterAppWakeupEvent(SpeechClient.this.mAppId, str);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerWakeupScene(WakeUpScene wakeUpScene) throws IllegalArgumentException, MultiSceneException, IllegalSceneException {
        if (wakeUpScene == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("wakeUpScene cannot be null"));
            return "";
        }
        final String json = GsonUtils.toJson(wakeUpScene);
        String registerWakeupScene = this.mSceneContainer.registerWakeupScene(wakeUpScene);
        if (this.mSpeechService != null && !TextUtils.isEmpty(registerWakeupScene)) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.18
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.registerSceneWakeup(SpeechClient.this.mAppId, json);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
        return registerWakeupScene;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerWakeupSceneToSystemVr(WakeUpScene wakeUpScene) throws IllegalArgumentException, MultiSceneException, IllegalSceneException {
        if (wakeUpScene == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("wakeUpScene cannot be null"));
            return "";
        }
        final String json = GsonUtils.toJson(wakeUpScene);
        final int vFVersionCode = getVFVersionCode();
        String registerWakeupScene = this.mSceneContainer.registerWakeupScene(wakeUpScene);
        if (this.mSpeechService != null && !TextUtils.isEmpty(registerWakeupScene)) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.19
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            if (vFVersionCode < 310) {
                                SpeechClient.this.mSpeechService.registerSceneWakeup(SpeechClient.this.mAppId, json);
                                LogUtils.d(SpeechClient.TAG, "registerWakeupSceneToSystemVr compatible  speechVerCode = " + vFVersionCode);
                            } else {
                                SpeechClient.this.mSpeechService.registerWakeupSceneToSystemVr(SpeechClient.this.mAppId, json);
                            }
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
        return registerWakeupScene;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterWakeupScene(String str) {
        this.mSceneContainer.unregisterWakeupScene();
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.20
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.unregisterSceneWakeup(SpeechClient.this.mAppId);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerSubWakeupScene(SubWakeupScene subWakeupScene) throws IllegalArgumentException, MultiSceneException {
        if (subWakeupScene == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("subSceneWakeupEvent cannot be null"));
            return "";
        }
        final String json = GsonUtils.toJson(subWakeupScene);
        String registerSubWakeupScene = this.mSceneContainer.registerSubWakeupScene(subWakeupScene);
        if (this.mSpeechService != null && !TextUtils.isEmpty(registerSubWakeupScene)) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.21
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.registerSubSceneWakeup(SpeechClient.this.mAppId, json);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
        return registerSubWakeupScene;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterSubWakeupScene(final String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("sceneId cannot be null"));
            return;
        }
        this.mSceneContainer.unregisterSubWakeupScene(str);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.22
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.unregisterSubSceneWakeup(SpeechClient.this.mAppId, str);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterAllSubWakeupScene() {
        this.mSceneContainer.unregisterAllSubWakeupScene();
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.23
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.unregisterAllSubWakeupScene(SpeechClient.this.mAppId);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerSceneWakeupEvent(final String str, WakeUpEvent wakeUpEvent) throws IllegalArgumentException {
        if (wakeUpEvent == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("wakeUpEvent cannot be null"));
            return "";
        }
        if (str == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("sceneId cannot be null"));
            return "";
        }
        final String json = GsonUtils.toJson(wakeUpEvent);
        boolean registerSceneWakeupEvent = this.mSceneContainer.registerSceneWakeupEvent(str, wakeUpEvent);
        if (this.mSpeechService != null && registerSceneWakeupEvent) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.24
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.registerSceneWakeupEvent(SpeechClient.this.mAppId, str, json);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
        return wakeUpEvent.getEventId();
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterSceneWakeupEvent(final String str, final String str2) {
        if (str2 == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("eventId cannot be null"));
            return;
        }
        if (str == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("sceneId cannot be null"));
            return;
        }
        boolean unregisterSceneWakeupEvent = this.mSceneContainer.unregisterSceneWakeupEvent(str, str2);
        if (this.mSpeechService == null || !unregisterSceneWakeupEvent) {
            return;
        }
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.25
            @Override // java.lang.Runnable
            public void run() {
                if (SpeechClient.this.mSpeechService != null) {
                    try {
                        SpeechClient.this.mSpeechService.unregisterSceneWakeupEvent(SpeechClient.this.mAppId, str, str2);
                    } catch (RemoteException e) {
                        LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                    } catch (NullPointerException e2) {
                        LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                    }
                }
            }
        });
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void registerSceneWakeupEvent(final String str, Set<WakeUpEvent> set) throws IllegalArgumentException {
        if (set == null || set.size() == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("wakeUpEventSet cannot be empty"));
            return;
        }
        if (str == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("sceneId cannot be null"));
            return;
        }
        final String json = GsonUtils.toJson(set);
        boolean registerSceneWakeupEvent = this.mSceneContainer.registerSceneWakeupEvent(str, set);
        if (this.mSpeechService == null || !registerSceneWakeupEvent) {
            return;
        }
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.26
            @Override // java.lang.Runnable
            public void run() {
                if (SpeechClient.this.mSpeechService != null) {
                    try {
                        SpeechClient.this.mSpeechService.registerSceneWakeupEventSet(SpeechClient.this.mAppId, str, json);
                    } catch (RemoteException e) {
                        LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                    } catch (NullPointerException e2) {
                        LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                    }
                }
            }
        });
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterSceneWakeupEvent(final String str, Set<String> set) {
        if (set == null || set.size() == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("eventIdSet cannot be empty"));
            return;
        }
        if (str == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("sceneId cannot be null"));
            return;
        }
        final String json = GsonUtils.toJson(set);
        boolean unregisterSceneWakeupEvent = this.mSceneContainer.unregisterSceneWakeupEvent(str, set);
        if (this.mSpeechService == null || !unregisterSceneWakeupEvent) {
            return;
        }
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.27
            @Override // java.lang.Runnable
            public void run() {
                if (SpeechClient.this.mSpeechService != null) {
                    try {
                        SpeechClient.this.mSpeechService.unregisterSceneWakeupEventSet(SpeechClient.this.mAppId, str, json);
                    } catch (RemoteException e) {
                        LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                    } catch (NullPointerException e2) {
                        LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                    }
                }
            }
        });
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public String registerHighPriorityScene(SubWakeupScene subWakeupScene) {
        if (subWakeupScene == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("subWakeupScene cannot be null"));
            return "";
        }
        final String json = GsonUtils.toJson(subWakeupScene);
        String registerHighPriorityScene = this.mSceneContainer.registerHighPriorityScene(subWakeupScene);
        if (this.mSpeechService != null && !TextUtils.isEmpty(registerHighPriorityScene)) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.28
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.registerSubSceneWakeup(SpeechClient.this.mAppId, json);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
        return registerHighPriorityScene;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unRegisterHighPriorityScene(final String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("sceneId cannot be null"));
            return;
        }
        this.mSceneContainer.unRegisterHighPriorityScene(str);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.29
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.unregisterSubSceneWakeup(SpeechClient.this.mAppId, str);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void startWaitVoiceInputInBack(final long j, final VoiceParams voiceParams) {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.30
            @Override // java.lang.Runnable
            public void run() {
                SpeechClient.this.startWaitVoiceInputInner(j, true, voiceParams);
            }
        });
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void startWaitVoiceInput(final long j, final VoiceParams voiceParams) {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.31
            @Override // java.lang.Runnable
            public void run() {
                SpeechClient.this.startWaitVoiceInputInner(j, false, voiceParams);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWaitVoiceInputInner(final long j, boolean z, final VoiceParams voiceParams) {
        LogUtils.d(TAG, "startWaitVoiceInputInner taskId = " + j);
        if (voiceParams == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("params cannot be null"));
            return;
        }
        if (voiceParams instanceof SRContextParams) {
            if (((SRContextParams) voiceParams).mSsrContextCallback == null) {
                ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("params.ssrCallback cannot be null"));
                return;
            }
        } else if (voiceParams.ssrCallback == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("params.ssrCallback cannot be null"));
            return;
        }
        if (this.mSpeechService == null) {
            if (voiceParams.startCallback != null) {
                voiceParams.startCallback.onStartFailed(100, "clientSDK not init yet !!!");
            }
        } else if (!z && !isAppInFront()) {
            if (voiceParams.startCallback != null) {
                voiceParams.startCallback.onStartFailed(101, "cannot start when app is running in background !!!");
            }
        } else if (this.mDynamicContainer.isStart()) {
            stopWaitVoiceInput(new OnStopCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.32
                @Override // com.tencent.wecarspeech.clientsdk.interfaces.OnStopCallback, com.tencent.wecarspeech.vframework.IStopCallback
                public void onStop() {
                    SpeechClient.this.startWaitVoiceInputReal(j, voiceParams);
                }
            });
        } else {
            startWaitVoiceInputReal(j, voiceParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWaitVoiceInputReal(long j, final VoiceParams voiceParams) {
        if (this.mSpeechService != null) {
            String json = GsonUtils.toJson(getSessionParams(j, voiceParams));
            LogUtils.d(TAG, "startWaitVoiceInputInner sessionParams = " + json);
            this.mDynamicContainer.setSSRCallback(voiceParams.ssrCallback);
            this.mDynamicContainer.setSemanticFilter(voiceParams.filter);
            this.mDynamicContainer.setRejectSemanticCallback(voiceParams.rejectCallback);
            this.mDynamicContainer.setTaskId(j);
            this.mDynamicContainer.setStart(true);
            if (voiceParams instanceof SRContextParams) {
                this.mDynamicContainer.setISSRContextCallback(((SRContextParams) voiceParams).mSsrContextCallback);
            }
            try {
                this.mSpeechService.startSR(json, voiceParams.playCallback, new IStartResultCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.33
                    @Override // com.tencent.wecarspeech.clientsdk.interfaces.IStartResultCallback, com.tencent.wecarspeech.vframework.IStartResultCallback
                    public void onStartFailed(int i, String str) {
                        if (voiceParams.startCallback != null) {
                            voiceParams.startCallback.onStartFailed(i, str);
                        }
                        SpeechClient.this.mDynamicContainer.setStart(false);
                    }

                    @Override // com.tencent.wecarspeech.clientsdk.interfaces.IStartResultCallback, com.tencent.wecarspeech.vframework.IStartResultCallback
                    public void onStartSuccess() {
                        if (voiceParams.startCallback != null) {
                            voiceParams.startCallback.onStartSuccess();
                        }
                    }
                });
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
            } catch (NullPointerException e2) {
                LogUtils.e(TAG, "NullPointerException ", e2);
            }
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setSemanticContext(SemanticContext semanticContext) {
        LogUtils.d(TAG, "setSemanticContext");
        if (this.mSpeechService == null) {
            LogUtils.d(TAG, "mSpeechService == null, not connect");
        } else {
            final String json = GsonUtils.toJson(semanticContext);
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.34
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (SpeechClient.this.mSpeechService != null) {
                            SpeechClient.this.mSpeechService.setSemanticContextNew(SpeechClient.this.mAppId, json);
                        }
                    } catch (RemoteException e) {
                        LogUtils.e(SpeechClient.TAG, "setSemanticContext fail");
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setAsrContext(AsrContext asrContext) {
        LogUtils.d(TAG, "setAsrContext");
        if (this.mSpeechService == null) {
            LogUtils.d(TAG, "mSpeechService == null, not connect");
        } else {
            final String json = GsonUtils.toJson(asrContext);
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.35
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (SpeechClient.this.mSpeechService != null) {
                            SpeechClient.this.mSpeechService.setAsrContext(SpeechClient.this.mAppId, json);
                        }
                    } catch (RemoteException e) {
                        LogUtils.e(SpeechClient.TAG, "setAsrContext fail");
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setTryBeforeWakeup(final String str, final String str2) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(TAG, "setTryBeforeWakeup err functionId is empty");
            return;
        }
        if (this.mVFVersionCode < 300) {
            LogUtils.e(TAG, "setTryBeforeWakeup not support in mVFVersionCode " + this.mVFVersionCode);
            return;
        }
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.36
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setTryBeforeWakeup(str, str2);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setTryBeforeWakeup err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setCurrentMiniProgramName(final String str) {
        if (this.mVFVersionCode < 300) {
            LogUtils.e(TAG, "setCurrentMiniProgramName not support in mVFVersionCode " + this.mVFVersionCode);
            return;
        }
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.37
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setCurrentMiniProgramName(SpeechClient.this.mAppId, str);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setCurrentMiniProgramName err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setMiniProgramList(Set<String> set) {
        if (set == null || set.size() < 1) {
            LogUtils.e(TAG, "miniProgramSet is empty");
            return;
        }
        if (this.mVFVersionCode < 300) {
            LogUtils.e(TAG, "setMiniProgramList not support in mVFVersionCode " + this.mVFVersionCode);
            return;
        }
        if (this.mSpeechService != null) {
            final String json = GsonUtils.toJson(set);
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.38
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setMiniProgramList(SpeechClient.this.mAppId, json);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setMiniProgramList err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void stopWaitVoiceInput(final OnStopCallback onStopCallback) {
        LogUtils.d(TAG, "stopWaitVoiceInput");
        if (onStopCallback == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("callback cannot be null"));
            return;
        }
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.39
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.stopSR(SpeechClient.this.mAppId, new OnStopCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.39.1
                                @Override // com.tencent.wecarspeech.clientsdk.interfaces.OnStopCallback, com.tencent.wecarspeech.vframework.IStopCallback
                                public void onStop() {
                                    SpeechClient.this.mDynamicContainer.setStart(false);
                                    SpeechClient.this.mDynamicContainer.setSSRCallback(null);
                                    SpeechClient.this.mDynamicContainer.setSemanticFilter(null);
                                    SpeechClient.this.mDynamicContainer.setRejectSemanticCallback(null);
                                    onStopCallback.onStop();
                                }
                            });
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
            return;
        }
        this.mDynamicContainer.setStart(false);
        this.mDynamicContainer.setSSRCallback(null);
        this.mDynamicContainer.setSemanticFilter(null);
        this.mDynamicContainer.setRejectSemanticCallback(null);
        onStopCallback.onStop();
        LogUtils.e(TAG, "stopWaitVoiceInput err mSpeechService == null");
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void startWaitSmartInputInBack(final long j, final SmartParams smartParams) {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.40
            @Override // java.lang.Runnable
            public void run() {
                SpeechClient.this.startWaitSmartInputInner(j, true, smartParams);
            }
        });
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void startWaitSmartInput(final long j, final SmartParams smartParams) {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.41
            @Override // java.lang.Runnable
            public void run() {
                SpeechClient.this.startWaitSmartInputInner(j, false, smartParams);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWaitSmartInputInner(final long j, boolean z, final SmartParams smartParams) {
        LogUtils.d(TAG, "startWaitSmartInput taskId = " + j + " isBack = " + z);
        if (smartParams == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("params cannot be null"));
            return;
        }
        if (smartParams.strvCallback == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("params.strvCallback cannot be null"));
            return;
        }
        if (this.mSpeechService == null) {
            if (smartParams.startCallback != null) {
                smartParams.startCallback.onStartFailed(100, "clientSDK not init yet !!!");
            }
        } else if (!z && !isAppInFront()) {
            if (smartParams.startCallback != null) {
                smartParams.startCallback.onStartFailed(101, "cannot start when app is running in background !!!");
            }
        } else if (this.mDynamicContainer.isStart()) {
            stopWaitSmartInput(new OnStopCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.42
                @Override // com.tencent.wecarspeech.clientsdk.interfaces.OnStopCallback, com.tencent.wecarspeech.vframework.IStopCallback
                public void onStop() {
                    SpeechClient.this.startWaitSmartInputReal(j, smartParams);
                }
            });
        } else {
            startWaitSmartInputReal(j, smartParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWaitSmartInputReal(long j, final SmartParams smartParams) {
        if (this.mSpeechService != null) {
            String json = GsonUtils.toJson(getSessionParams(j, smartParams));
            LogUtils.d(TAG, "startWaitSmartInputReal sessionParams = " + json);
            this.mDynamicContainer.setSTrvCallback(smartParams.strvCallback);
            this.mDynamicContainer.setTrvSceneWords(smartParams.sceneWords);
            this.mDynamicContainer.setSemanticFilter(smartParams.filter);
            this.mDynamicContainer.setRejectSemanticCallback(smartParams.rejectCallback);
            this.mDynamicContainer.setStart(true);
            try {
                this.mSpeechService.startTRV(json, smartParams.playCallback, new IStartResultCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.43
                    @Override // com.tencent.wecarspeech.clientsdk.interfaces.IStartResultCallback, com.tencent.wecarspeech.vframework.IStartResultCallback
                    public void onStartFailed(int i, String str) {
                        if (smartParams.startCallback != null) {
                            smartParams.startCallback.onStartFailed(i, str);
                        }
                        SpeechClient.this.mDynamicContainer.setStart(false);
                    }

                    @Override // com.tencent.wecarspeech.clientsdk.interfaces.IStartResultCallback, com.tencent.wecarspeech.vframework.IStartResultCallback
                    public void onStartSuccess() {
                        if (smartParams.startCallback != null) {
                            smartParams.startCallback.onStartSuccess();
                        }
                    }
                });
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
            } catch (NullPointerException e2) {
                LogUtils.e(TAG, "NullPointerException ", e2);
            }
        }
    }

    private SessionParams getSessionParams(long j, BaseVoiceParams baseVoiceParams) {
        SessionParams sessionParams = new SessionParams();
        sessionParams.mAppId = this.mAppId;
        sessionParams.mTaskId = j;
        sessionParams.mDisplayUI = baseVoiceParams.displayVrSprite;
        sessionParams.mHints = baseVoiceParams.hints;
        sessionParams.mTips = baseVoiceParams.tips;
        sessionParams.mPlaySound = baseVoiceParams.playSound;
        sessionParams.mSpeechSilTimeout = baseVoiceParams.speechSilTimeout;
        sessionParams.mSpeechTimeout = baseVoiceParams.speechTimeout;
        sessionParams.mTts = baseVoiceParams.tts;
        sessionParams.mTtsSequence = baseVoiceParams.ttsSequence;
        sessionParams.mVadEndSilTime = baseVoiceParams.vadEndSilTimeout;
        sessionParams.mSemanticContext = baseVoiceParams.semanticContext;
        sessionParams.mRequestVuiPolicy = baseVoiceParams.requestVuiPolicy;
        if (baseVoiceParams instanceof SmartParams) {
            HashSet hashSet = new HashSet();
            Iterator<Map.Entry<String, Set<String>>> it = ((SmartParams) baseVoiceParams).sceneWords.entrySet().iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().getValue());
            }
            sessionParams.mTrvWords = hashSet;
        }
        if (baseVoiceParams instanceof SRContextParams) {
            sessionParams.mIsSeriesSession = true;
            SRContextParams sRContextParams = (SRContextParams) baseVoiceParams;
            sessionParams.mMultiTurnTmplInfo = sRContextParams.mMultiTurnTmpl;
            sessionParams.mMutiTurnExtendIntents = sRContextParams.mMutiTurnExtendIntents;
            sessionParams.mSeriesVerifySemanticInfo = sRContextParams.mSeriesVerifySemanticInfo;
            sessionParams.mClearSlotsInStack = sRContextParams.mClearSlotsInStack;
        }
        return sessionParams;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void stopWaitSmartInput(final OnStopCallback onStopCallback) {
        LogUtils.d(TAG, "stopWaitSmartInput");
        if (onStopCallback == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("callback cannot be null"));
            return;
        }
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.44
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.stopTRV(SpeechClient.this.mAppId, new OnStopCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.44.1
                                @Override // com.tencent.wecarspeech.clientsdk.interfaces.OnStopCallback, com.tencent.wecarspeech.vframework.IStopCallback
                                public void onStop() {
                                    SpeechClient.this.mDynamicContainer.setStart(false);
                                    SpeechClient.this.mDynamicContainer.clearTrvSceneWords();
                                    SpeechClient.this.mDynamicContainer.setSTrvCallback(null);
                                    SpeechClient.this.mDynamicContainer.setSemanticFilter(null);
                                    SpeechClient.this.mDynamicContainer.setRejectSemanticCallback(null);
                                    onStopCallback.onStop();
                                }
                            });
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
            return;
        }
        this.mDynamicContainer.setStart(false);
        this.mDynamicContainer.clearTrvSceneWords();
        this.mDynamicContainer.setSTrvCallback(null);
        this.mDynamicContainer.setSemanticFilter(null);
        onStopCallback.onStop();
        LogUtils.e(TAG, "stopWaitSmartInput err mSpeechService == null");
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public int playAudio(String str, long j, IPlayStateCallback iPlayStateCallback) {
        LogUtils.d(TAG, "playAudio taskId = " + j + " file = " + str);
        if (j == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("taskId is invalid"));
            return 0;
        }
        if (TextUtils.isEmpty(str)) {
            iPlayStateCallback.onPlayError();
            return 0;
        }
        if (this.mSpeechService == null) {
            iPlayStateCallback.onPlayError();
            return 0;
        }
        try {
            return this.mSpeechService.playAudio(j, str, 0, iPlayStateCallback);
        } catch (RemoteException e) {
            LogUtils.e(TAG, "RemoteException ", e);
            iPlayStateCallback.onPlayError();
            return 0;
        } catch (NullPointerException e2) {
            LogUtils.e(TAG, "NullPointerException ", e2);
            iPlayStateCallback.onPlayError();
            return 0;
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void stopAudio(final int i) {
        LogUtils.d(TAG, "stopAudio id = " + i);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.45
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.stopAudio(i);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "stopAudio err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void stopAllAudio() {
        LogUtils.d(TAG, "stopAllAudio");
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.46
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.stopAllAudio();
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "stopAllAudio err mSpeechService == null");
        }
    }

    private int playTtsInner(String str, long j, int i, IPlayStateCallback iPlayStateCallback) {
        if (j == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("taskId is invalid"));
            return 0;
        }
        if (TextUtils.isEmpty(str)) {
            iPlayStateCallback.onPlayError();
            return 0;
        }
        if (this.mSpeechService == null) {
            iPlayStateCallback.onPlayError();
            return 0;
        }
        try {
            setSpeechState(4, i);
            return this.mSpeechService.playTTS(j, str, 0, iPlayStateCallback);
        } catch (RemoteException e) {
            LogUtils.e(TAG, "RemoteException ", e);
            iPlayStateCallback.onPlayError();
            return 0;
        } catch (NullPointerException e2) {
            LogUtils.e(TAG, "NullPointerException ", e2);
            iPlayStateCallback.onPlayError();
            return 0;
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    @Deprecated
    public int playTTS(String str, long j, IPlayStateCallback iPlayStateCallback) {
        LogUtils.d(TAG, "playTTS taskId = " + j + " tips = " + str);
        return playTtsInner(str, j, 11, iPlayStateCallback);
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public int playTTS(String str, long j, int i, IPlayStateCallback iPlayStateCallback) {
        LogUtils.d(TAG, "playTTS taskId = " + j + " tips = " + str + " ttsType = " + i);
        return playTtsInner(str, j, i, iPlayStateCallback);
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void stopTTS(final int i) {
        LogUtils.d(TAG, "stopTTS id = " + i);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.47
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.stopTTS(i);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "stopTTS err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void stopAllTTS() {
        LogUtils.d(TAG, "stopAllTTS");
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.48
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.stopAllTTS();
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "stopAllTTS err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setSpeechActiveListener(final ISpeechActiveListener iSpeechActiveListener) {
        if (iSpeechActiveListener == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("listener cannot be null"));
        } else if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.49
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setSpeechActiveListener(iSpeechActiveListener);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setSpeechActiveListener err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void removeSpeechActiveListener(final ISpeechActiveListener iSpeechActiveListener) {
        if (iSpeechActiveListener == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("listener cannot be null"));
        } else if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.50
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.removeSpeechActiveListener(iSpeechActiveListener);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "removeSpeechActiveListener err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setTryHint(final Set<String> set) {
        if (set == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("hintSet cannot be null"));
        } else if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.51
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setTryHint(SpeechClient.this.mAppId, GsonUtils.toJson(set));
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setTryHint err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setHelpInfo(final HelpInfo helpInfo) {
        if (helpInfo == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("helpInfo cannot be null"));
        } else if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.52
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setHelpDescription(SpeechClient.this.mAppId, GsonUtils.toJson(helpInfo));
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setHelpInfo err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setHotContactList(HotWordType hotWordType, List<HotContact> list) {
        if (list == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("hintSet cannot be null"));
            return;
        }
        if (hotWordType == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("type cannot be null"));
            return;
        }
        try {
            HotWordModel hotWordModel = new HotWordModel();
            hotWordModel.contactList = list;
            setHotWords(hotWordType, GsonUtils.toJson(hotWordModel));
        } catch (ConcurrentModificationException e) {
            LogUtils.e(TAG, "ConcurrentModificationException ", e);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setHotMusicList(HotWordType hotWordType, List<HotMusic> list) {
        if (list == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("hintSet cannot be null"));
            return;
        }
        if (hotWordType == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("type cannot be null"));
            return;
        }
        try {
            HotWordModel hotWordModel = new HotWordModel();
            hotWordModel.music_list = list;
            setHotWords(hotWordType, GsonUtils.toJson(hotWordModel));
        } catch (ConcurrentModificationException e) {
            LogUtils.e(TAG, "ConcurrentModificationException ", e);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setHotWechatList(HotWordType hotWordType, List<HotWechat> list) {
        if (list == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("hintSet cannot be null"));
            return;
        }
        if (hotWordType == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("type cannot be null"));
            return;
        }
        try {
            HotWordModel hotWordModel = new HotWordModel();
            hotWordModel.wechat_list = list;
            setHotWords(hotWordType, GsonUtils.toJson(hotWordModel));
        } catch (ConcurrentModificationException e) {
            LogUtils.e(TAG, "ConcurrentModificationException ", e);
        }
    }

    private void setHotWords(final HotWordType hotWordType, final String str) {
        LogUtils.d(TAG, "setHotWords type = " + hotWordType.ordinal());
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.53
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setHotWords(SpeechClient.this.mAppId, hotWordType.ordinal(), str);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setHotWords err mSpeechService == null");
        }
    }

    private void setHotWords(final HotWordType hotWordType, final String str, final IHotWordsCallback iHotWordsCallback) {
        LogUtils.d(TAG, "setHotWords type = " + hotWordType.ordinal());
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.54
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setHotWordWithCallBack(SpeechClient.this.mAppId, hotWordType.ordinal(), str, iHotWordsCallback);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setHotWords err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void holdTask(long j, boolean z, SessionInterruptListener sessionInterruptListener) throws RemoteException, ClientNotInitException {
        LogUtils.d(TAG, "holdTask taskId = " + j + " interruptable = " + z);
        if (sessionInterruptListener == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("listener cannot be null"));
            return;
        }
        if (j == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("taskId is invalid"));
        } else if (this.mSpeechService == null) {
            ExceptionCtrlManager.getInstance().throwException(new ClientNotInitException("ClientNotInit , mSpeechService == null"));
        } else {
            this.mSpeechService.holdTask(this.mAppId, j, z, sessionInterruptListener);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void releaseTask(final long j) {
        LogUtils.d(TAG, "releaseTask taskId = " + j);
        if (j == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("taskId is invalid"));
        } else if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.55
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.releaseTask(SpeechClient.this.mAppId, j);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException unused) {
                            LogUtils.e(SpeechClient.TAG, "releaseTask err NullPointerException");
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "releaseTask err mSpeechService == null");
        }
    }

    private boolean isAppInFront() {
        return (this.mState & 1) > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getClientState() {
        if (this.mVFVersionCode > 0 && this.mVFVersionCode < 300) {
            LogUtils.e(TAG, "getClientState is supported at VERSION_CODE_300, but VFramework version code is " + this.mVFVersionCode);
            return;
        }
        if (this.mSpeechService == null || this.mHasState) {
            return;
        }
        try {
            this.mState = this.mSpeechService.getClientState(this.mAppId);
            this.mHasState = true;
        } catch (RemoteException e) {
            LogUtils.e(TAG, "RemoteException ", e);
        } catch (NullPointerException e2) {
            LogUtils.e(TAG, "NullPointerException ", e2);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setState(final long j) {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.56
            @Override // java.lang.Runnable
            public void run() {
                SpeechClient.this.getClientState();
                SpeechClient.this.mState |= j;
                if (j == 1) {
                    SpeechClient.this.syncClientState(600L);
                } else {
                    SpeechClient.this.syncClientState(0L);
                }
            }
        });
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void resetState() {
        if (this.mVFVersionCode > 0 && this.mVFVersionCode < 304) {
            LogUtils.e(TAG, "resetState is supported at VERSION_CODE_304, but VFramework version code is " + this.mVFVersionCode);
            return;
        }
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.57
            @Override // java.lang.Runnable
            public void run() {
                if (SpeechClient.this.mSpeechService != null) {
                    try {
                        LogUtils.d(SpeechClient.TAG, "resetState appId = " + SpeechClient.this.mAppId);
                        SpeechClient.this.mSpeechService.resetState(SpeechClient.this.mAppId);
                        return;
                    } catch (RemoteException e) {
                        LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        return;
                    } catch (NullPointerException e2) {
                        LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        return;
                    }
                }
                LogUtils.d(SpeechClient.TAG, "mSpeechService is null");
            }
        });
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void clearState(final long j) {
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.58
            @Override // java.lang.Runnable
            public void run() {
                SpeechClient.this.getClientState();
                SpeechClient.this.mState &= ~j;
                if (j == 1) {
                    SpeechClient.this.syncClientState(600L);
                } else {
                    SpeechClient.this.syncClientState(0L);
                }
            }
        });
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void holdVrSprite(long j, boolean z, VrSpriteInterruptedListener vrSpriteInterruptedListener) throws ClientNotInitException, RemoteException {
        holdVrSprite(j, z, false, vrSpriteInterruptedListener);
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void holdVrSprite(long j, boolean z, boolean z2, VrSpriteInterruptedListener vrSpriteInterruptedListener) throws ClientNotInitException, RemoteException {
        LogUtils.d(TAG, "holdVrSprite taskId = " + j);
        if (vrSpriteInterruptedListener == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("listener cannot be null"));
            return;
        }
        if (j == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("taskId is invalid"));
            return;
        }
        if (!z && z2) {
            z2 = false;
            LogUtils.w(TAG, "set dimBehind to false when modal is set to false");
        }
        boolean z3 = z2;
        if (this.mSpeechService == null) {
            ExceptionCtrlManager.getInstance().throwException(new ClientNotInitException("ClientNotInit , mSpeechService == null"));
        } else {
            this.mSpeechService.holdVrSprite(this.mAppId, j, z, z3, vrSpriteInterruptedListener);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setVrSpriteModalState(long j, boolean z) throws ClientNotInitException {
        setVrSpriteModalState(j, z, false);
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setVrSpriteModalState(final long j, final boolean z, boolean z2) throws ClientNotInitException {
        LogUtils.d(TAG, "setVrSpriteModelState taskId = " + j + ", modalEnabled = " + z);
        if (j == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("taskId is invalid"));
            return;
        }
        if (!z && z2) {
            z2 = false;
            LogUtils.w(TAG, "set dimBehind to false when modal is set to false");
        }
        final boolean z3 = z2;
        if (this.mSpeechService == null) {
            ExceptionCtrlManager.getInstance().throwException(new ClientNotInitException("ClientNotInit , mSpeechService == null"));
        } else {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.59
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setVrSpriteModalState(SpeechClient.this.mAppId, j, z, z3);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void releaseVrSprite(final long j) {
        LogUtils.d(TAG, "releaseVrSprite taskId = " + j);
        if (j == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("taskId is invalid"));
        } else if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.60
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.releaseVrSprite(SpeechClient.this.mAppId, j);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "releaseVrSprite err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setVrHints(final long j, final List<String> list) {
        LogUtils.d(TAG, "setVrHints taskId = " + j);
        if (list == null || list.size() == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("hints cannot be null"));
            return;
        }
        if (j == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("taskId is invalid"));
        } else if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.61
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setVrHints(SpeechClient.this.mAppId, j, GsonUtils.toJson(list));
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setVrHints err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setVrSpriteState(final long j, final int i) {
        LogUtils.d(TAG, "setVrSpriteState taskId = " + j + " state = " + i);
        if (j == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("taskId is invalid"));
        } else if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.62
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.setVrSpriteState(SpeechClient.this.mAppId, j, i);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "setVrSpriteState err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void reportAction(final String str, final Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("action can not be null"));
        } else if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.63
                @Override // java.lang.Runnable
                public void run() {
                    String json = (map == null || map.size() <= 0) ? null : GsonUtils.toJson(map);
                    LogUtils.d(SpeechClient.TAG, "reportAction action = " + str + " extraJson = " + json);
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.reportAction(SpeechClient.this.mAppId, str, json);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "reportAction err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public SegmentResult wordSegment(SegmentText segmentText) throws RemoteException {
        if (segmentText == null) {
            return null;
        }
        if (this.mSpeechService != null) {
            try {
                return (SegmentResult) GsonUtils.fromJson(this.mSpeechService.wordSegment(GsonUtils.toJson(segmentText)), SegmentResult.class);
            } catch (Throwable th) {
                LogUtils.e(TAG, "wordSegment err", th);
            }
        } else {
            LogUtils.e(TAG, "wordSegment err mSpeechService == null");
        }
        return null;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void registerCarStatusListener(final ICarStatusListener iCarStatusListener) {
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.64
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.registerCarEventListener(SpeechClient.this.mAppId, iCarStatusListener);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "registerCarStatusListener err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void unregisterCarStatusListener() {
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.65
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.unregisterCarEventListener(SpeechClient.this.mAppId);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "unRegisterCarStatusListener err mSpeechService == null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncClientState() {
        this.mHasState = false;
        if (this.mSpeechService != null) {
            try {
                this.mSpeechService.syncClientState(this.mAppId, this.mState);
            } catch (RemoteException e) {
                LogUtils.e(TAG, "syncClientState RemoteException ", e);
            } catch (NullPointerException e2) {
                LogUtils.e(TAG, "NullPointerException ", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncClientState(long j) {
        this.mHandlerBinder.removeCallbacks(this.syncState);
        this.mHandlerBinder.postDelayed(this.syncState, j);
    }

    public IClientDispatcher getDispatcher() {
        return this.mDispatcher;
    }

    public void setSpeechService(ISpeechService iSpeechService) {
        this.mSpeechService = iSpeechService;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void startSTT(final long j, final STTParams sTTParams) throws RemoteException {
        LogUtils.d(TAG, "startSTT taskId = " + j);
        if (sTTParams == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("params cannot be null"));
            return;
        }
        if (sTTParams.sttListener == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("params.sttListener cannot be null"));
            return;
        }
        if (this.mSpeechService == null) {
            if (sTTParams.startCallback != null) {
                sTTParams.startCallback.onStartFailed(100, "clientSDK not init yet !!!");
            }
        } else if (this.mDynamicContainer.isStart()) {
            stopSTT(new OnStopCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.67
                @Override // com.tencent.wecarspeech.clientsdk.interfaces.OnStopCallback, com.tencent.wecarspeech.vframework.IStopCallback
                public void onStop() {
                    try {
                        SpeechClient.this.startSTTReal(j, sTTParams);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            });
        } else {
            startSTTReal(j, sTTParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSTTReal(long j, final STTParams sTTParams) throws RemoteException {
        String json = GsonUtils.toJson(getSessionParams(j, sTTParams));
        LogUtils.d(TAG, "startSTTReal sessionParams = " + json);
        this.mDynamicContainer.setSTTListener(sTTParams.sttListener);
        this.mDynamicContainer.setStart(true);
        this.mSpeechService.startSTT(json, new ISSTResult.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.68
            @Override // com.tencent.wecarspeech.vframework.ISSTResult
            public void onSTTResult(String str, boolean z) throws RemoteException {
                if (sTTParams.sttListener != null) {
                    sTTParams.sttListener.onSTTResult(str, z);
                }
            }
        }, new IStartResultCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.69
            @Override // com.tencent.wecarspeech.clientsdk.interfaces.IStartResultCallback, com.tencent.wecarspeech.vframework.IStartResultCallback
            public void onStartFailed(int i, String str) {
                if (sTTParams.startCallback != null) {
                    sTTParams.startCallback.onStartFailed(i, str);
                }
                SpeechClient.this.mDynamicContainer.setStart(false);
            }

            @Override // com.tencent.wecarspeech.clientsdk.interfaces.IStartResultCallback, com.tencent.wecarspeech.vframework.IStartResultCallback
            public void onStartSuccess() {
                if (sTTParams.startCallback != null) {
                    sTTParams.startCallback.onStartSuccess();
                }
            }
        });
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void stopSTT(final OnStopCallback onStopCallback) throws RemoteException {
        LogUtils.d(TAG, "stopSTT");
        if (onStopCallback == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("callback cannot be null"));
            return;
        }
        if (this.mSpeechService != null) {
            this.mSpeechService.stopSTT(this.mAppId, new OnStopCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.70
                @Override // com.tencent.wecarspeech.clientsdk.interfaces.OnStopCallback, com.tencent.wecarspeech.vframework.IStopCallback
                public void onStop() {
                    SpeechClient.this.mDynamicContainer.setStart(false);
                    SpeechClient.this.mDynamicContainer.setSTTListener(null);
                    onStopCallback.onStop();
                }
            });
            return;
        }
        this.mDynamicContainer.setStart(false);
        this.mDynamicContainer.setSTTListener(null);
        onStopCallback.onStop();
        LogUtils.e(TAG, "stopSTT err mSpeechService == null");
    }

    private SessionParams getSessionParams(long j, STTParams sTTParams) {
        SessionParams sessionParams = new SessionParams();
        sessionParams.mAppId = this.mAppId;
        sessionParams.mTaskId = j;
        sessionParams.mPlaySound = sTTParams.playSound;
        sessionParams.mSpeechSilTimeout = sTTParams.speechSilTimeout;
        sessionParams.mSpeechTimeout = sTTParams.speechTimeout;
        sessionParams.mVadEndSilTime = sTTParams.vadEndSilTimeout;
        sessionParams.mDisplayUI = false;
        sessionParams.mRequestVuiPolicy = true;
        return sessionParams;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.mAppId != null && this.mAppId.equals(((SpeechClient) obj).mAppId);
    }

    public int hashCode() {
        return 527 + (this.mAppId == null ? 0 : this.mAppId.hashCode());
    }

    public void setVFVersionCode(int i) {
        LogUtils.e(TAG, "setVFVersionCode = " + i);
        this.mVFVersionCode = i;
    }

    public int getVFVersionCode() {
        return this.mVFVersionCode;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public boolean getRecordStatus() {
        if (this.mSpeechService != null) {
            if (this.mSpeechService == null) {
                return true;
            }
            try {
                return this.mSpeechService.getRecordStatus();
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
                return true;
            } catch (NullPointerException e2) {
                LogUtils.e(TAG, "NullPointerException ", e2);
                return true;
            }
        }
        LogUtils.e(TAG, "err mSpeechService == null");
        return true;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public boolean applyRecordStatus() {
        if (this.mSpeechService != null) {
            if (this.mSpeechService == null) {
                return true;
            }
            try {
                return this.mSpeechService.applyRecordStatus();
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
                return true;
            } catch (NullPointerException e2) {
                LogUtils.e(TAG, "NullPointerException ", e2);
                return true;
            }
        }
        LogUtils.e(TAG, "err mSpeechService == null");
        return true;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public boolean releaseRecordStatus() {
        if (this.mSpeechService != null) {
            if (this.mSpeechService == null) {
                return true;
            }
            try {
                return this.mSpeechService.releaseRecordStatus();
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
                return true;
            } catch (NullPointerException e2) {
                LogUtils.e(TAG, "NullPointerException ", e2);
                return true;
            }
        }
        LogUtils.e(TAG, "err mSpeechService == null");
        return true;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    @Deprecated
    public String startAudioRecord(RecordParam recordParam, RecordCallback recordCallback) {
        if (recordParam == null) {
            LogUtils.e(TAG, "err recordParam == null");
        }
        if (recordCallback == null) {
            LogUtils.e(TAG, "err recordCallback==null");
        }
        if (this.mSpeechService != null) {
            try {
                if (this.mVFVersionCode < 312) {
                    return this.mSpeechService.startAudioRecord(recordParam, recordCallback);
                }
                return this.mSpeechService.startAudioRecordInner(this.mAppId, recordParam, recordCallback);
            } catch (RemoteException e) {
                e.printStackTrace();
                return null;
            }
        }
        LogUtils.e(TAG, "err mSpeechService == null");
        return null;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public StartRecordResult startAudioRecordSync(RecordSyncParam recordSyncParam, RecordCallback recordCallback) {
        if (recordSyncParam == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("recordParam cannot be null"));
            return null;
        }
        if (recordCallback == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("recordCallback cannot be null"));
            return null;
        }
        int vFVersionCode = getVFVersionCode();
        if (vFVersionCode < 312) {
            LogUtils.d(TAG, "startAudioRecordSync compatible  speechVerCode = " + vFVersionCode);
            String startAudioRecord = startAudioRecord(new RecordParam.Builder().setPCMPath(recordSyncParam.getPcmPath()).setCompleteCmd(recordSyncParam.getCompleteCmd()).setCancelCmd(recordSyncParam.getCancelCmd()).setAllowRecordInterrupted(recordSyncParam.getAllowRecordInterrupted()).setSilenceTimeout(recordSyncParam.getSilenceTimeout()).setVadEndTimeout(recordSyncParam.getVadEndTimeout()).build(), recordCallback);
            StartRecordResult.Builder builder = new StartRecordResult.Builder();
            if (!TextUtils.isEmpty(startAudioRecord)) {
                builder.setTaskId(startAudioRecord).setMsg("success").setRet(0);
            } else {
                builder.setTaskId("").setMsg("fail").setRet(-3);
            }
            return builder.build();
        }
        if (this.mSpeechService != null) {
            try {
                return this.mSpeechService.startAudioRecordSync(this.mAppId, recordSyncParam, recordCallback);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } else {
            LogUtils.e(TAG, "err mSpeechService == null");
        }
        return null;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void stopAudioRecord(final String str) {
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.71
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.stopAudioRecord(str);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "err mSpeechService == null");
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void cancelAudioRecord(final String str) {
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClient.72
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClient.this.mSpeechService != null) {
                        try {
                            SpeechClient.this.mSpeechService.cancelAudioRecord(str);
                        } catch (RemoteException e) {
                            LogUtils.e(SpeechClient.TAG, "RemoteException ", e);
                        } catch (NullPointerException e2) {
                            LogUtils.e(SpeechClient.TAG, "NullPointerException ", e2);
                        }
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "err mSpeechService == null");
        }
    }

    public long getClientType() {
        return this.mClientType;
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public void setHotContactList(HotWordType hotWordType, List<HotContact> list, IHotWordsCallback iHotWordsCallback) {
        if (list == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("hintSet cannot be null"));
            return;
        }
        if (hotWordType == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("type cannot be null"));
            return;
        }
        try {
            HotWordModel hotWordModel = new HotWordModel();
            hotWordModel.contactList = list;
            setHotWords(hotWordType, GsonUtils.toJson(hotWordModel), iHotWordsCallback);
        } catch (ConcurrentModificationException e) {
            LogUtils.e(TAG, "ConcurrentModificationException ", e);
        }
    }

    @Override // com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient
    public RecordConfig getRecordConfig() {
        if (this.mSpeechService != null) {
            try {
                String recordConfig = this.mSpeechService.getRecordConfig(this.mAppId);
                LogUtils.d(TAG, "recordConfigJson : " + recordConfig);
                return (RecordConfig) GsonUtils.fromJson(recordConfig, RecordConfig.class);
            } catch (RemoteException e) {
                LogUtils.e(TAG, "RemoteException ", e);
                return null;
            } catch (NullPointerException e2) {
                LogUtils.e(TAG, "NullPointerException ", e2);
                return null;
            }
        }
        LogUtils.e(TAG, "err mSpeechService == null");
        return null;
    }
}
