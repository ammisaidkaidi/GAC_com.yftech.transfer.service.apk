package com.tencent.vrinterface;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.vrcommon.app.LaunchParams;
import com.tencent.vrcommon.cloud.IConfigUpdaterInterface;
import com.tencent.vrcommon.semantic.LocationBean;
import com.tencent.vrinterface.ICarControl;
import com.tencent.vrinterface.ICustomDataCallback;
import com.tencent.vrinterface.IOnWakeupWordChangeListener;
import com.tencent.vrinterface.IRoleObserver;
import com.tencent.vrinterface.ISpeechServerInitCallback;
import com.tencent.vrinterface.IVFSettings;
import com.tencent.vrinterface.IpcAccountEventListener;
import com.tencent.vrinterface.IpcAccountListener;
import com.tencent.vrinterface.IpcActionResultListener;
import com.tencent.vrinterface.IpcAudioFocusCallback;
import com.tencent.vrinterface.IpcClientStateChangeListener;
import com.tencent.vrinterface.IpcDispatchListener;
import com.tencent.vrinterface.IpcDoaAgent;
import com.tencent.vrinterface.IpcMvwPreconditionManager;
import com.tencent.vrinterface.IpcSessionListener;
import com.tencent.vrinterface.IpcSpeechStateAgent;
import com.tencent.vrinterface.IpcSrPreconditionManager;
import com.tencent.vrinterface.IpcTelClient;
import com.tencent.vrinterface.IpcTextSemanticCallback;
import com.tencent.vrinterface.IpcTtsCallback;
import com.tencent.vrinterface.IpcVrSprite;
import com.tencent.wecarspeech.vframework.IArbitration;
import com.tencent.wecarspeech.vframework.INaviClientManager;
import com.tencent.wecarspeech.vframework.IPlayStateCallback;
import com.tencent.wecarspeech.vframework.IStartResultCallback;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IVrLogicService extends IInterface {
    boolean abandonRecordFocus(String str) throws RemoteException;

    void addRoleObserver(IRoleObserver iRoleObserver) throws RemoteException;

    String checkCustomWakeupWord(String str) throws RemoteException;

    void disableWakeup() throws RemoteException;

    boolean enableAisdkLog(boolean z) throws RemoteException;

    void enableDuplex(boolean z) throws RemoteException;

    void enablePartiallyWakeupWord(boolean z) throws RemoteException;

    void enableProcessResult(boolean z) throws RemoteException;

    void enableWakeup() throws RemoteException;

    long getActionTrackId() throws RemoteException;

    String getAisdkLibVersion() throws RemoteException;

    boolean getAllowRecordInterrupted() throws RemoteException;

    String getChannel() throws RemoteException;

    LocationBean getCurrentLocation() throws RemoteException;

    Bundle getCustomData(String str, Bundle bundle) throws RemoteException;

    String getCustomWakeWord() throws RemoteException;

    String getRole() throws RemoteException;

    String getSDKAudioFocus() throws RemoteException;

    void getSemanticByText(String str, String str2, String str3, IpcTextSemanticCallback ipcTextSemanticCallback) throws RemoteException;

    long getSessionIdByTaskId(long j) throws RemoteException;

    String getSoundEffect(String str) throws RemoteException;

    int getSpeechDataStatus() throws RemoteException;

    String getUserId() throws RemoteException;

    void getWeCarAccount(IpcAccountListener ipcAccountListener) throws RemoteException;

    String getWeCarId() throws RemoteException;

    boolean hasClientInState(long j) throws RemoteException;

    boolean hasRecordFocus(String str) throws RemoteException;

    void holdSession(long j) throws RemoteException;

    void initSpeechServer(ISpeechServerInitCallback iSpeechServerInitCallback) throws RemoteException;

    boolean isDoaEnable() throws RemoteException;

    boolean isDoaSupport() throws RemoteException;

    boolean isMediaPkgSDKAvailable(String str) throws RemoteException;

    boolean isModifiedPlatform() throws RemoteException;

    void notifySDKAudioFocusChange(String str, boolean z) throws RemoteException;

    void notifySDKAvailableMediaPkg(Map map) throws RemoteException;

    boolean onAction(String str, Map map) throws RemoteException;

    void onBackCarEvent(boolean z) throws RemoteException;

    void onPowerEvent(int i) throws RemoteException;

    void pauseTts(int i) throws RemoteException;

    int playRawAudio(int i, IPlayStateCallback iPlayStateCallback) throws RemoteException;

    int playTts(String str, int i, IPlayStateCallback iPlayStateCallback) throws RemoteException;

    void registerAccountEventListener(IpcAccountEventListener ipcAccountEventListener) throws RemoteException;

    void registerClientStateChangeListener(IpcClientStateChangeListener ipcClientStateChangeListener) throws RemoteException;

    void registerConfigUpdaterInterface(IConfigUpdaterInterface iConfigUpdaterInterface) throws RemoteException;

    void registerSessionListener(IpcSessionListener ipcSessionListener) throws RemoteException;

    void releaseSession(long j) throws RemoteException;

    void removeCustomWakeupWord() throws RemoteException;

    void requestAccountLogout(IpcActionResultListener ipcActionResultListener) throws RemoteException;

    void requestAccountQrCodeInfo(IpcActionResultListener ipcActionResultListener) throws RemoteException;

    boolean requestRecordFocus(String str) throws RemoteException;

    void resumeTts(int i) throws RemoteException;

    void sendSemantic(String str) throws RemoteException;

    void setActionActivityIdForSession(long j, String str) throws RemoteException;

    void setActionActivityIdForTask(long j, String str) throws RemoteException;

    void setActionCardId(long j, String str) throws RemoteException;

    void setActionLogEnabled(boolean z) throws RemoteException;

    void setAudioFocusManager(IpcAudioFocusCallback ipcAudioFocusCallback) throws RemoteException;

    void setCarControlImpl(ICarControl iCarControl) throws RemoteException;

    void setClearSessionDMFlag(boolean z) throws RemoteException;

    void setCommandTagMap(Map map) throws RemoteException;

    void setConfigParam(Map map, String str) throws RemoteException;

    void setCustomArbitration(IArbitration iArbitration) throws RemoteException;

    void setCustomDataCallback(ICustomDataCallback iCustomDataCallback) throws RemoteException;

    void setCustomWakeupWord(String str) throws RemoteException;

    void setDispatchListener(IpcDispatchListener ipcDispatchListener) throws RemoteException;

    void setDoaAgent(IpcDoaAgent ipcDoaAgent) throws RemoteException;

    void setMvwPreconditionManager(IpcMvwPreconditionManager ipcMvwPreconditionManager) throws RemoteException;

    void setNaviClientManager(INaviClientManager iNaviClientManager) throws RemoteException;

    void setRole(String str) throws RemoteException;

    void setSdkWakeupWord(List list) throws RemoteException;

    void setSpeechStateAgent(IpcSpeechStateAgent ipcSpeechStateAgent) throws RemoteException;

    void setSrPreconditionManager(IpcSrPreconditionManager ipcSrPreconditionManager) throws RemoteException;

    void setTelClient(IpcTelClient ipcTelClient) throws RemoteException;

    void setTtsStatusChangeLister(IpcTtsCallback ipcTtsCallback) throws RemoteException;

    void setVFSettingsImpl(IVFSettings iVFSettings) throws RemoteException;

    void setVrSprite(IpcVrSprite ipcVrSprite) throws RemoteException;

    void setWakeupEnabledWhenAsr(boolean z) throws RemoteException;

    void setWakeupWordChangeListener(IOnWakeupWordChangeListener iOnWakeupWordChangeListener) throws RemoteException;

    void startClosureSession(LaunchParams launchParams, IpcSessionListener ipcSessionListener) throws RemoteException;

    void startRecord() throws RemoteException;

    void startSoundEffect(boolean z) throws RemoteException;

    void startSr(LaunchParams launchParams, IStartResultCallback iStartResultCallback) throws RemoteException;

    void startSrByText(String str, LaunchParams launchParams, IStartResultCallback iStartResultCallback) throws RemoteException;

    void stopAllTts() throws RemoteException;

    void stopClosureSession() throws RemoteException;

    void stopRecord() throws RemoteException;

    void stopSoundEffect() throws RemoteException;

    void stopSr() throws RemoteException;

    void stopSrBySessionId(long j) throws RemoteException;

    void stopTts(int i) throws RemoteException;

    void switchEngineMode(boolean z) throws RemoteException;

    void unregisterAccountEventListener(IpcAccountEventListener ipcAccountEventListener) throws RemoteException;

    void unregisterSessionListener(IpcSessionListener ipcSessionListener) throws RemoteException;

    void writeDoaEnable(boolean z) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IVrLogicService {
        private static final String DESCRIPTOR = "com.tencent.vrinterface.IVrLogicService";
        static final int TRANSACTION_abandonRecordFocus = 60;
        static final int TRANSACTION_addRoleObserver = 1;
        static final int TRANSACTION_checkCustomWakeupWord = 55;
        static final int TRANSACTION_disableWakeup = 64;
        static final int TRANSACTION_enableAisdkLog = 79;
        static final int TRANSACTION_enableDuplex = 81;
        static final int TRANSACTION_enablePartiallyWakeupWord = 92;
        static final int TRANSACTION_enableProcessResult = 82;
        static final int TRANSACTION_enableWakeup = 63;
        static final int TRANSACTION_getActionTrackId = 23;
        static final int TRANSACTION_getAisdkLibVersion = 37;
        static final int TRANSACTION_getAllowRecordInterrupted = 62;
        static final int TRANSACTION_getChannel = 39;
        static final int TRANSACTION_getCurrentLocation = 36;
        static final int TRANSACTION_getCustomData = 93;
        static final int TRANSACTION_getCustomWakeWord = 54;
        static final int TRANSACTION_getRole = 3;
        static final int TRANSACTION_getSDKAudioFocus = 33;
        static final int TRANSACTION_getSemanticByText = 20;
        static final int TRANSACTION_getSessionIdByTaskId = 22;
        static final int TRANSACTION_getSoundEffect = 6;
        static final int TRANSACTION_getSpeechDataStatus = 18;
        static final int TRANSACTION_getUserId = 41;
        static final int TRANSACTION_getWeCarAccount = 42;
        static final int TRANSACTION_getWeCarId = 40;
        static final int TRANSACTION_hasClientInState = 71;
        static final int TRANSACTION_hasRecordFocus = 61;
        static final int TRANSACTION_holdSession = 69;
        static final int TRANSACTION_initSpeechServer = 13;
        static final int TRANSACTION_isDoaEnable = 24;
        static final int TRANSACTION_isDoaSupport = 26;
        static final int TRANSACTION_isMediaPkgSDKAvailable = 34;
        static final int TRANSACTION_isModifiedPlatform = 85;
        static final int TRANSACTION_notifySDKAudioFocusChange = 31;
        static final int TRANSACTION_notifySDKAvailableMediaPkg = 32;
        static final int TRANSACTION_onAction = 49;
        static final int TRANSACTION_onBackCarEvent = 73;
        static final int TRANSACTION_onPowerEvent = 72;
        static final int TRANSACTION_pauseTts = 77;
        static final int TRANSACTION_playRawAudio = 28;
        static final int TRANSACTION_playTts = 27;
        static final int TRANSACTION_registerAccountEventListener = 43;
        static final int TRANSACTION_registerClientStateChangeListener = 75;
        static final int TRANSACTION_registerConfigUpdaterInterface = 80;
        static final int TRANSACTION_registerSessionListener = 16;
        static final int TRANSACTION_releaseSession = 70;
        static final int TRANSACTION_removeCustomWakeupWord = 56;
        static final int TRANSACTION_requestAccountLogout = 90;
        static final int TRANSACTION_requestAccountQrCodeInfo = 89;
        static final int TRANSACTION_requestRecordFocus = 59;
        static final int TRANSACTION_resumeTts = 78;
        static final int TRANSACTION_sendSemantic = 91;
        static final int TRANSACTION_setActionActivityIdForSession = 47;
        static final int TRANSACTION_setActionActivityIdForTask = 46;
        static final int TRANSACTION_setActionCardId = 48;
        static final int TRANSACTION_setActionLogEnabled = 45;
        static final int TRANSACTION_setAudioFocusManager = 35;
        static final int TRANSACTION_setCarControlImpl = 50;
        static final int TRANSACTION_setClearSessionDMFlag = 19;
        static final int TRANSACTION_setCommandTagMap = 67;
        static final int TRANSACTION_setConfigParam = 76;
        static final int TRANSACTION_setCustomArbitration = 68;
        static final int TRANSACTION_setCustomDataCallback = 94;
        static final int TRANSACTION_setCustomWakeupWord = 53;
        static final int TRANSACTION_setDispatchListener = 14;
        static final int TRANSACTION_setDoaAgent = 65;
        static final int TRANSACTION_setMvwPreconditionManager = 12;
        static final int TRANSACTION_setNaviClientManager = 51;
        static final int TRANSACTION_setRole = 2;
        static final int TRANSACTION_setSdkWakeupWord = 52;
        static final int TRANSACTION_setSpeechStateAgent = 15;
        static final int TRANSACTION_setSrPreconditionManager = 11;
        static final int TRANSACTION_setTelClient = 66;
        static final int TRANSACTION_setTtsStatusChangeLister = 74;
        static final int TRANSACTION_setVFSettingsImpl = 38;
        static final int TRANSACTION_setVrSprite = 7;
        static final int TRANSACTION_setWakeupEnabledWhenAsr = 58;
        static final int TRANSACTION_setWakeupWordChangeListener = 57;
        static final int TRANSACTION_startClosureSession = 86;
        static final int TRANSACTION_startRecord = 83;
        static final int TRANSACTION_startSoundEffect = 4;
        static final int TRANSACTION_startSr = 8;
        static final int TRANSACTION_startSrByText = 88;
        static final int TRANSACTION_stopAllTts = 30;
        static final int TRANSACTION_stopClosureSession = 87;
        static final int TRANSACTION_stopRecord = 84;
        static final int TRANSACTION_stopSoundEffect = 5;
        static final int TRANSACTION_stopSr = 9;
        static final int TRANSACTION_stopSrBySessionId = 10;
        static final int TRANSACTION_stopTts = 29;
        static final int TRANSACTION_switchEngineMode = 21;
        static final int TRANSACTION_unregisterAccountEventListener = 44;
        static final int TRANSACTION_unregisterSessionListener = 17;
        static final int TRANSACTION_writeDoaEnable = 25;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVrLogicService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IVrLogicService)) {
                return (IVrLogicService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    addRoleObserver(IRoleObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRole(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String role = getRole();
                    parcel2.writeNoException();
                    parcel2.writeString(role);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSoundEffect(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSoundEffect();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String soundEffect = getSoundEffect(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(soundEffect);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVrSprite(IpcVrSprite.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSr(parcel.readInt() != 0 ? LaunchParams.CREATOR.createFromParcel(parcel) : null, IStartResultCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSr();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSrBySessionId(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSrPreconditionManager(IpcSrPreconditionManager.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMvwPreconditionManager(IpcMvwPreconditionManager.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    initSpeechServer(ISpeechServerInitCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDispatchListener(IpcDispatchListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSpeechStateAgent(IpcSpeechStateAgent.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSessionListener(IpcSessionListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSessionListener(IpcSessionListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int speechDataStatus = getSpeechDataStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(speechDataStatus);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    setClearSessionDMFlag(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    getSemanticByText(parcel.readString(), parcel.readString(), parcel.readString(), IpcTextSemanticCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    switchEngineMode(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    long sessionIdByTaskId = getSessionIdByTaskId(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeLong(sessionIdByTaskId);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    long actionTrackId = getActionTrackId();
                    parcel2.writeNoException();
                    parcel2.writeLong(actionTrackId);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isDoaEnable = isDoaEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(isDoaEnable ? 1 : 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    writeDoaEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isDoaSupport = isDoaSupport();
                    parcel2.writeNoException();
                    parcel2.writeInt(isDoaSupport ? 1 : 0);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    int playTts = playTts(parcel.readString(), parcel.readInt(), IPlayStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(playTts);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    int playRawAudio = playRawAudio(parcel.readInt(), IPlayStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(playRawAudio);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopTts(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopAllTts();
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifySDKAudioFocusChange(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifySDKAvailableMediaPkg(parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    String sDKAudioFocus = getSDKAudioFocus();
                    parcel2.writeNoException();
                    parcel2.writeString(sDKAudioFocus);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isMediaPkgSDKAvailable = isMediaPkgSDKAvailable(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isMediaPkgSDKAvailable ? 1 : 0);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAudioFocusManager(IpcAudioFocusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    LocationBean currentLocation = getCurrentLocation();
                    parcel2.writeNoException();
                    if (currentLocation != null) {
                        parcel2.writeInt(1);
                        currentLocation.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    String aisdkLibVersion = getAisdkLibVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(aisdkLibVersion);
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVFSettingsImpl(IVFSettings.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    String channel = getChannel();
                    parcel2.writeNoException();
                    parcel2.writeString(channel);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    String weCarId = getWeCarId();
                    parcel2.writeNoException();
                    parcel2.writeString(weCarId);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    String userId = getUserId();
                    parcel2.writeNoException();
                    parcel2.writeString(userId);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    getWeCarAccount(IpcAccountListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAccountEventListener(IpcAccountEventListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAccountEventListener(IpcAccountEventListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    setActionLogEnabled(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    setActionActivityIdForTask(parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    setActionActivityIdForSession(parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    setActionCardId(parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onAction = onAction(parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    parcel2.writeInt(onAction ? 1 : 0);
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCarControlImpl(ICarControl.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNaviClientManager(INaviClientManager.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSdkWakeupWord(parcel.readArrayList(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCustomWakeupWord(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    String customWakeWord = getCustomWakeWord();
                    parcel2.writeNoException();
                    parcel2.writeString(customWakeWord);
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    String checkCustomWakeupWord = checkCustomWakeupWord(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(checkCustomWakeupWord);
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeCustomWakeupWord();
                    parcel2.writeNoException();
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWakeupWordChangeListener(IOnWakeupWordChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWakeupEnabledWhenAsr(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean requestRecordFocus = requestRecordFocus(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(requestRecordFocus ? 1 : 0);
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean abandonRecordFocus = abandonRecordFocus(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(abandonRecordFocus ? 1 : 0);
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean hasRecordFocus = hasRecordFocus(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(hasRecordFocus ? 1 : 0);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean allowRecordInterrupted = getAllowRecordInterrupted();
                    parcel2.writeNoException();
                    parcel2.writeInt(allowRecordInterrupted ? 1 : 0);
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableWakeup();
                    parcel2.writeNoException();
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableWakeup();
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDoaAgent(IpcDoaAgent.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTelClient(IpcTelClient.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCommandTagMap(parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCustomArbitration(IArbitration.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    holdSession(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    releaseSession(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean hasClientInState = hasClientInState(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(hasClientInState ? 1 : 0);
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPowerEvent(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBackCarEvent(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTtsStatusChangeLister(IpcTtsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerClientStateChangeListener(IpcClientStateChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    setConfigParam(parcel.readHashMap(getClass().getClassLoader()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    pauseTts(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    resumeTts(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean enableAisdkLog = enableAisdkLog(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(enableAisdkLog ? 1 : 0);
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerConfigUpdaterInterface(IConfigUpdaterInterface.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableDuplex(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableProcessResult(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    startRecord();
                    parcel2.writeNoException();
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopRecord();
                    parcel2.writeNoException();
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isModifiedPlatform = isModifiedPlatform();
                    parcel2.writeNoException();
                    parcel2.writeInt(isModifiedPlatform ? 1 : 0);
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    startClosureSession(parcel.readInt() != 0 ? LaunchParams.CREATOR.createFromParcel(parcel) : null, IpcSessionListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopClosureSession();
                    parcel2.writeNoException();
                    return true;
                case 88:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSrByText(parcel.readString(), parcel.readInt() != 0 ? LaunchParams.CREATOR.createFromParcel(parcel) : null, IStartResultCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 89:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestAccountQrCodeInfo(IpcActionResultListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 90:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestAccountLogout(IpcActionResultListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 91:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendSemantic(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 92:
                    parcel.enforceInterface(DESCRIPTOR);
                    enablePartiallyWakeupWord(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 93:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle customData = getCustomData(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (customData != null) {
                        parcel2.writeInt(1);
                        customData.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 94:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCustomDataCallback(ICustomDataCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IVrLogicService {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void addRoleObserver(IRoleObserver iRoleObserver) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iRoleObserver != null ? iRoleObserver.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setRole(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public String getRole() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void startSoundEffect(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void stopSoundEffect() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public String getSoundEffect(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setVrSprite(IpcVrSprite ipcVrSprite) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcVrSprite != null ? ipcVrSprite.asBinder() : null);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void startSr(LaunchParams launchParams, IStartResultCallback iStartResultCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (launchParams != null) {
                        obtain.writeInt(1);
                        launchParams.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iStartResultCallback != null ? iStartResultCallback.asBinder() : null);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void stopSr() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void stopSrBySessionId(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setSrPreconditionManager(IpcSrPreconditionManager ipcSrPreconditionManager) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcSrPreconditionManager != null ? ipcSrPreconditionManager.asBinder() : null);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setMvwPreconditionManager(IpcMvwPreconditionManager ipcMvwPreconditionManager) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcMvwPreconditionManager != null ? ipcMvwPreconditionManager.asBinder() : null);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void initSpeechServer(ISpeechServerInitCallback iSpeechServerInitCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSpeechServerInitCallback != null ? iSpeechServerInitCallback.asBinder() : null);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setDispatchListener(IpcDispatchListener ipcDispatchListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcDispatchListener != null ? ipcDispatchListener.asBinder() : null);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setSpeechStateAgent(IpcSpeechStateAgent ipcSpeechStateAgent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcSpeechStateAgent != null ? ipcSpeechStateAgent.asBinder() : null);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void registerSessionListener(IpcSessionListener ipcSessionListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcSessionListener != null ? ipcSessionListener.asBinder() : null);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void unregisterSessionListener(IpcSessionListener ipcSessionListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcSessionListener != null ? ipcSessionListener.asBinder() : null);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public int getSpeechDataStatus() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setClearSessionDMFlag(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void getSemanticByText(String str, String str2, String str3, IpcTextSemanticCallback ipcTextSemanticCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(ipcTextSemanticCallback != null ? ipcTextSemanticCallback.asBinder() : null);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void switchEngineMode(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public long getSessionIdByTaskId(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public long getActionTrackId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean isDoaEnable() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void writeDoaEnable(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean isDoaSupport() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public int playTts(String str, int i, IPlayStateCallback iPlayStateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iPlayStateCallback != null ? iPlayStateCallback.asBinder() : null);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public int playRawAudio(int i, IPlayStateCallback iPlayStateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iPlayStateCallback != null ? iPlayStateCallback.asBinder() : null);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void stopTts(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void stopAllTts() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void notifySDKAudioFocusChange(String str, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void notifySDKAvailableMediaPkg(Map map) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeMap(map);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public String getSDKAudioFocus() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean isMediaPkgSDKAvailable(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setAudioFocusManager(IpcAudioFocusCallback ipcAudioFocusCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcAudioFocusCallback != null ? ipcAudioFocusCallback.asBinder() : null);
                    this.mRemote.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public LocationBean getCurrentLocation() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? LocationBean.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public String getAisdkLibVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setVFSettingsImpl(IVFSettings iVFSettings) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iVFSettings != null ? iVFSettings.asBinder() : null);
                    this.mRemote.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public String getChannel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public String getWeCarId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public String getUserId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void getWeCarAccount(IpcAccountListener ipcAccountListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcAccountListener != null ? ipcAccountListener.asBinder() : null);
                    this.mRemote.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void registerAccountEventListener(IpcAccountEventListener ipcAccountEventListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcAccountEventListener != null ? ipcAccountEventListener.asBinder() : null);
                    this.mRemote.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void unregisterAccountEventListener(IpcAccountEventListener ipcAccountEventListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcAccountEventListener != null ? ipcAccountEventListener.asBinder() : null);
                    this.mRemote.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setActionLogEnabled(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setActionActivityIdForTask(long j, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    this.mRemote.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setActionActivityIdForSession(long j, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    this.mRemote.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setActionCardId(long j, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    this.mRemote.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean onAction(String str, Map map) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeMap(map);
                    this.mRemote.transact(49, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setCarControlImpl(ICarControl iCarControl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iCarControl != null ? iCarControl.asBinder() : null);
                    this.mRemote.transact(50, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setNaviClientManager(INaviClientManager iNaviClientManager) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iNaviClientManager != null ? iNaviClientManager.asBinder() : null);
                    this.mRemote.transact(51, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setSdkWakeupWord(List list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeList(list);
                    this.mRemote.transact(52, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setCustomWakeupWord(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(53, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public String getCustomWakeWord() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(54, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public String checkCustomWakeupWord(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(55, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void removeCustomWakeupWord() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(56, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setWakeupWordChangeListener(IOnWakeupWordChangeListener iOnWakeupWordChangeListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iOnWakeupWordChangeListener != null ? iOnWakeupWordChangeListener.asBinder() : null);
                    this.mRemote.transact(57, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setWakeupEnabledWhenAsr(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(58, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean requestRecordFocus(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(59, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean abandonRecordFocus(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(60, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean hasRecordFocus(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(61, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean getAllowRecordInterrupted() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(62, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void enableWakeup() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(63, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void disableWakeup() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(64, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setDoaAgent(IpcDoaAgent ipcDoaAgent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcDoaAgent != null ? ipcDoaAgent.asBinder() : null);
                    this.mRemote.transact(65, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setTelClient(IpcTelClient ipcTelClient) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcTelClient != null ? ipcTelClient.asBinder() : null);
                    this.mRemote.transact(66, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setCommandTagMap(Map map) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeMap(map);
                    this.mRemote.transact(67, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setCustomArbitration(IArbitration iArbitration) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iArbitration != null ? iArbitration.asBinder() : null);
                    this.mRemote.transact(68, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void holdSession(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(69, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void releaseSession(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(70, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean hasClientInState(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(71, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void onPowerEvent(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(72, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void onBackCarEvent(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(73, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setTtsStatusChangeLister(IpcTtsCallback ipcTtsCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcTtsCallback != null ? ipcTtsCallback.asBinder() : null);
                    this.mRemote.transact(74, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void registerClientStateChangeListener(IpcClientStateChangeListener ipcClientStateChangeListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcClientStateChangeListener != null ? ipcClientStateChangeListener.asBinder() : null);
                    this.mRemote.transact(75, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setConfigParam(Map map, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeMap(map);
                    obtain.writeString(str);
                    this.mRemote.transact(76, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void pauseTts(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(77, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void resumeTts(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(78, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean enableAisdkLog(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(79, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void registerConfigUpdaterInterface(IConfigUpdaterInterface iConfigUpdaterInterface) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iConfigUpdaterInterface != null ? iConfigUpdaterInterface.asBinder() : null);
                    this.mRemote.transact(80, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void enableDuplex(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(81, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void enableProcessResult(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(82, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void startRecord() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(83, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void stopRecord() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(84, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public boolean isModifiedPlatform() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(85, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void startClosureSession(LaunchParams launchParams, IpcSessionListener ipcSessionListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (launchParams != null) {
                        obtain.writeInt(1);
                        launchParams.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(ipcSessionListener != null ? ipcSessionListener.asBinder() : null);
                    this.mRemote.transact(86, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void stopClosureSession() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(87, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void startSrByText(String str, LaunchParams launchParams, IStartResultCallback iStartResultCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (launchParams != null) {
                        obtain.writeInt(1);
                        launchParams.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iStartResultCallback != null ? iStartResultCallback.asBinder() : null);
                    this.mRemote.transact(88, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void requestAccountQrCodeInfo(IpcActionResultListener ipcActionResultListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcActionResultListener != null ? ipcActionResultListener.asBinder() : null);
                    this.mRemote.transact(89, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void requestAccountLogout(IpcActionResultListener ipcActionResultListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(ipcActionResultListener != null ? ipcActionResultListener.asBinder() : null);
                    this.mRemote.transact(90, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void sendSemantic(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(91, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void enablePartiallyWakeupWord(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(92, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public Bundle getCustomData(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(93, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IVrLogicService
            public void setCustomDataCallback(ICustomDataCallback iCustomDataCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iCustomDataCallback != null ? iCustomDataCallback.asBinder() : null);
                    this.mRemote.transact(94, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
