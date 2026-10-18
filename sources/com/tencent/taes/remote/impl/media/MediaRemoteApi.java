package com.tencent.taes.remote.impl.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.remote.api.media.IMediaApi;
import com.tencent.taes.remote.api.media.IPlayerService;
import com.tencent.taes.remote.api.media.bean.MediaBean;
import com.tencent.taes.remote.api.media.listener.IAudioFocusListener;
import com.tencent.taes.remote.api.media.listener.IPlayListListener;
import com.tencent.taes.remote.api.media.listener.IPlayModeListener;
import com.tencent.taes.remote.api.media.listener.IPlayerListener;
import com.tencent.taes.remote.impl.BaseRemoteApi;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaRemoteApi extends BaseRemoteApi implements IMediaApi {
    private IPlayerService mService;

    private MediaRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mService = IPlayerService.Stub.asInterface(iBinder);
        log("construct");
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void init(Bundle bundle) {
        log("init");
        if (this.mService != null) {
            try {
                this.mService.init(bundle);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void play(boolean z) {
        log("play");
        if (this.mService != null) {
            try {
                this.mService.play(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void pause(boolean z) {
        log("pause");
        if (this.mService != null) {
            try {
                this.mService.pause(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void stop() {
        log("stop");
        if (this.mService != null) {
            try {
                this.mService.stop();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void destroy() {
        log("destroy");
        if (this.mService != null) {
            try {
                this.mService.destroy();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public boolean hasAudioFocus() {
        log("hasAudioFocus");
        if (this.mService == null) {
            return false;
        }
        try {
            return this.mService.hasAudioFocus();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public long getDuration() {
        log("getDuration");
        if (this.mService == null) {
            return 0L;
        }
        try {
            return this.mService.getDuration();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public long getUploadPosition() {
        log("getUploadPosition");
        if (this.mService == null) {
            return 0L;
        }
        try {
            return this.mService.getUploadPosition();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public long getCurrentPosition() {
        log("getCurrentPosition");
        if (this.mService == null) {
            return 0L;
        }
        try {
            return this.mService.getCurrentPosition();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void seekTo(long j) {
        log("seekTo");
        if (this.mService != null) {
            try {
                this.mService.seekTo(j);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public boolean isPlaying() {
        log("isPlaying");
        if (this.mService == null) {
            return false;
        }
        try {
            return this.mService.isPlaying();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void resumeVolume() {
        log("resumeVolume");
        if (this.mService != null) {
            try {
                this.mService.resumeVolume();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void decreaseVolume() {
        log("decreaseVolume");
        if (this.mService != null) {
            try {
                this.mService.decreaseVolume();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void setPlayListener(IPlayerListener iPlayerListener) {
        log("setPlayListener");
        if (this.mService != null) {
            try {
                this.mService.setPlayListener(iPlayerListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void setPlayList(String str, List<MediaBean> list) {
        log("setPlayList");
        if (this.mService != null) {
            try {
                this.mService.setPlayList(str, list);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void setPlayListBatch(String str, List<MediaBean> list, int i, int i2) {
        log("setPlayListBatch pkgName: " + str + ", page: " + i + ", total: " + i2);
        if (this.mService != null) {
            try {
                this.mService.setPlayListBatch(str, list, i, i2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public List<MediaBean> getPlayList() {
        log("getPlayList");
        if (this.mService == null) {
            return null;
        }
        try {
            return this.mService.getPlayList();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public List<MediaBean> getPlayListBatch(int i) {
        log("getPlayListBatch page: " + i);
        if (this.mService == null) {
            return null;
        }
        try {
            return this.mService.getPlayListBatch(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public int getPlayListSize() {
        log("getPlayListSize");
        if (this.mService != null) {
            try {
                return this.mService.getPlayListSize();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void addPlayListListener(IPlayListListener iPlayListListener) {
        log("addPlayListListener");
        if (this.mService != null) {
            try {
                this.mService.addPlayListListener(iPlayListListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void setPlayIndex(String str, int i) {
        log("setPlayIndex");
        if (this.mService != null) {
            try {
                this.mService.setPlayIndex(str, i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public int getPlayIndex() {
        log("getPlayIndex");
        if (this.mService == null) {
            return 0;
        }
        try {
            return this.mService.getPlayIndex();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public int getFirst() {
        log("getFirst");
        if (this.mService == null) {
            return 0;
        }
        try {
            return this.mService.getFirst();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public int pre(int i) {
        log("pre");
        if (this.mService == null) {
            return 0;
        }
        try {
            return this.mService.pre(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public int next(int i) {
        log("next");
        if (this.mService == null) {
            return 0;
        }
        try {
            return this.mService.next(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public int getNextWhenComplete(int i) {
        log("getNextWhenComplete");
        if (this.mService == null) {
            return 0;
        }
        try {
            return this.mService.getNextWhenComplete(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void setRecommendMode(String str, int i) {
        log("setRecommendMode");
        if (this.mService != null) {
            try {
                this.mService.setRecommendMode(str, i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void setPlayMode(String str, int i) {
        log("setPlayMode");
        if (this.mService != null) {
            try {
                this.mService.setPlayMode(str, i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void switchPlayMode(String str) {
        log("switchPlayMode");
        if (this.mService != null) {
            try {
                this.mService.switchPlayMode(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void addPlayModeListener(IPlayModeListener iPlayModeListener) {
        log("addPlayModeListener");
        if (this.mService != null) {
            try {
                this.mService.addPlayModeListener(iPlayModeListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void removePlayModeListener(IPlayModeListener iPlayModeListener) {
        log("removePlayModeListener");
        if (this.mService != null) {
            try {
                this.mService.removePlayModeListener(iPlayModeListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public int getPlayMode() {
        log("getPlayMode");
        try {
            if (this.mService != null) {
                return this.mService.getPlayMode();
            }
            return 0;
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void initTTSPlayer() {
        log("initTTSPlayer");
        try {
            if (this.mService != null) {
                this.mService.initTTSPlayer();
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void setDeviceId(String str) {
        log("setDeviceId");
        try {
            if (this.mService != null) {
                this.mService.setDeviceId(str);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public int getAudioFocus() {
        log("getAudioFocus");
        try {
            if (this.mService != null) {
                return this.mService.getAudioFocus();
            }
            return 0;
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>("Media", IPlayerService.Stub.class.getName());
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        log("reBindBinder");
        this.mService = IPlayerService.Stub.asInterface(iBinder);
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public boolean isBuffering() {
        log("isBuffering");
        try {
            if (this.mService != null) {
                return this.mService.isBuffering();
            }
            return false;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public boolean isSeekable() {
        log("isSeekable");
        try {
            if (this.mService != null) {
                return this.mService.isSeekable();
            }
            return false;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public boolean isSupportShuffleMode() {
        log("isSupportShuffleMode");
        try {
            if (this.mService != null) {
                return this.mService.isSupportShuffleMode();
            }
            return false;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    private void log(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(", mService ");
        sb.append(this.mService == null);
        Log.d("MediaRemoteApi", sb.toString());
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void updateListItem(String str, int i, MediaBean mediaBean) {
        try {
            if (this.mService != null) {
                this.mService.updateListItem(str, i, mediaBean);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void likeItem(String str, int i, boolean z) {
        try {
            if (this.mService != null) {
                this.mService.likeItem(str, i, z);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.taes.remote.api.media.IMediaApi
    public void addAudioFocusListener(IAudioFocusListener iAudioFocusListener) {
        try {
            if (this.mService != null) {
                this.mService.addAudioFocusListener(iAudioFocusListener);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
