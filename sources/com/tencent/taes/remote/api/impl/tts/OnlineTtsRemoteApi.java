package com.tencent.taes.remote.api.impl.tts;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.tencent.taes.remote.api.tts.IOnlineTtsApi;
import com.tencent.taes.remote.api.tts.IOnlineTtsService;
import com.tencent.taes.remote.api.tts.listener.IOnlineTtsCallback;
import com.tencent.taes.remote.api.tts.listener.IOnlineTtsListener;
import com.tencent.wecar.tts.log.TtsLog;

/* loaded from: /home/user/work/dex/classes.dex */
public class OnlineTtsRemoteApi extends Service implements IOnlineTtsApi {
    private static final String TAG = "OnlineTtsRemoteApi";
    private IOnlineTtsService mIOnlineTtsService;

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    private OnlineTtsRemoteApi() {
    }

    @Override // com.tencent.taes.remote.api.tts.IOnlineTtsApi
    public void playTts(String str) {
        playTts(str, null);
    }

    @Override // com.tencent.taes.remote.api.tts.IOnlineTtsApi
    public void playTts(String str, final IOnlineTtsListener iOnlineTtsListener) {
        if (this.mIOnlineTtsService != null) {
            try {
                this.mIOnlineTtsService.playTts(str, new IOnlineTtsCallback.Stub() { // from class: com.tencent.taes.remote.api.impl.tts.OnlineTtsRemoteApi.1
                    @Override // com.tencent.taes.remote.api.tts.listener.IOnlineTtsCallback
                    public void onPlayBegin() throws RemoteException {
                        if (iOnlineTtsListener != null) {
                            iOnlineTtsListener.onPlayBegin();
                        }
                    }

                    @Override // com.tencent.taes.remote.api.tts.listener.IOnlineTtsCallback
                    public void onPlayCompleted() throws RemoteException {
                        if (iOnlineTtsListener != null) {
                            iOnlineTtsListener.onPlayCompleted();
                        }
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tts.IOnlineTtsApi
    public void setStreamType(int i) {
        if (this.mIOnlineTtsService != null) {
            try {
                TtsLog.i(TAG, "setStreamType: " + i);
                this.mIOnlineTtsService.setStreamType(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tts.IOnlineTtsApi
    public void setSpeaker(int i) {
        if (this.mIOnlineTtsService != null) {
            try {
                TtsLog.i(TAG, "setSpeaker: " + i);
                this.mIOnlineTtsService.setSpeaker(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tts.IOnlineTtsApi
    public void setSpeedLevel(int i) {
        if (this.mIOnlineTtsService != null) {
            try {
                TtsLog.i(TAG, "setSpeedLevel: " + i);
                this.mIOnlineTtsService.setSpeedLevel(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }
}
