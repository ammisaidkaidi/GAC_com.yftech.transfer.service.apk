package com.yftech.transfer.iflytek.opensdk.adapter;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.iflytek.autofly.custom.audio.util.IAudioListener;
import com.yftech.car.audio.CarAudioManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class AudioAdapterImpl {
    private static final int MSG_RECONNECT_IFlyTekService = 1;
    private static final int RECONNECT_TIME = 10000;
    private AudioManager mAudioManager;
    private Context mContext;
    private com.iflytek.autofly.custom.audio.util.AudioManager mIFlyCustomAudioManager;
    private boolean mIsCustomAudioServiceConnected;
    private String TAG = AudioAdapterImpl.class.getSimpleName();
    private int mLastStreamType = -1;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.transfer.iflytek.opensdk.adapter.AudioAdapterImpl.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                AudioAdapterImpl.this.mIFlyCustomAudioManager = com.iflytek.autofly.custom.audio.util.AudioManager.registerListener(AudioAdapterImpl.this.mContext, AudioAdapterImpl.this.mIfAuidoListener);
            }
        }
    };
    private final CarAudioManager.CarAudioCallback carAudioCallback = new CarAudioManager.CarAudioCallback() { // from class: com.yftech.transfer.iflytek.opensdk.adapter.AudioAdapterImpl.2
        public void onChangedMediaSource(int i, String str, String str2) {
            AudioAdapterImpl.this.mLastStreamType = i;
            Log.i(AudioAdapterImpl.this.TAG, "onChangedMediaSource: mLastStreamType = " + AudioAdapterImpl.this.mLastStreamType);
        }
    };
    private final IAudioListener mIfAuidoListener = new IAudioListener() { // from class: com.yftech.transfer.iflytek.opensdk.adapter.AudioAdapterImpl.3
        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onCloseChannel(int i) {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onGet3DSoundMode() {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onGetCurrentChannel() {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onGetEQ(int i) {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onGetEQMode() {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public boolean onIsAudioFocusOccupy() {
            return false;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onSet3DSoundMode(int i) {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onSetEQ(int i, int i2) {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onSetEQMode(int i) {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onSwitchChannel(int i) {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public void onServiceStatusChanged(int i) {
            Log.d(AudioAdapterImpl.this.TAG, "CustomAudioService onServiceStatusChanged:" + i);
            switch (i) {
                case 1:
                case 4:
                    AudioAdapterImpl.this.mIsCustomAudioServiceConnected = false;
                    AudioAdapterImpl.this.reConnect();
                    return;
                case 2:
                default:
                    return;
                case 3:
                    AudioAdapterImpl.this.mIsCustomAudioServiceConnected = true;
                    if (AudioAdapterImpl.this.mHandler.hasMessages(1)) {
                        AudioAdapterImpl.this.mHandler.removeMessages(1);
                    }
                    Log.d(AudioAdapterImpl.this.TAG, "bind IFlytek Audio Service Successful");
                    return;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0013  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x000a  */
        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int onRequestAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2) {
            int i3;
            switch (i) {
                case 0:
                case 1:
                case 6:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                    i3 = 3;
                    break;
                case 2:
                case 7:
                case 8:
                    i3 = 19;
                    break;
                case 3:
                    i3 = 9;
                    break;
                case 4:
                    i3 = 20;
                    break;
                case 5:
                    i3 = 0;
                    break;
                default:
                    switch (i) {
                        case 25:
                        case 29:
                        case 30:
                            break;
                        case 26:
                        case 27:
                        case 28:
                            break;
                        default:
                            i3 = 1;
                            break;
                    }
            }
            int requestAudioFocus = AudioAdapterImpl.this.mAudioManager.requestAudioFocus(onAudioFocusChangeListener, i3, i2);
            Log.i(AudioAdapterImpl.this.TAG, "onRequestAudioFocus:streamType:" + i + ",durationHint:" + i2 + "  yfStream = " + i3 + "  result = " + requestAudioFocus);
            return requestAudioFocus;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onAbandonAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
            int abandonAudioFocus = AudioAdapterImpl.this.mAudioManager.abandonAudioFocus(onAudioFocusChangeListener);
            Log.i(AudioAdapterImpl.this.TAG, "onAbandonAudioFocus: result = " + abandonAudioFocus);
            return abandonAudioFocus;
        }

        @Override // com.iflytek.autofly.custom.audio.util.IAudioListener
        public int onGetLastMusicSourceChannel() {
            int i = AudioAdapterImpl.this.mLastStreamType;
            int i2 = 3;
            if (i == 0) {
                i2 = 5;
            } else if (i == 3) {
                i2 = 1;
            } else if (i != 9) {
                switch (i) {
                    case 19:
                        i2 = 2;
                        break;
                    case 20:
                        i2 = 4;
                        break;
                    default:
                        i2 = 0;
                        break;
                }
            }
            Log.i(AudioAdapterImpl.this.TAG, "onGetLastMusicSourceChannel:  mLastStreamType = " + AudioAdapterImpl.this.mLastStreamType + " iflytekStream = " + i2);
            return i2;
        }
    };
    private CarAudioManager mCarAudioManager = CarAudioManager.getInstance();

    public AudioAdapterImpl(Context context) {
        this.mContext = context;
        this.mAudioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.mCarAudioManager.registerCarAudioCallback(this.carAudioCallback, (Handler) null);
        this.mIFlyCustomAudioManager = com.iflytek.autofly.custom.audio.util.AudioManager.registerListener(this.mContext, this.mIfAuidoListener);
        this.mHandler.sendEmptyMessageDelayed(1, 10000L);
    }

    public void release() {
        if (this.mHandler.hasMessages(1)) {
            this.mHandler.removeMessages(1);
        }
        this.mCarAudioManager.unregisterCarAudioCallback(this.carAudioCallback);
        com.iflytek.autofly.custom.audio.util.AudioManager.unregisterListener(this.mIfAuidoListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reConnect() {
        if (this.mIsCustomAudioServiceConnected) {
            this.mHandler.removeMessages(1);
        } else {
            this.mHandler.sendEmptyMessageDelayed(1, 10000L);
        }
    }
}
