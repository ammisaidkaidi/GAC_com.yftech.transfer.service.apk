package com.tencent.taes.remote.api.impl.tts;

import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.taes.framework.interfaces.ICompManager;
import com.tencent.taes.remote.api.tts.ITtsApi;
import com.tencent.taes.remote.api.tts.ITtsService;
import com.tencent.taes.remote.api.tts.listener.IPlayingCallback;
import com.tencent.taes.remote.api.tts.listener.IPlayingListener;
import com.tencent.taes.remote.api.tts.listener.ITtsInitCallback;
import com.tencent.taes.remote.api.tts.listener.ITtsInitListener;
import com.tencent.taes.remote.api.tts.listener.ITtsPlayCallback;
import com.tencent.taes.remote.api.tts.listener.ITtsPlayListener;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerCallback;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerChooseCallback;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerChooseListener;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerListener;
import com.tencent.wecar.tts.TtsManager;
import com.tencent.wecar.tts.client.PersonaliseTTSActivity;
import com.tencent.wecar.tts.log.TtsLog;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class TtsRemoteApi implements ITtsApi {
    private static final String TAG = "TtsRemoteApi";
    private ITtsService mITtsService;
    private final int defaultSpeedLevel = 0;
    private final List<ITtsSpeakerListener> mTtsSpeakerListenerList = new CopyOnWriteArrayList();
    private final List<ITtsSpeakerChooseListener> mTtsSpeakerChooseListenerList = new CopyOnWriteArrayList();
    private final ITtsSpeakerCallback.Stub mTtsSpeakerCallbackStub = new ITtsSpeakerCallback.Stub() { // from class: com.tencent.taes.remote.api.impl.tts.TtsRemoteApi.1
        @Override // com.tencent.taes.remote.api.tts.listener.ITtsSpeakerCallback
        public void onSpeakerChanged(String str) throws RemoteException {
            TtsLog.d(TtsRemoteApi.TAG, "mTtsSpeakerCallbackStub:onSpeakerChanged");
            Iterator it = TtsRemoteApi.this.mTtsSpeakerListenerList.iterator();
            while (it.hasNext()) {
                ((ITtsSpeakerListener) it.next()).onSpeakerChanged(str);
            }
        }
    };
    private final ITtsSpeakerChooseCallback.Stub mTtsSpeakerChooseCallbackStub = new ITtsSpeakerChooseCallback.Stub() { // from class: com.tencent.taes.remote.api.impl.tts.TtsRemoteApi.2
        @Override // com.tencent.taes.remote.api.tts.listener.ITtsSpeakerChooseCallback
        public void onSpeakerChooseChanged(String str, String str2) throws RemoteException {
            TtsLog.d(TtsRemoteApi.TAG, "mTtsSpeakerChooseCallbackStub:onSpeakerChanged");
            Iterator it = TtsRemoteApi.this.mTtsSpeakerChooseListenerList.iterator();
            while (it.hasNext()) {
                ((ITtsSpeakerChooseListener) it.next()).onSpeakerChooseChanged(str, str2);
            }
        }
    };
    private final List<IPlayingListener> mPlayingListener = new CopyOnWriteArrayList();
    private final IPlayingCallback.Stub mTtsPlayCallbackStub = new IPlayingCallback.Stub() { // from class: com.tencent.taes.remote.api.impl.tts.TtsRemoteApi.3
        @Override // com.tencent.taes.remote.api.tts.listener.IPlayingCallback
        public void onPlayingChanged(boolean z) throws RemoteException {
            Iterator it = TtsRemoteApi.this.mPlayingListener.iterator();
            while (it.hasNext()) {
                ((IPlayingListener) it.next()).onPlayingChanged(z);
            }
        }
    };
    private final List<ITtsInitListener> mTtsInitListenerList = new CopyOnWriteArrayList();
    private final ITtsInitCallback.Stub mTtsInitCallbackStub = new ITtsInitCallback.Stub() { // from class: com.tencent.taes.remote.api.impl.tts.TtsRemoteApi.4
        @Override // com.tencent.taes.remote.api.tts.listener.ITtsInitCallback
        public void callback(int i, String str) throws RemoteException {
            Iterator it = TtsRemoteApi.this.mTtsInitListenerList.iterator();
            while (it.hasNext()) {
                ((ITtsInitListener) it.next()).callback(i, str);
            }
        }
    };
    private final Map<String, ITtsPlayListener> mITtsPlayCallbackMap = Collections.synchronizedMap(new HashMap());

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void getSpeakerName(String str) {
    }

    public void binderConnect(IBinder iBinder) {
        TtsLog.i(TAG, "binderConnect: ");
        this.mITtsService = ITtsService.Stub.asInterface(iBinder);
        try {
            this.mITtsService.addTtsSpeakerListener(this.mTtsSpeakerCallbackStub);
            this.mITtsService.addTtsSpeakerChooseListener(this.mTtsSpeakerChooseCallbackStub);
            this.mITtsService.addPlayingListener(this.mTtsPlayCallbackStub);
            this.mITtsService.registerInitListener(this.mTtsInitCallbackStub);
        } catch (RemoteException e) {
            e.printStackTrace();
            TtsLog.e(TAG, e);
        }
    }

    public void binderDisConnect() {
        TtsLog.i(TAG, "binderDisConnect:  mITtsPlayCallbackMap.size is " + this.mITtsPlayCallbackMap.size());
        for (Map.Entry<String, ITtsPlayListener> entry : this.mITtsPlayCallbackMap.entrySet()) {
            ITtsPlayListener value = entry.getValue();
            if (value != null) {
                value.onError(ICompManager.ERROR_LOAD_OVERTIME, "TtsService is dead.", entry.getKey(), "");
            }
        }
        this.mITtsPlayCallbackMap.clear();
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public boolean isInited() {
        if (this.mITtsService != null) {
            try {
                TtsLog.i(TAG, "isInited: " + this.mITtsService.isInited());
                return this.mITtsService.isInited();
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }
        TtsLog.e(TAG, "TtsService connect failure.");
        return false;
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void registerInitCallback(ITtsInitListener iTtsInitListener) {
        if (this.mTtsInitListenerList.contains(iTtsInitListener)) {
            return;
        }
        this.mTtsInitListenerList.add(iTtsInitListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String playTts(String str, int i, ITtsPlayListener iTtsPlayListener) {
        return playTtsByStreamType(str, i, 0, iTtsPlayListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String playTts(String str, int i, int i2, ITtsPlayListener iTtsPlayListener) {
        return playTtsByStreamType(str, i, i2, iTtsPlayListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String playTts(String str, ITtsPlayListener iTtsPlayListener, AudioAttributes audioAttributes) {
        return playTts(str, 0, iTtsPlayListener, audioAttributes);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String playTts(String str, int i, ITtsPlayListener iTtsPlayListener, AudioAttributes audioAttributes) {
        String playTtsByAudioAttribute;
        TtsLog.i(TAG, "playTts: text = " + str + ";speedLevel = " + i + ";listener = " + iTtsPlayListener + ";audioAttributes = " + audioAttributes);
        String str2 = "";
        if (this.mITtsService == null) {
            return "";
        }
        try {
            if (iTtsPlayListener != null) {
                playTtsByAudioAttribute = this.mITtsService.playTtsByAudioAttribute(str, i, createITtsPlayCallbackStub(iTtsPlayListener), audioAttributes);
            } else {
                playTtsByAudioAttribute = this.mITtsService.playTtsByAudioAttribute(str, i, null, audioAttributes);
            }
            str2 = playTtsByAudioAttribute;
            return str2;
        } catch (RemoteException e) {
            e.printStackTrace();
            return str2;
        }
    }

    private ITtsPlayCallback.Stub createITtsPlayCallbackStub(final ITtsPlayListener iTtsPlayListener) {
        return new ITtsPlayCallback.Stub() { // from class: com.tencent.taes.remote.api.impl.tts.TtsRemoteApi.5
            @Override // com.tencent.taes.remote.api.tts.listener.ITtsPlayCallback
            public void onPlayBegin(String str, String str2) throws RemoteException {
                TtsLog.i(TtsRemoteApi.TAG, "onPlayBegin: " + str);
                iTtsPlayListener.onPlayBegin(str, str2);
                TtsRemoteApi.this.mITtsPlayCallbackMap.put(str, iTtsPlayListener);
            }

            @Override // com.tencent.taes.remote.api.tts.listener.ITtsPlayCallback
            public void onPlayCompleted(String str, String str2) throws RemoteException {
                TtsLog.i(TtsRemoteApi.TAG, "onPlayCompleted: " + str);
                iTtsPlayListener.onPlayCompleted(str, str2);
                TtsRemoteApi.this.mITtsPlayCallbackMap.remove(str);
            }

            @Override // com.tencent.taes.remote.api.tts.listener.ITtsPlayCallback
            public void onPlayInterrupted(String str, String str2) throws RemoteException {
                TtsLog.i(TtsRemoteApi.TAG, "onPlayInterrupted: " + str);
                iTtsPlayListener.onPlayInterrupted(str, str2);
            }

            @Override // com.tencent.taes.remote.api.tts.listener.ITtsPlayCallback
            public void onError(int i, String str, String str2, String str3) throws RemoteException {
                TtsLog.i(TtsRemoteApi.TAG, "onError: " + str2);
                iTtsPlayListener.onError(i, str, str2, str3);
                TtsRemoteApi.this.mITtsPlayCallbackMap.remove(str2);
            }

            @Override // com.tencent.taes.remote.api.tts.listener.ITtsPlayCallback
            public void onProgressReturn(int i, int i2, String str, String str2) throws RemoteException {
                TtsLog.i(TtsRemoteApi.TAG, "onProgressReturn: " + str);
                iTtsPlayListener.onProgressReturn(i, i2, str, str2);
            }

            @Override // com.tencent.taes.remote.api.tts.listener.ITtsPlayCallback.Stub, android.os.Binder
            public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
                try {
                    return super.onTransact(i, parcel, parcel2, i2);
                } catch (Throwable th) {
                    TtsLog.e(TtsRemoteApi.TAG, th);
                    throw new RemoteException(th.getMessage());
                }
            }
        };
    }

    private String playTtsByStreamType(String str, int i, int i2, ITtsPlayListener iTtsPlayListener) {
        String playTts;
        TtsLog.i(TAG, "playTts: text = " + str + ";streamType = " + i + ";speedLevel = " + i2 + ";listener = " + iTtsPlayListener);
        String str2 = "";
        if (this.mITtsService == null) {
            return "";
        }
        try {
            if (iTtsPlayListener != null) {
                playTts = this.mITtsService.playTts(str, i, i2, createITtsPlayCallbackStub(iTtsPlayListener), false);
            } else {
                playTts = this.mITtsService.playTts(str, i, i2, null, false);
            }
            str2 = playTts;
            return str2;
        } catch (RemoteException e) {
            e.printStackTrace();
            return str2;
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void stopPlay(String str) {
        if (this.mITtsService != null) {
            try {
                TtsLog.i(TAG, "stopPlay: msgId = " + str);
                if (str != null) {
                    this.mITtsService.stopPlay(str);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    @Deprecated
    public void setTtsSpeaker(@NonNull String str) {
        if (this.mITtsService != null) {
            try {
                this.mITtsService.setTtsSpeaker(str);
                TtsManager.getInstance().uploadTtsSpeakerSettings();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void setTtsSpeakerInfo(@NonNull String str, String str2) {
        if (this.mITtsService != null) {
            try {
                this.mITtsService.setTtsSpeakerInfo(str, str2);
                TtsManager.getInstance().uploadTtsSpeakerSettings();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    @Nullable
    public String getTtsSpeaker() {
        if (this.mITtsService == null) {
            return null;
        }
        try {
            return this.mITtsService.getTtsSpeaker();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    @Nullable
    public String getTtsSpeakerName() {
        if (this.mITtsService == null) {
            return null;
        }
        try {
            return this.mITtsService.getTtsSpeakerName();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public int setAppendTtsSpeakerPath(@NonNull String str) {
        if (this.mITtsService == null) {
            return -1;
        }
        try {
            return this.mITtsService.setAppendTtsSpeakerPath(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public boolean isOfficialTtsSpeaker() {
        if (this.mITtsService == null) {
            return true;
        }
        try {
            return this.mITtsService.isOfficialTtsSpeaker();
        } catch (RemoteException e) {
            e.printStackTrace();
            return true;
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void addTtsSpeakerListener(@NonNull ITtsSpeakerListener iTtsSpeakerListener) {
        if (this.mTtsSpeakerListenerList.contains(iTtsSpeakerListener)) {
            return;
        }
        this.mTtsSpeakerListenerList.add(iTtsSpeakerListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void addTtsSpeakerChooseListener(@NonNull ITtsSpeakerChooseListener iTtsSpeakerChooseListener) {
        if (this.mTtsSpeakerChooseListenerList.contains(iTtsSpeakerChooseListener)) {
            return;
        }
        this.mTtsSpeakerChooseListenerList.add(iTtsSpeakerChooseListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void removeTtsSpeakerChooseListener(@NonNull ITtsSpeakerChooseListener iTtsSpeakerChooseListener) {
        if (this.mTtsSpeakerChooseListenerList.remove(iTtsSpeakerChooseListener)) {
            return;
        }
        TtsLog.e(TAG, "ITtsSpeakerChooseListener is NOT added");
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void removeTtsSpeakerListener(@NonNull ITtsSpeakerListener iTtsSpeakerListener) {
        if (this.mTtsSpeakerListenerList.remove(iTtsSpeakerListener)) {
            return;
        }
        TtsLog.e(TAG, "ITtsSpeakerListener is NOT added");
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    @Nullable
    public String[] getAvailableTtsSpeaker() {
        if (this.mITtsService == null) {
            return null;
        }
        try {
            return this.mITtsService.getAvailableTtsSpeaker();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void addPlayingListener(@NonNull IPlayingListener iPlayingListener) {
        if (this.mPlayingListener.contains(iPlayingListener)) {
            return;
        }
        this.mPlayingListener.add(iPlayingListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void removePlayingListener(@NonNull IPlayingListener iPlayingListener) {
        if (this.mPlayingListener.remove(iPlayingListener)) {
            return;
        }
        TtsLog.e(TAG, "IPlayingListener is NOT added");
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String getVersion() {
        if (this.mITtsService == null) {
            return "";
        }
        try {
            return this.mITtsService.getVersion();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String getChooseTtsId() {
        if (this.mITtsService == null) {
            return "";
        }
        try {
            return this.mITtsService.getChooseTtsId();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void setChooseTts(String str, String str2) {
        if (this.mITtsService != null) {
            try {
                this.mITtsService.setChooseTts(str, str2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String getChooseTtsName() {
        if (this.mITtsService == null) {
            return "";
        }
        try {
            return this.mITtsService.getChooseTtsName();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void startTtsPage(Context context) {
        Intent intent = new Intent();
        if (TtsManager.getInstance().getUseApk()) {
            intent.setClassName(TtsManager.DEFAULT_TTS_APK_PACKAGE_NAME, "com.tencent.wecar.tts.client.PersonaliseTTSActivity");
        } else {
            intent.setClass(context, PersonaliseTTSActivity.class);
        }
        intent.putExtra("skinMode", 2);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        context.startActivity(intent);
    }

    public void setTtsRecordPcm(boolean z) {
        if (this.mITtsService != null) {
            try {
                this.mITtsService.setTtsRecordPcm(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean getTtsRecordPcmValue() {
        if (this.mITtsService == null) {
            return false;
        }
        try {
            return this.mITtsService.getTtsRecordPcmValue();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
