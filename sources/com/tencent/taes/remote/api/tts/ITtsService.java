package com.tencent.taes.remote.api.tts;

import android.media.AudioAttributes;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.taes.remote.api.tts.listener.IPlayingCallback;
import com.tencent.taes.remote.api.tts.listener.IQrCodeCallback;
import com.tencent.taes.remote.api.tts.listener.ISpeakerCallback;
import com.tencent.taes.remote.api.tts.listener.ITtsInitCallback;
import com.tencent.taes.remote.api.tts.listener.ITtsPlayCallback;
import com.tencent.taes.remote.api.tts.listener.ITtsResponseCallback;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerCallback;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerChooseCallback;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ITtsService extends IInterface {
    void addPlayingListener(IPlayingCallback iPlayingCallback) throws RemoteException;

    void addSpeakerListener(ISpeakerCallback iSpeakerCallback) throws RemoteException;

    void addTtsSpeakerChooseListener(ITtsSpeakerChooseCallback iTtsSpeakerChooseCallback) throws RemoteException;

    void addTtsSpeakerListener(ITtsSpeakerCallback iTtsSpeakerCallback) throws RemoteException;

    void getAppendTtsSpeakerList(String str, String str2, ITtsResponseCallback iTtsResponseCallback) throws RemoteException;

    String[] getAvailableTtsSpeaker() throws RemoteException;

    String getChooseTtsId() throws RemoteException;

    String getChooseTtsName() throws RemoteException;

    String getCustomSpeaker() throws RemoteException;

    void getQrCodeUrl(String str, String str2, IQrCodeCallback iQrCodeCallback) throws RemoteException;

    int getSpeaker() throws RemoteException;

    boolean getTtsRecordPcmValue() throws RemoteException;

    String getTtsSpeaker() throws RemoteException;

    String getTtsSpeakerName() throws RemoteException;

    String getVersion() throws RemoteException;

    void initTts(int i) throws RemoteException;

    boolean isInited() throws RemoteException;

    boolean isOfficialTtsSpeaker() throws RemoteException;

    String playTts(String str, int i, int i2, ITtsPlayCallback iTtsPlayCallback, boolean z) throws RemoteException;

    String playTtsByAudioAttribute(String str, int i, ITtsPlayCallback iTtsPlayCallback, AudioAttributes audioAttributes) throws RemoteException;

    void registerInitListener(ITtsInitCallback iTtsInitCallback) throws RemoteException;

    void registerTtsSpeakerNotification(ITtsResponseCallback iTtsResponseCallback) throws RemoteException;

    int setAppendTtsSpeakerPath(String str) throws RemoteException;

    void setChooseTts(String str, String str2) throws RemoteException;

    void setCustomSpeaker(String str) throws RemoteException;

    void setOfficialSpeaker() throws RemoteException;

    void setSpeaker(int i) throws RemoteException;

    void setTtsRecordPcm(boolean z) throws RemoteException;

    void setTtsSpeaker(String str) throws RemoteException;

    void setTtsSpeakerInfo(String str, String str2) throws RemoteException;

    void stopPlay(String str) throws RemoteException;

    void unRegisterTtsSpeakerNotification() throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements ITtsService {
        private static final String DESCRIPTOR = "com.tencent.taes.remote.api.tts.ITtsService";
        static final int TRANSACTION_addPlayingListener = 9;
        static final int TRANSACTION_addSpeakerListener = 8;
        static final int TRANSACTION_addTtsSpeakerChooseListener = 32;
        static final int TRANSACTION_addTtsSpeakerListener = 12;
        static final int TRANSACTION_getAppendTtsSpeakerList = 18;
        static final int TRANSACTION_getAvailableTtsSpeaker = 15;
        static final int TRANSACTION_getChooseTtsId = 30;
        static final int TRANSACTION_getChooseTtsName = 31;
        static final int TRANSACTION_getCustomSpeaker = 25;
        static final int TRANSACTION_getQrCodeUrl = 17;
        static final int TRANSACTION_getSpeaker = 7;
        static final int TRANSACTION_getTtsRecordPcmValue = 22;
        static final int TRANSACTION_getTtsSpeaker = 11;
        static final int TRANSACTION_getTtsSpeakerName = 28;
        static final int TRANSACTION_getVersion = 16;
        static final int TRANSACTION_initTts = 1;
        static final int TRANSACTION_isInited = 2;
        static final int TRANSACTION_isOfficialTtsSpeaker = 14;
        static final int TRANSACTION_playTts = 3;
        static final int TRANSACTION_playTtsByAudioAttribute = 4;
        static final int TRANSACTION_registerInitListener = 26;
        static final int TRANSACTION_registerTtsSpeakerNotification = 19;
        static final int TRANSACTION_setAppendTtsSpeakerPath = 13;
        static final int TRANSACTION_setChooseTts = 29;
        static final int TRANSACTION_setCustomSpeaker = 24;
        static final int TRANSACTION_setOfficialSpeaker = 23;
        static final int TRANSACTION_setSpeaker = 6;
        static final int TRANSACTION_setTtsRecordPcm = 21;
        static final int TRANSACTION_setTtsSpeaker = 10;
        static final int TRANSACTION_setTtsSpeakerInfo = 27;
        static final int TRANSACTION_stopPlay = 5;
        static final int TRANSACTION_unRegisterTtsSpeakerNotification = 20;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITtsService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITtsService)) {
                return (ITtsService) queryLocalInterface;
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
                    initTts(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isInited = isInited();
                    parcel2.writeNoException();
                    parcel2.writeInt(isInited ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String playTts = playTts(parcel.readString(), parcel.readInt(), parcel.readInt(), ITtsPlayCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeString(playTts);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String playTtsByAudioAttribute = playTtsByAudioAttribute(parcel.readString(), parcel.readInt(), ITtsPlayCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? (AudioAttributes) AudioAttributes.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeString(playTtsByAudioAttribute);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopPlay(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSpeaker(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int speaker = getSpeaker();
                    parcel2.writeNoException();
                    parcel2.writeInt(speaker);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    addSpeakerListener(ISpeakerCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPlayingListener(IPlayingCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTtsSpeaker(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    String ttsSpeaker = getTtsSpeaker();
                    parcel2.writeNoException();
                    parcel2.writeString(ttsSpeaker);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    addTtsSpeakerListener(ITtsSpeakerCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int appendTtsSpeakerPath = setAppendTtsSpeakerPath(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(appendTtsSpeakerPath);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isOfficialTtsSpeaker = isOfficialTtsSpeaker();
                    parcel2.writeNoException();
                    parcel2.writeInt(isOfficialTtsSpeaker ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] availableTtsSpeaker = getAvailableTtsSpeaker();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(availableTtsSpeaker);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    String version = getVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(version);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    getQrCodeUrl(parcel.readString(), parcel.readString(), IQrCodeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppendTtsSpeakerList(parcel.readString(), parcel.readString(), ITtsResponseCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerTtsSpeakerNotification(ITtsResponseCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterTtsSpeakerNotification();
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTtsRecordPcm(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean ttsRecordPcmValue = getTtsRecordPcmValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(ttsRecordPcmValue ? 1 : 0);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    setOfficialSpeaker();
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCustomSpeaker(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    String customSpeaker = getCustomSpeaker();
                    parcel2.writeNoException();
                    parcel2.writeString(customSpeaker);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerInitListener(ITtsInitCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTtsSpeakerInfo(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    String ttsSpeakerName = getTtsSpeakerName();
                    parcel2.writeNoException();
                    parcel2.writeString(ttsSpeakerName);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    setChooseTts(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    String chooseTtsId = getChooseTtsId();
                    parcel2.writeNoException();
                    parcel2.writeString(chooseTtsId);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    String chooseTtsName = getChooseTtsName();
                    parcel2.writeNoException();
                    parcel2.writeString(chooseTtsName);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    addTtsSpeakerChooseListener(ITtsSpeakerChooseCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements ITtsService {
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

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void initTts(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public boolean isInited() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public String playTts(String str, int i, int i2, ITtsPlayCallback iTtsPlayCallback, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(iTtsPlayCallback != null ? iTtsPlayCallback.asBinder() : null);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public String playTtsByAudioAttribute(String str, int i, ITtsPlayCallback iTtsPlayCallback, AudioAttributes audioAttributes) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iTtsPlayCallback != null ? iTtsPlayCallback.asBinder() : null);
                    if (audioAttributes != null) {
                        obtain.writeInt(1);
                        audioAttributes.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void stopPlay(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void setSpeaker(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public int getSpeaker() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void addSpeakerListener(ISpeakerCallback iSpeakerCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSpeakerCallback != null ? iSpeakerCallback.asBinder() : null);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void addPlayingListener(IPlayingCallback iPlayingCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iPlayingCallback != null ? iPlayingCallback.asBinder() : null);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void setTtsSpeaker(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public String getTtsSpeaker() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void addTtsSpeakerListener(ITtsSpeakerCallback iTtsSpeakerCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iTtsSpeakerCallback != null ? iTtsSpeakerCallback.asBinder() : null);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public int setAppendTtsSpeakerPath(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public boolean isOfficialTtsSpeaker() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public String[] getAvailableTtsSpeaker() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public String getVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void getQrCodeUrl(String str, String str2, IQrCodeCallback iQrCodeCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iQrCodeCallback != null ? iQrCodeCallback.asBinder() : null);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void getAppendTtsSpeakerList(String str, String str2, ITtsResponseCallback iTtsResponseCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iTtsResponseCallback != null ? iTtsResponseCallback.asBinder() : null);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void registerTtsSpeakerNotification(ITtsResponseCallback iTtsResponseCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iTtsResponseCallback != null ? iTtsResponseCallback.asBinder() : null);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void unRegisterTtsSpeakerNotification() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void setTtsRecordPcm(boolean z) throws RemoteException {
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

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public boolean getTtsRecordPcmValue() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void setOfficialSpeaker() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void setCustomSpeaker(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public String getCustomSpeaker() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void registerInitListener(ITtsInitCallback iTtsInitCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iTtsInitCallback != null ? iTtsInitCallback.asBinder() : null);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void setTtsSpeakerInfo(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public String getTtsSpeakerName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void setChooseTts(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public String getChooseTtsId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public String getChooseTtsName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.tts.ITtsService
            public void addTtsSpeakerChooseListener(ITtsSpeakerChooseCallback iTtsSpeakerChooseCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iTtsSpeakerChooseCallback != null ? iTtsSpeakerChooseCallback.asBinder() : null);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
