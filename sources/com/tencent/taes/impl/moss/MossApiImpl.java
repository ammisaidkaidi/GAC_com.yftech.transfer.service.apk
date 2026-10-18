package com.tencent.taes.impl.moss;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.mossbiz.IWeCarMasAudioCallback;
import com.tencent.mossbiz.IWeCarMasCallback;
import com.tencent.mossbiz.IWeCarMasService;
import com.tencent.taes.api.moss.IMossApi;
import com.tencent.taes.api.moss.bean.MiniAppInfo;
import com.tencent.taes.api.moss.bean.MossAudioBean;
import com.tencent.taes.api.moss.bean.ResultBean;
import com.tencent.taes.api.moss.listener.MossCallback;
import com.tencent.taes.impl.base.AbstractApi;
import com.tencent.taes.local.api.moss.IMossRequestCallback;
import com.tencent.taes.util.GsonUtils;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MossApiImpl extends AbstractApi implements IMossApi {
    public static String END = "end";
    public static String ERROR = "error";
    public static String PAUSE = "pause";
    public static String PLAY = "play";
    public static String STOP = "stop";
    private static final String TAG = "MossApiImpl";
    public static String WAItING = "waiting";
    private MossCallback callback;
    private Context context;
    private IWeCarMasService weCarMasService;
    private boolean isConnection = false;
    private ServiceConnection conn = new ServiceConnection() { // from class: com.tencent.taes.impl.moss.MossApiImpl.2
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.e(MossApiImpl.TAG, "连接失败..." + componentName);
            MossApiImpl.this.isConnection = false;
            MossApiImpl.this.weCarMasService = null;
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.connectionFail();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.e(MossApiImpl.TAG, "连接成功..." + componentName);
            try {
                MossApiImpl.this.weCarMasService = IWeCarMasService.Stub.asInterface(iBinder);
                MossApiImpl.this.weCarMasService.initAudioListener(MossApiImpl.this.weCarMasAudioCallback);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.connectionSuccess();
            }
        }
    };
    private IWeCarMasAudioCallback weCarMasAudioCallback = new IWeCarMasAudioCallback.Stub() { // from class: com.tencent.taes.impl.moss.MossApiImpl.3
        @Override // com.tencent.mossbiz.IWeCarMasAudioCallback
        public void onProgress(long j, long j2) throws RemoteException {
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.onProgress(j, j2);
            }
        }

        @Override // com.tencent.mossbiz.IWeCarMasAudioCallback
        public void onMusicPlay() throws RemoteException {
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.onMusicStatusChange(MossApiImpl.PLAY);
            }
        }

        @Override // com.tencent.mossbiz.IWeCarMasAudioCallback
        public void onMusicEnd() throws RemoteException {
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.onMusicStatusChange(MossApiImpl.END);
            }
        }

        @Override // com.tencent.mossbiz.IWeCarMasAudioCallback
        public void onMusicPause() throws RemoteException {
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.onMusicStatusChange(MossApiImpl.PAUSE);
            }
        }

        @Override // com.tencent.mossbiz.IWeCarMasAudioCallback
        public void onMusicStop() throws RemoteException {
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.onMusicStatusChange(MossApiImpl.STOP);
            }
        }

        @Override // com.tencent.mossbiz.IWeCarMasAudioCallback
        public void onMusicWaiting() throws RemoteException {
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.onMusicStatusChange(MossApiImpl.WAItING);
            }
        }

        @Override // com.tencent.mossbiz.IWeCarMasAudioCallback
        public void onMusicError() throws RemoteException {
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.onMusicStatusChange(MossApiImpl.ERROR);
            }
        }

        @Override // com.tencent.mossbiz.IWeCarMasAudioCallback
        public void onMusicInfoChange() throws RemoteException {
            if (MossApiImpl.this.callback != null) {
                MossApiImpl.this.callback.onMusicInfoChange(MossApiImpl.this.getMossAudioBean());
            }
        }
    };

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
    }

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void loadAllAppsFromNet(final IMossRequestCallback<MiniAppInfo> iMossRequestCallback) {
        if (this.weCarMasService != null) {
            try {
                this.weCarMasService.loadAllAppsFromNet(new IWeCarMasCallback.Stub() { // from class: com.tencent.taes.impl.moss.MossApiImpl.1
                    @Override // com.tencent.mossbiz.IWeCarMasCallback
                    public void onResponse(boolean z, String str) throws RemoteException {
                        if (str == null) {
                            return;
                        }
                        ResultBean resultBean = null;
                        try {
                            resultBean = ResultBean.fromJSON(str);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        if (resultBean == null) {
                            return;
                        }
                        List<MiniAppInfo> list = resultBean.data;
                        if (iMossRequestCallback != null) {
                            iMossRequestCallback.onSucceeded(list);
                        }
                    }
                });
                return;
            } catch (Exception e) {
                e.printStackTrace();
                if (iMossRequestCallback != null) {
                    iMossRequestCallback.onFailed(BNRemoteConstants.ParamKey.KEY_MSG_ERRORS);
                    return;
                }
                return;
            }
        }
        if (this.callback != null) {
            this.callback.connectionFail();
            if (iMossRequestCallback != null) {
                iMossRequestCallback.onFailed(BNRemoteConstants.ParamKey.KEY_MSG_ERRORS);
            }
        }
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void openMossApp(String str, String str2) {
        if (this.weCarMasService != null) {
            try {
                this.weCarMasService.openMossApp(str, str2);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (this.callback != null) {
            this.callback.connectionFail();
        }
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void getRecentAppList(IMossRequestCallback<String> iMossRequestCallback) {
        if (this.weCarMasService != null) {
            try {
                List<String> recentAppList = this.weCarMasService.getRecentAppList();
                if (iMossRequestCallback != null) {
                    iMossRequestCallback.onSucceeded(recentAppList);
                    return;
                }
                return;
            } catch (RemoteException e) {
                e.printStackTrace();
                if (iMossRequestCallback != null) {
                    iMossRequestCallback.onFailed(BNRemoteConstants.ParamKey.KEY_MSG_ERRORS);
                    return;
                }
                return;
            }
        }
        if (this.callback != null) {
            this.callback.connectionFail();
            if (iMossRequestCallback != null) {
                iMossRequestCallback.onFailed(BNRemoteConstants.ParamKey.KEY_MSG_ERRORS);
            }
        }
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void play() {
        if (this.weCarMasService != null) {
            try {
                this.weCarMasService.onPlayer();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (this.callback != null) {
            this.callback.connectionFail();
        }
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void pause() {
        if (this.weCarMasService != null) {
            try {
                this.weCarMasService.onAudioPause();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (this.callback != null) {
            this.callback.connectionFail();
        }
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void next() {
        if (this.weCarMasService != null) {
            try {
                this.weCarMasService.onAudioNext();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (this.callback != null) {
            this.callback.connectionFail();
        }
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void prev() {
        if (this.weCarMasService != null) {
            try {
                this.weCarMasService.onAudioPre();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (this.callback != null) {
            this.callback.connectionFail();
        }
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void registerMossCallback(MossCallback mossCallback) {
        this.callback = mossCallback;
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void unRegisterMossCallback() {
        this.callback = null;
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public MossAudioBean getMossAudioBean() {
        if (this.weCarMasService != null) {
            try {
                return (MossAudioBean) GsonUtils.fromJson(this.weCarMasService.musicInfo(), MossAudioBean.class);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        if (this.callback == null) {
            return null;
        }
        this.callback.connectionFail();
        return null;
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void registerConnection(Context context) {
        this.context = context;
        if (context == null || this.isConnection) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("com.tencent.mossbiz.aidl");
            intent.setPackage("com.tencent.wecar");
            this.isConnection = context.bindService(intent, this.conn, 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.taes.api.moss.IMossApi
    public void unRegisterConnection() {
        if (this.context == null || !this.isConnection) {
            return;
        }
        try {
            this.context.unbindService(this.conn);
            this.isConnection = false;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
