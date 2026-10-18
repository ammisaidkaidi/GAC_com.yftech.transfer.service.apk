package com.tencent.wecarspeech.vframework;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.wecarspeech.vframework.IAudioRecordCallback;
import com.tencent.wecarspeech.vframework.ICarEventListener;
import com.tencent.wecarspeech.vframework.IClientVerifyResult;
import com.tencent.wecarspeech.vframework.IDuplexSSrCallback;
import com.tencent.wecarspeech.vframework.IDuplexSTrvCallback;
import com.tencent.wecarspeech.vframework.IHotWordsCallback;
import com.tencent.wecarspeech.vframework.IPlayStateCallback;
import com.tencent.wecarspeech.vframework.IRecordCallback;
import com.tencent.wecarspeech.vframework.ISREventCallback;
import com.tencent.wecarspeech.vframework.ISSRCallback;
import com.tencent.wecarspeech.vframework.ISSTResult;
import com.tencent.wecarspeech.vframework.ISTrvCallback;
import com.tencent.wecarspeech.vframework.ISessionStateListener;
import com.tencent.wecarspeech.vframework.ISpeechActiveListener;
import com.tencent.wecarspeech.vframework.ISpeechStateCallback;
import com.tencent.wecarspeech.vframework.ISpriteInterruptedListener;
import com.tencent.wecarspeech.vframework.IStartResultCallback;
import com.tencent.wecarspeech.vframework.IStopCallback;
import com.tencent.wecarspeech.vframework.IWakeupCallback;
import com.tencent.wecarspeech.vframework.IWakeupInterceptor;
import com.tencent.wecarspeech.vframework.IWeCarCallback;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ISpeechService extends IInterface {
    long activateVrSprite(String str, boolean z, boolean z2, ISpriteInterruptedListener iSpriteInterruptedListener) throws RemoteException;

    void appendRecordData(String str) throws RemoteException;

    boolean applyRecordStatus() throws RemoteException;

    void callMethod(String str, int i, String str2, IWeCarCallback iWeCarCallback) throws RemoteException;

    void cancelAudioRecord(String str) throws RemoteException;

    void decTryAudioWeight(String str, String str2, boolean z, String str3) throws RemoteException;

    long getClientState(String str) throws RemoteException;

    String getRecordConfig(String str) throws RemoteException;

    boolean getRecordStatus() throws RemoteException;

    String getTryAudio(String str, String str2, String str3, boolean z) throws RemoteException;

    String getTryAudioByTouch(String str, String str2, String str3, String str4) throws RemoteException;

    String getVrMetaData(String str) throws RemoteException;

    void holdTask(String str, long j, boolean z, ISessionStateListener iSessionStateListener) throws RemoteException;

    void holdVrSprite(String str, long j, boolean z, boolean z2, ISpriteInterruptedListener iSpriteInterruptedListener) throws RemoteException;

    boolean isInWakeupSRMap(String str) throws RemoteException;

    int playAudio(long j, String str, int i, IPlayStateCallback iPlayStateCallback) throws RemoteException;

    int playTTS(long j, String str, int i, IPlayStateCallback iPlayStateCallback) throws RemoteException;

    void registSpeechStateCallback(ISpeechStateCallback iSpeechStateCallback) throws RemoteException;

    void registerAppDomain(String str, String str2) throws RemoteException;

    void registerAppSkill(String str, String str2, String str3) throws RemoteException;

    void registerAppWakeup(String str, String str2) throws RemoteException;

    void registerAppWakeupEvent(String str, String str2) throws RemoteException;

    void registerCarEventListener(String str, ICarEventListener iCarEventListener) throws RemoteException;

    void registerClient(String str, String str2, IWeCarCallback iWeCarCallback) throws RemoteException;

    void registerDuplexSSRCallback(String str, IDuplexSSrCallback iDuplexSSrCallback) throws RemoteException;

    void registerDuplexSTrvCallback(String str, IDuplexSTrvCallback iDuplexSTrvCallback) throws RemoteException;

    void registerSREventCallback(String str, ISREventCallback iSREventCallback) throws RemoteException;

    void registerSSRCallback(String str, ISSRCallback iSSRCallback) throws RemoteException;

    void registerSTTCallback(String str, ISSRCallback iSSRCallback) throws RemoteException;

    void registerSTrvCallback(String str, ISTrvCallback iSTrvCallback) throws RemoteException;

    void registerSceneWakeup(String str, String str2) throws RemoteException;

    void registerSceneWakeupEvent(String str, String str2, String str3) throws RemoteException;

    void registerSceneWakeupEventSet(String str, String str2, String str3) throws RemoteException;

    void registerSubSceneWakeup(String str, String str2) throws RemoteException;

    void registerSystemDomainSet(String str, String str2) throws RemoteException;

    void registerSystemWakeUpEvent(String str, String str2) throws RemoteException;

    void registerWakeupCallback(String str, IWakeupCallback iWakeupCallback) throws RemoteException;

    void registerWakeupSceneToSystemVr(String str, String str2) throws RemoteException;

    boolean releaseRecordStatus() throws RemoteException;

    void releaseTask(String str, long j) throws RemoteException;

    void releaseVrSprite(String str, long j) throws RemoteException;

    void removeSpeechActiveListener(ISpeechActiveListener iSpeechActiveListener) throws RemoteException;

    boolean reportAction(String str, String str2, String str3) throws RemoteException;

    void resetState(String str) throws RemoteException;

    void setAppName(String str, String str2) throws RemoteException;

    void setAsrContext(String str, String str2) throws RemoteException;

    void setAudioRecordCallback(IAudioRecordCallback iAudioRecordCallback) throws RemoteException;

    void setClientSdkVersion(String str, String str2) throws RemoteException;

    void setClientType(String str, long j) throws RemoteException;

    void setCurrentMiniProgramName(String str, String str2) throws RemoteException;

    void setHelpDescription(String str, String str2) throws RemoteException;

    void setHotWordWithCallBack(String str, int i, String str2, IHotWordsCallback iHotWordsCallback) throws RemoteException;

    void setHotWords(String str, int i, String str2) throws RemoteException;

    void setMiniProgramList(String str, String str2) throws RemoteException;

    void setPackageName(String str, String str2) throws RemoteException;

    void setRecordOnly(boolean z) throws RemoteException;

    void setSemanticContext(String str) throws RemoteException;

    void setSemanticContextNew(String str, String str2) throws RemoteException;

    void setSpeechActiveListener(ISpeechActiveListener iSpeechActiveListener) throws RemoteException;

    void setSpeechState(int i, int i2) throws RemoteException;

    void setTaskDispatched(long j) throws RemoteException;

    void setTryBeforeWakeup(String str, String str2) throws RemoteException;

    void setTryHint(String str, String str2) throws RemoteException;

    void setUSBStatus(boolean z) throws RemoteException;

    void setUseCustomRecorder(boolean z) throws RemoteException;

    void setVerifyCallback(String str, String str2, String str3, String str4, IClientVerifyResult iClientVerifyResult) throws RemoteException;

    void setVrHints(String str, long j, String str2) throws RemoteException;

    void setVrSpriteModalState(String str, long j, boolean z, boolean z2) throws RemoteException;

    void setVrSpriteState(String str, long j, int i) throws RemoteException;

    void setWakeupInterceptor(String str, IWakeupInterceptor iWakeupInterceptor) throws RemoteException;

    String startAudioRecord(RecordParam recordParam, IRecordCallback iRecordCallback) throws RemoteException;

    String startAudioRecordInner(String str, RecordParam recordParam, IRecordCallback iRecordCallback) throws RemoteException;

    StartRecordResult startAudioRecordSync(String str, RecordSyncParam recordSyncParam, IRecordCallback iRecordCallback) throws RemoteException;

    void startSR(String str, IPlayStateCallback iPlayStateCallback, IStartResultCallback iStartResultCallback) throws RemoteException;

    void startSTT(String str, ISSTResult iSSTResult, IStartResultCallback iStartResultCallback) throws RemoteException;

    void startTRV(String str, IPlayStateCallback iPlayStateCallback, IStartResultCallback iStartResultCallback) throws RemoteException;

    void stopAllAudio() throws RemoteException;

    void stopAllTTS() throws RemoteException;

    void stopAudio(int i) throws RemoteException;

    void stopAudioRecord(String str) throws RemoteException;

    void stopSR(String str, IStopCallback iStopCallback) throws RemoteException;

    void stopSTT(String str, IStopCallback iStopCallback) throws RemoteException;

    void stopTRV(String str, IStopCallback iStopCallback) throws RemoteException;

    void stopTTS(int i) throws RemoteException;

    void syncClientState(String str, long j) throws RemoteException;

    void unregistSpeechStateCallback(ISpeechStateCallback iSpeechStateCallback) throws RemoteException;

    void unregisterAllSubWakeupScene(String str) throws RemoteException;

    void unregisterAppDomain(String str, String str2) throws RemoteException;

    void unregisterAppSkill(String str, String str2) throws RemoteException;

    void unregisterAppWakeupEvent(String str, String str2) throws RemoteException;

    void unregisterCarEventListener(String str) throws RemoteException;

    void unregisterSceneWakeup(String str) throws RemoteException;

    void unregisterSceneWakeupEvent(String str, String str2, String str3) throws RemoteException;

    void unregisterSceneWakeupEventSet(String str, String str2, String str3) throws RemoteException;

    void unregisterSubSceneWakeup(String str, String str2) throws RemoteException;

    boolean verifyAppId(String str, String str2, String str3, String str4) throws RemoteException;

    String wordSegment(String str) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements ISpeechService {
        private static final String DESCRIPTOR = "com.tencent.wecarspeech.vframework.ISpeechService";
        static final int TRANSACTION_activateVrSprite = 57;
        static final int TRANSACTION_appendRecordData = 44;
        static final int TRANSACTION_applyRecordStatus = 74;
        static final int TRANSACTION_callMethod = 1;
        static final int TRANSACTION_cancelAudioRecord = 78;
        static final int TRANSACTION_decTryAudioWeight = 68;
        static final int TRANSACTION_getClientState = 82;
        static final int TRANSACTION_getRecordConfig = 96;
        static final int TRANSACTION_getRecordStatus = 73;
        static final int TRANSACTION_getTryAudio = 66;
        static final int TRANSACTION_getTryAudioByTouch = 67;
        static final int TRANSACTION_getVrMetaData = 71;
        static final int TRANSACTION_holdTask = 27;
        static final int TRANSACTION_holdVrSprite = 46;
        static final int TRANSACTION_isInWakeupSRMap = 45;
        static final int TRANSACTION_playAudio = 30;
        static final int TRANSACTION_playTTS = 33;
        static final int TRANSACTION_registSpeechStateCallback = 63;
        static final int TRANSACTION_registerAppDomain = 7;
        static final int TRANSACTION_registerAppSkill = 9;
        static final int TRANSACTION_registerAppWakeup = 11;
        static final int TRANSACTION_registerAppWakeupEvent = 12;
        static final int TRANSACTION_registerCarEventListener = 54;
        static final int TRANSACTION_registerClient = 2;
        static final int TRANSACTION_registerDuplexSSRCallback = 69;
        static final int TRANSACTION_registerDuplexSTrvCallback = 70;
        static final int TRANSACTION_registerSREventCallback = 3;
        static final int TRANSACTION_registerSSRCallback = 5;
        static final int TRANSACTION_registerSTTCallback = 60;
        static final int TRANSACTION_registerSTrvCallback = 6;
        static final int TRANSACTION_registerSceneWakeup = 14;
        static final int TRANSACTION_registerSceneWakeupEvent = 19;
        static final int TRANSACTION_registerSceneWakeupEventSet = 21;
        static final int TRANSACTION_registerSubSceneWakeup = 16;
        static final int TRANSACTION_registerSystemDomainSet = 89;
        static final int TRANSACTION_registerSystemWakeUpEvent = 90;
        static final int TRANSACTION_registerWakeupCallback = 4;
        static final int TRANSACTION_registerWakeupSceneToSystemVr = 94;
        static final int TRANSACTION_releaseRecordStatus = 75;
        static final int TRANSACTION_releaseTask = 28;
        static final int TRANSACTION_releaseVrSprite = 48;
        static final int TRANSACTION_removeSpeechActiveListener = 37;
        static final int TRANSACTION_reportAction = 52;
        static final int TRANSACTION_resetState = 91;
        static final int TRANSACTION_setAppName = 56;
        static final int TRANSACTION_setAsrContext = 88;
        static final int TRANSACTION_setAudioRecordCallback = 61;
        static final int TRANSACTION_setClientSdkVersion = 84;
        static final int TRANSACTION_setClientType = 92;
        static final int TRANSACTION_setCurrentMiniProgramName = 85;
        static final int TRANSACTION_setHelpDescription = 40;
        static final int TRANSACTION_setHotWordWithCallBack = 95;
        static final int TRANSACTION_setHotWords = 39;
        static final int TRANSACTION_setMiniProgramList = 86;
        static final int TRANSACTION_setPackageName = 80;
        static final int TRANSACTION_setRecordOnly = 62;
        static final int TRANSACTION_setSemanticContext = 79;
        static final int TRANSACTION_setSemanticContextNew = 87;
        static final int TRANSACTION_setSpeechActiveListener = 36;
        static final int TRANSACTION_setSpeechState = 65;
        static final int TRANSACTION_setTaskDispatched = 42;
        static final int TRANSACTION_setTryBeforeWakeup = 81;
        static final int TRANSACTION_setTryHint = 38;
        static final int TRANSACTION_setUSBStatus = 72;
        static final int TRANSACTION_setUseCustomRecorder = 43;
        static final int TRANSACTION_setVerifyCallback = 83;
        static final int TRANSACTION_setVrHints = 49;
        static final int TRANSACTION_setVrSpriteModalState = 47;
        static final int TRANSACTION_setVrSpriteState = 50;
        static final int TRANSACTION_setWakeupInterceptor = 29;
        static final int TRANSACTION_startAudioRecord = 76;
        static final int TRANSACTION_startAudioRecordInner = 97;
        static final int TRANSACTION_startAudioRecordSync = 93;
        static final int TRANSACTION_startSR = 23;
        static final int TRANSACTION_startSTT = 58;
        static final int TRANSACTION_startTRV = 25;
        static final int TRANSACTION_stopAllAudio = 32;
        static final int TRANSACTION_stopAllTTS = 35;
        static final int TRANSACTION_stopAudio = 31;
        static final int TRANSACTION_stopAudioRecord = 77;
        static final int TRANSACTION_stopSR = 24;
        static final int TRANSACTION_stopSTT = 59;
        static final int TRANSACTION_stopTRV = 26;
        static final int TRANSACTION_stopTTS = 34;
        static final int TRANSACTION_syncClientState = 41;
        static final int TRANSACTION_unregistSpeechStateCallback = 64;
        static final int TRANSACTION_unregisterAllSubWakeupScene = 18;
        static final int TRANSACTION_unregisterAppDomain = 8;
        static final int TRANSACTION_unregisterAppSkill = 10;
        static final int TRANSACTION_unregisterAppWakeupEvent = 13;
        static final int TRANSACTION_unregisterCarEventListener = 55;
        static final int TRANSACTION_unregisterSceneWakeup = 15;
        static final int TRANSACTION_unregisterSceneWakeupEvent = 20;
        static final int TRANSACTION_unregisterSceneWakeupEventSet = 22;
        static final int TRANSACTION_unregisterSubSceneWakeup = 17;
        static final int TRANSACTION_verifyAppId = 51;
        static final int TRANSACTION_wordSegment = 53;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISpeechService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISpeechService)) {
                return (ISpeechService) queryLocalInterface;
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
                    callMethod(parcel.readString(), parcel.readInt(), parcel.readString(), IWeCarCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerClient(parcel.readString(), parcel.readString(), IWeCarCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSREventCallback(parcel.readString(), ISREventCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerWakeupCallback(parcel.readString(), IWakeupCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSSRCallback(parcel.readString(), ISSRCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSTrvCallback(parcel.readString(), ISTrvCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAppDomain(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAppDomain(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAppSkill(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAppSkill(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAppWakeup(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAppWakeupEvent(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAppWakeupEvent(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSceneWakeup(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSceneWakeup(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSubSceneWakeup(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSubSceneWakeup(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAllSubWakeupScene(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSceneWakeupEvent(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSceneWakeupEvent(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSceneWakeupEventSet(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSceneWakeupEventSet(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSR(parcel.readString(), IPlayStateCallback.Stub.asInterface(parcel.readStrongBinder()), IStartResultCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSR(parcel.readString(), IStopCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    startTRV(parcel.readString(), IPlayStateCallback.Stub.asInterface(parcel.readStrongBinder()), IStartResultCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopTRV(parcel.readString(), IStopCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    holdTask(parcel.readString(), parcel.readLong(), parcel.readInt() != 0, ISessionStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    releaseTask(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWakeupInterceptor(parcel.readString(), IWakeupInterceptor.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    int playAudio = playAudio(parcel.readLong(), parcel.readString(), parcel.readInt(), IPlayStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(playAudio);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopAudio(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopAllAudio();
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    int playTTS = playTTS(parcel.readLong(), parcel.readString(), parcel.readInt(), IPlayStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(playTTS);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopTTS(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopAllTTS();
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSpeechActiveListener(ISpeechActiveListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeSpeechActiveListener(ISpeechActiveListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTryHint(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    setHotWords(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    setHelpDescription(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    syncClientState(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTaskDispatched(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUseCustomRecorder(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    appendRecordData(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isInWakeupSRMap = isInWakeupSRMap(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isInWakeupSRMap ? 1 : 0);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    holdVrSprite(parcel.readString(), parcel.readLong(), parcel.readInt() != 0, parcel.readInt() != 0, ISpriteInterruptedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVrSpriteModalState(parcel.readString(), parcel.readLong(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    releaseVrSprite(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVrHints(parcel.readString(), parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVrSpriteState(parcel.readString(), parcel.readLong(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean verifyAppId = verifyAppId(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(verifyAppId ? 1 : 0);
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean reportAction = reportAction(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(reportAction ? 1 : 0);
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    String wordSegment = wordSegment(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(wordSegment);
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarEventListener(parcel.readString(), ICarEventListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarEventListener(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAppName(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    long activateVrSprite = activateVrSprite(parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, ISpriteInterruptedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeLong(activateVrSprite);
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSTT(parcel.readString(), ISSTResult.Stub.asInterface(parcel.readStrongBinder()), IStartResultCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSTT(parcel.readString(), IStopCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSTTCallback(parcel.readString(), ISSRCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAudioRecordCallback(IAudioRecordCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRecordOnly(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    registSpeechStateCallback(ISpeechStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregistSpeechStateCallback(ISpeechStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSpeechState(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    String tryAudio = getTryAudio(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeString(tryAudio);
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    String tryAudioByTouch = getTryAudioByTouch(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(tryAudioByTouch);
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    decTryAudioWeight(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDuplexSSRCallback(parcel.readString(), IDuplexSSrCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDuplexSTrvCallback(parcel.readString(), IDuplexSTrvCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    String vrMetaData = getVrMetaData(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(vrMetaData);
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUSBStatus(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean recordStatus = getRecordStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(recordStatus ? 1 : 0);
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean applyRecordStatus = applyRecordStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(applyRecordStatus ? 1 : 0);
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean releaseRecordStatus = releaseRecordStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(releaseRecordStatus ? 1 : 0);
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    String startAudioRecord = startAudioRecord(parcel.readInt() != 0 ? RecordParam.CREATOR.createFromParcel(parcel) : null, IRecordCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeString(startAudioRecord);
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopAudioRecord(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelAudioRecord(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSemanticContext(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPackageName(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTryBeforeWakeup(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    long clientState = getClientState(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeLong(clientState);
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVerifyCallback(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), IClientVerifyResult.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    setClientSdkVersion(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCurrentMiniProgramName(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMiniProgramList(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSemanticContextNew(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 88:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAsrContext(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 89:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSystemDomainSet(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 90:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSystemWakeUpEvent(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 91:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetState(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 92:
                    parcel.enforceInterface(DESCRIPTOR);
                    setClientType(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 93:
                    parcel.enforceInterface(DESCRIPTOR);
                    StartRecordResult startAudioRecordSync = startAudioRecordSync(parcel.readString(), parcel.readInt() != 0 ? RecordSyncParam.CREATOR.createFromParcel(parcel) : null, IRecordCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (startAudioRecordSync != null) {
                        parcel2.writeInt(1);
                        startAudioRecordSync.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 94:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerWakeupSceneToSystemVr(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 95:
                    parcel.enforceInterface(DESCRIPTOR);
                    setHotWordWithCallBack(parcel.readString(), parcel.readInt(), parcel.readString(), IHotWordsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 96:
                    parcel.enforceInterface(DESCRIPTOR);
                    String recordConfig = getRecordConfig(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(recordConfig);
                    return true;
                case 97:
                    parcel.enforceInterface(DESCRIPTOR);
                    String startAudioRecordInner = startAudioRecordInner(parcel.readString(), parcel.readInt() != 0 ? RecordParam.CREATOR.createFromParcel(parcel) : null, IRecordCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeString(startAudioRecordInner);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements ISpeechService {
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

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void callMethod(String str, int i, String str2, IWeCarCallback iWeCarCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iWeCarCallback != null ? iWeCarCallback.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerClient(String str, String str2, IWeCarCallback iWeCarCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iWeCarCallback != null ? iWeCarCallback.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSREventCallback(String str, ISREventCallback iSREventCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iSREventCallback != null ? iSREventCallback.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerWakeupCallback(String str, IWakeupCallback iWakeupCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iWakeupCallback != null ? iWakeupCallback.asBinder() : null);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSSRCallback(String str, ISSRCallback iSSRCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iSSRCallback != null ? iSSRCallback.asBinder() : null);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSTrvCallback(String str, ISTrvCallback iSTrvCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iSTrvCallback != null ? iSTrvCallback.asBinder() : null);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerAppDomain(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregisterAppDomain(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerAppSkill(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregisterAppSkill(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerAppWakeup(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerAppWakeupEvent(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregisterAppWakeupEvent(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSceneWakeup(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregisterSceneWakeup(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSubSceneWakeup(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregisterSubSceneWakeup(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregisterAllSubWakeupScene(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSceneWakeupEvent(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregisterSceneWakeupEvent(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSceneWakeupEventSet(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregisterSceneWakeupEventSet(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void startSR(String str, IPlayStateCallback iPlayStateCallback, IStartResultCallback iStartResultCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iPlayStateCallback != null ? iPlayStateCallback.asBinder() : null);
                    obtain.writeStrongBinder(iStartResultCallback != null ? iStartResultCallback.asBinder() : null);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void stopSR(String str, IStopCallback iStopCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iStopCallback != null ? iStopCallback.asBinder() : null);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void startTRV(String str, IPlayStateCallback iPlayStateCallback, IStartResultCallback iStartResultCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iPlayStateCallback != null ? iPlayStateCallback.asBinder() : null);
                    obtain.writeStrongBinder(iStartResultCallback != null ? iStartResultCallback.asBinder() : null);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void stopTRV(String str, IStopCallback iStopCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iStopCallback != null ? iStopCallback.asBinder() : null);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void holdTask(String str, long j, boolean z, ISessionStateListener iSessionStateListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeStrongBinder(iSessionStateListener != null ? iSessionStateListener.asBinder() : null);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void releaseTask(String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setWakeupInterceptor(String str, IWakeupInterceptor iWakeupInterceptor) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iWakeupInterceptor != null ? iWakeupInterceptor.asBinder() : null);
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public int playAudio(long j, String str, int i, IPlayStateCallback iPlayStateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iPlayStateCallback != null ? iPlayStateCallback.asBinder() : null);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void stopAudio(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void stopAllAudio() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public int playTTS(long j, String str, int i, IPlayStateCallback iPlayStateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iPlayStateCallback != null ? iPlayStateCallback.asBinder() : null);
                    this.mRemote.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void stopTTS(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void stopAllTTS() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setSpeechActiveListener(ISpeechActiveListener iSpeechActiveListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSpeechActiveListener != null ? iSpeechActiveListener.asBinder() : null);
                    this.mRemote.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void removeSpeechActiveListener(ISpeechActiveListener iSpeechActiveListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSpeechActiveListener != null ? iSpeechActiveListener.asBinder() : null);
                    this.mRemote.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setTryHint(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setHotWords(String str, int i, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    this.mRemote.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setHelpDescription(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void syncClientState(String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.mRemote.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setTaskDispatched(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setUseCustomRecorder(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void appendRecordData(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public boolean isInWakeupSRMap(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void holdVrSprite(String str, long j, boolean z, boolean z2, ISpriteInterruptedListener iSpriteInterruptedListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    obtain.writeStrongBinder(iSpriteInterruptedListener != null ? iSpriteInterruptedListener.asBinder() : null);
                    this.mRemote.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setVrSpriteModalState(String str, long j, boolean z, boolean z2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void releaseVrSprite(String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.mRemote.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setVrHints(String str, long j, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    obtain.writeString(str2);
                    this.mRemote.transact(49, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setVrSpriteState(String str, long j, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    this.mRemote.transact(50, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public boolean verifyAppId(String str, String str2, String str3, String str4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.mRemote.transact(51, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public boolean reportAction(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(52, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public String wordSegment(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(53, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerCarEventListener(String str, ICarEventListener iCarEventListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iCarEventListener != null ? iCarEventListener.asBinder() : null);
                    this.mRemote.transact(54, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregisterCarEventListener(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(55, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setAppName(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(56, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public long activateVrSprite(String str, boolean z, boolean z2, ISpriteInterruptedListener iSpriteInterruptedListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    obtain.writeStrongBinder(iSpriteInterruptedListener != null ? iSpriteInterruptedListener.asBinder() : null);
                    this.mRemote.transact(57, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void startSTT(String str, ISSTResult iSSTResult, IStartResultCallback iStartResultCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iSSTResult != null ? iSSTResult.asBinder() : null);
                    obtain.writeStrongBinder(iStartResultCallback != null ? iStartResultCallback.asBinder() : null);
                    this.mRemote.transact(58, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void stopSTT(String str, IStopCallback iStopCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iStopCallback != null ? iStopCallback.asBinder() : null);
                    this.mRemote.transact(59, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSTTCallback(String str, ISSRCallback iSSRCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iSSRCallback != null ? iSSRCallback.asBinder() : null);
                    this.mRemote.transact(60, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setAudioRecordCallback(IAudioRecordCallback iAudioRecordCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iAudioRecordCallback != null ? iAudioRecordCallback.asBinder() : null);
                    this.mRemote.transact(61, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setRecordOnly(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(62, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registSpeechStateCallback(ISpeechStateCallback iSpeechStateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSpeechStateCallback != null ? iSpeechStateCallback.asBinder() : null);
                    this.mRemote.transact(63, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void unregistSpeechStateCallback(ISpeechStateCallback iSpeechStateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSpeechStateCallback != null ? iSpeechStateCallback.asBinder() : null);
                    this.mRemote.transact(64, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setSpeechState(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(65, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public String getTryAudio(String str, String str2, String str3, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(66, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public String getTryAudioByTouch(String str, String str2, String str3, String str4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.mRemote.transact(67, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void decTryAudioWeight(String str, String str2, boolean z, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeString(str3);
                    this.mRemote.transact(68, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerDuplexSSRCallback(String str, IDuplexSSrCallback iDuplexSSrCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iDuplexSSrCallback != null ? iDuplexSSrCallback.asBinder() : null);
                    this.mRemote.transact(69, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerDuplexSTrvCallback(String str, IDuplexSTrvCallback iDuplexSTrvCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iDuplexSTrvCallback != null ? iDuplexSTrvCallback.asBinder() : null);
                    this.mRemote.transact(70, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public String getVrMetaData(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(71, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setUSBStatus(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(72, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public boolean getRecordStatus() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(73, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public boolean applyRecordStatus() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(74, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public boolean releaseRecordStatus() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(75, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public String startAudioRecord(RecordParam recordParam, IRecordCallback iRecordCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (recordParam != null) {
                        obtain.writeInt(1);
                        recordParam.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iRecordCallback != null ? iRecordCallback.asBinder() : null);
                    this.mRemote.transact(76, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void stopAudioRecord(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(77, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void cancelAudioRecord(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(78, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setSemanticContext(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(79, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setPackageName(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(80, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setTryBeforeWakeup(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(81, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public long getClientState(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(82, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setVerifyCallback(String str, String str2, String str3, String str4, IClientVerifyResult iClientVerifyResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    obtain.writeStrongBinder(iClientVerifyResult != null ? iClientVerifyResult.asBinder() : null);
                    this.mRemote.transact(83, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setClientSdkVersion(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(84, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setCurrentMiniProgramName(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(85, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setMiniProgramList(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(86, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setSemanticContextNew(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(87, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setAsrContext(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(88, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSystemDomainSet(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(89, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerSystemWakeUpEvent(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(90, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void resetState(String str) throws RemoteException {
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

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setClientType(String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.mRemote.transact(92, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public StartRecordResult startAudioRecordSync(String str, RecordSyncParam recordSyncParam, IRecordCallback iRecordCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (recordSyncParam != null) {
                        obtain.writeInt(1);
                        recordSyncParam.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iRecordCallback != null ? iRecordCallback.asBinder() : null);
                    this.mRemote.transact(93, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? StartRecordResult.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void registerWakeupSceneToSystemVr(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(94, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public void setHotWordWithCallBack(String str, int i, String str2, IHotWordsCallback iHotWordsCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iHotWordsCallback != null ? iHotWordsCallback.asBinder() : null);
                    this.mRemote.transact(95, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public String getRecordConfig(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(96, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.ISpeechService
            public String startAudioRecordInner(String str, RecordParam recordParam, IRecordCallback iRecordCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (recordParam != null) {
                        obtain.writeInt(1);
                        recordParam.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iRecordCallback != null ? iRecordCallback.asBinder() : null);
                    this.mRemote.transact(97, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
