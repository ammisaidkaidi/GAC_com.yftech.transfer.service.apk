package com.yftech.transfer.tencent.opensdk.adapter;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import com.tencent.tai.pal.audio.AudioAdapter;
import com.tencent.tai.pal.platform.adapter.PlatformAdapter;
import com.yftech.car.audio.CarAudioManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class AudioAdapterImpl extends AudioAdapter {
    public static final int YF_STREAM_TX_APP_NOTIFICATION = 5;
    public static final int YF_STREAM_TX_MEDIA = 3;
    public static final int YF_STREAM_TX_NAVI_GUIDANCE_L2 = 24;
    public static final int YF_STREAM_TX_VR_ACTIVE = 26;
    public static final int YF_STREAM_TX_VR_TTS = 26;
    public static final int YF_STREAM_TX_WECHAT_MESSAGING = 9;
    public static final int YF_STREAM_TX_WECHAT_VOIP = 27;
    private AudioManager mAudioManager;
    private Context mContext;
    private List<AudioAdapter.OnStreamVolumeChangeListener> mOnStreamVolumeChangeListeners = new ArrayList();
    private Object mLockObj = new Object();
    private CarAudioManager.CarAudioCallback mCarAudioCallback = new CarAudioManager.CarAudioCallback() { // from class: com.yftech.transfer.tencent.opensdk.adapter.AudioAdapterImpl.1
        public void onChangedVolume(int i, int i2, int i3, boolean z, int i4) {
            AudioAdapterImpl.this.notifyStreamVolumeChange(i, i2);
            AudioAdapterImpl.this.notifyStreamMuteStateChange(i, z);
        }
    };

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int abandonMicFocus(AudioAdapter.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        return 1;
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int adjustAllVolume(int i, int i2, int i3) {
        return 0;
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int getCurrentActiveStream() {
        return 3;
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int requestMicFocus(AudioAdapter.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2) {
        return 1;
    }

    public AudioAdapterImpl(Context context) {
        this.mContext = context;
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        CarAudioManager.getInstance().registerCarAudioCallback(this.mCarAudioCallback, new Handler());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyStreamVolumeChange(int i, int i2) {
        PlatformAdapter.LOGI("call AudioAdapterImpl notifyStreamVolumeChange ,the streamType:" + i + ",volume:" + i2);
        if (this.mOnStreamVolumeChangeListeners.isEmpty()) {
            return;
        }
        synchronized (this.mLockObj) {
            Iterator<AudioAdapter.OnStreamVolumeChangeListener> it = this.mOnStreamVolumeChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onStreamVolumeChange(i, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyStreamMuteStateChange(int i, boolean z) {
        PlatformAdapter.LOGI("call AudioAdapterImpl notifyStreamMuteStateChange ,the streamType:" + i + ",mute:" + z);
        if (this.mOnStreamVolumeChangeListeners.isEmpty()) {
            return;
        }
        synchronized (this.mLockObj) {
            Iterator<AudioAdapter.OnStreamVolumeChangeListener> it = this.mOnStreamVolumeChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onStreamMuteStateChange(i, z);
            }
        }
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public void registerOnStreamVolumeChangeListener(AudioAdapter.OnStreamVolumeChangeListener onStreamVolumeChangeListener) {
        if (onStreamVolumeChangeListener == null || this.mOnStreamVolumeChangeListeners.contains(onStreamVolumeChangeListener)) {
            return;
        }
        synchronized (this.mLockObj) {
            this.mOnStreamVolumeChangeListeners.add(onStreamVolumeChangeListener);
        }
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public void unregisterOnStreamVolumeChangeListener(AudioAdapter.OnStreamVolumeChangeListener onStreamVolumeChangeListener) {
        if (onStreamVolumeChangeListener == null || !this.mOnStreamVolumeChangeListeners.contains(onStreamVolumeChangeListener)) {
            return;
        }
        synchronized (this.mLockObj) {
            this.mOnStreamVolumeChangeListeners.remove(onStreamVolumeChangeListener);
        }
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int getStreamType(int i) {
        if (i != 10) {
            if (i == 20) {
                PlatformAdapter.LOGI("call getStreamType in value:" + i + ",return value:26");
                return 26;
            }
            if (i == 30) {
                PlatformAdapter.LOGI("call getStreamType in value:" + i + ",return value:9");
                return 9;
            }
            if (i == 50) {
                PlatformAdapter.LOGI("call getStreamType in value:" + i + ",return value:24");
                return 24;
            }
            if (i == 80) {
                PlatformAdapter.LOGI("call getStreamType in value:" + i + ",return value:5");
                return 5;
            }
            if (i == 100) {
                PlatformAdapter.LOGI("call getStreamType in value:" + i + ",return value:26");
                return 26;
            }
            if (i == 110) {
                PlatformAdapter.LOGI("call getStreamType in value:" + i + ",return value:3");
                return 3;
            }
            if (i != 1000) {
                PlatformAdapter.LOGI("call getStreamType in value:" + i + "(No include IAudioApi),return value:3");
                return 3;
            }
        }
        PlatformAdapter.LOGI("call getStreamType in value:" + i + ",return value:27");
        return 27;
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public boolean isStreamMute(int i) {
        boolean isStreamMute = this.mAudioManager.isStreamMute(i);
        PlatformAdapter.LOGI("call isStreamMute in value:" + i + ",return value:" + isStreamMute);
        return isStreamMute;
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int getStreamMaxVolume(int i) {
        PlatformAdapter.LOGI("call getStreamMaxVolume in value:" + i + ",return value:" + this.mAudioManager.getStreamMaxVolume(i));
        return this.mAudioManager.getStreamMaxVolume(i);
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int adjustStreamVolume(int i, int i2, int i3) {
        PlatformAdapter.LOGI("call adjustStreamVolume in value:" + i + "," + i2 + "," + i3);
        int streamMinVolume = this.mAudioManager.getStreamMinVolume(i);
        int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(i);
        int streamVolume = this.mAudioManager.getStreamVolume(i);
        if ((-1 != i2 || streamVolume <= streamMinVolume) && !((1 == i2 && streamVolume < streamMaxVolume) || 100 == i2 || -100 == i2 || 101 == i2)) {
            return 3;
        }
        this.mAudioManager.adjustStreamVolume(i, i2, i3);
        return 1;
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int setStreamVolume(int i, int i2, int i3) {
        PlatformAdapter.LOGI("call setStreamVolume in value:" + i + "," + i2);
        int streamMinVolume = this.mAudioManager.getStreamMinVolume(i);
        int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(i);
        if (this.mAudioManager.getStreamVolume(i) == i2) {
            return 4;
        }
        if (i2 < streamMinVolume || i2 >= streamMaxVolume) {
            return 3;
        }
        this.mAudioManager.setStreamVolume(i, i2, 1);
        return 1;
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int getStreamVolume(int i) {
        PlatformAdapter.LOGI("call getStreamVolume in value:" + i + ",return value:" + this.mAudioManager.getStreamVolume(i));
        return this.mAudioManager.getStreamVolume(i);
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int adjustVolume(int i, int i2) {
        int streamMinVolume = this.mAudioManager.getStreamMinVolume(3);
        int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(3);
        int streamVolume = this.mAudioManager.getStreamVolume(3);
        if ((-1 != i || streamVolume <= streamMinVolume) && (1 != i || streamVolume >= streamMaxVolume)) {
            return 3;
        }
        this.mAudioManager.adjustStreamVolume(3, i, i2);
        return 1;
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int requestAudioFocus(AudioAdapter.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2) {
        PlatformAdapter.LOGI("request audio focus,parocessId:" + onAudioFocusChangeListener.getProcessId() + ",streamType:" + i + ",durationHint:" + i2);
        return this.mAudioManager.requestAudioFocus(onAudioFocusChangeListener, i, i2);
    }

    @Override // com.tencent.tai.pal.audio.AudioAdapter
    public int abandonAudioFocus(AudioAdapter.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        PlatformAdapter.LOGI("abandon audio focus,parocessId:" + onAudioFocusChangeListener.getProcessId());
        return this.mAudioManager.abandonAudioFocus(onAudioFocusChangeListener);
    }
}
