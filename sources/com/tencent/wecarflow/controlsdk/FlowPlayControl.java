package com.tencent.wecarflow.controlsdk;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.yftech.transfer.service.CarAppList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class FlowPlayControl {
    public static final int CODE_NOT_CONNECTED = 2001;
    public static final int CODE_REMOTE_EXCEPTION = 2002;
    public static final int CODE_SERVICE_ERROR = 2003;
    public static final int CODE_SUCCESS = 2000;
    private static final String TAG = "_Music_FlowPlayControl";
    private boolean bIsPlaying;
    private boolean bServiceConnected;
    private List<IAppView> mAppViewListeners;
    private List<BindListener> mBindListeners;

    @SuppressLint({"HandlerLeak"})
    private Handler mHandler;
    private List<MediaChangeListener> mMediaListeners;
    private List<PlayStateListener> mPlayListeners;
    private Messenger mReceiveMessenger;
    private Messenger mSendMessenger;
    private ServiceConnection mServiceConnection;

    private void semanticSearch() {
    }

    private FlowPlayControl() {
        this.mHandler = new Handler() { // from class: com.tencent.wecarflow.controlsdk.FlowPlayControl.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                String str;
                long j;
                long j2;
                if (message.what != 2006) {
                    LogUtils.d(FlowPlayControl.TAG, "handleMessage: " + message.what);
                }
                Bundle data = message.getData();
                int i = message.what;
                switch (i) {
                    case 2003:
                        if (data != null) {
                            FlowPlayControl.this.notifyMediaChange(MediaInfoUtil.parseMediaInfo(data));
                        }
                        FlowPlayControl.this.bIsPlaying = true;
                        FlowPlayControl.this.notifyPlayStart();
                        return;
                    case 2004:
                        FlowPlayControl.this.bIsPlaying = false;
                        FlowPlayControl.this.notifyPlayPause();
                        return;
                    case 2005:
                        FlowPlayControl.this.bIsPlaying = false;
                        FlowPlayControl.this.notifyPlayStop();
                        return;
                    case 2006:
                        if (data != null) {
                            long j3 = data.getLong(MessageConstant.MEDIA_PROGRESS_CURRENT);
                            j2 = data.getLong(MessageConstant.MEDIA_PROGRESS_TOTAL);
                            str = data.getString(MessageConstant.MEDIA_TYPE);
                            j = j3;
                        } else {
                            str = null;
                            j = 0;
                            j2 = 0;
                        }
                        FlowPlayControl.getInstance().notifyProgress(str, j, j2);
                        return;
                    default:
                        switch (i) {
                            case MessageConstant.FEEDBACK_IS_FAVOR /* 2009 */:
                                if (data != null) {
                                    FlowPlayControl.this.notifyMediaFavorChange(data.getBoolean(MessageConstant.MEDIA_IS_FAVORED));
                                    return;
                                }
                                return;
                            case 2010:
                                if (data != null) {
                                    FlowPlayControl.this.notifyMediaChange(MediaInfoUtil.parseMediaInfo(data));
                                    return;
                                }
                                return;
                            default:
                                switch (i) {
                                    case MessageConstant.FEEDBACK_MODE_CHANGE /* 2014 */:
                                        if (data != null) {
                                            FlowPlayControl.this.notifyPlayModeChange(data.getInt(MessageConstant.MEDIA_PLAYMODE));
                                            return;
                                        }
                                        return;
                                    case MessageConstant.FEEDBACK_PLAY_LIST_CHANGE /* 2015 */:
                                        FlowPlayControl.this.notifyPlayListChange();
                                        return;
                                    default:
                                        switch (i) {
                                            case 3003:
                                                FlowPlayControl.this.showLoading();
                                                return;
                                            case 3004:
                                                FlowPlayControl.this.hideLoading();
                                                return;
                                            case 3005:
                                                if (data != null) {
                                                    FlowPlayControl.this.isWxOpenCloseFlag(data.getBoolean(MessageConstant.WX_ACTIVITY_OPEN_CLOSE_FLAG), data.getBoolean(MessageConstant.LOGIN_STATE_FLAG));
                                                    return;
                                                }
                                                return;
                                            case 3006:
                                                if (data != null) {
                                                    FlowPlayControl.this.setLoginState(data.getBoolean(MessageConstant.LOGIN_STATE_FLAG));
                                                    return;
                                                }
                                                return;
                                            case 3007:
                                                if (data != null) {
                                                    FlowPlayControl.this.setExpireState(data.getBoolean(MessageConstant.EXPIRE_STATE_FLAG));
                                                    return;
                                                }
                                                return;
                                            default:
                                                return;
                                        }
                                }
                        }
                }
            }
        };
        this.mServiceConnection = new ServiceConnection() { // from class: com.tencent.wecarflow.controlsdk.FlowPlayControl.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                LogUtils.d(FlowPlayControl.TAG, "onServiceConnected");
                FlowPlayControl.this.bServiceConnected = true;
                FlowPlayControl.this.mSendMessenger = new Messenger(iBinder);
                FlowPlayControl.this.mReceiveMessenger = new Messenger(FlowPlayControl.this.mHandler);
                FlowPlayControl.this.addMessenger();
                FlowPlayControl.this.notifyServiceConnected();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                LogUtils.d(FlowPlayControl.TAG, "onServiceDisconnected");
                FlowPlayControl.this.bServiceConnected = false;
                FlowPlayControl.this.mSendMessenger = null;
                FlowPlayControl.this.mReceiveMessenger = null;
                FlowPlayControl.this.notifyServiceDisconnected();
            }

            @Override // android.content.ServiceConnection
            public void onBindingDied(ComponentName componentName) {
                LogUtils.d(FlowPlayControl.TAG, "onBindingDied name: " + componentName);
                FlowPlayControl.this.notifyBindDied();
            }
        };
        this.mBindListeners = new LinkedList();
        this.mMediaListeners = new LinkedList();
        this.mPlayListeners = new LinkedList();
        this.mAppViewListeners = new LinkedList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Holder {
        private static FlowPlayControl sInstance = new FlowPlayControl();

        private Holder() {
        }
    }

    public static FlowPlayControl getInstance() {
        return Holder.sInstance;
    }

    public void addIAppViewListener(IAppView iAppView) {
        LogUtils.d(TAG, "addAppViewListener: " + iAppView);
        if (iAppView == null) {
            return;
        }
        synchronized (this.mAppViewListeners) {
            if (!this.mAppViewListeners.contains(iAppView)) {
                this.mAppViewListeners.add(iAppView);
            }
        }
    }

    public void removeIAppViewListener(IAppView iAppView) {
        LogUtils.d(TAG, "removeIAppViewListener: " + iAppView);
        if (iAppView == null) {
            return;
        }
        synchronized (this.mAppViewListeners) {
            this.mAppViewListeners.remove(iAppView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLoading() {
        LogUtils.d(TAG, "  showLoading  ");
        synchronized (this.mAppViewListeners) {
            Iterator<IAppView> it = this.mAppViewListeners.iterator();
            while (it.hasNext()) {
                it.next().beginSearch();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideLoading() {
        LogUtils.d(TAG, "  hideLoading  ");
        synchronized (this.mAppViewListeners) {
            Iterator<IAppView> it = this.mAppViewListeners.iterator();
            while (it.hasNext()) {
                it.next().finishSearch();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void isWxOpenCloseFlag(boolean z, boolean z2) {
        LogUtils.d(TAG, "  isOpenCloseFlag  " + z + " isLogin = " + z2);
        synchronized (this.mAppViewListeners) {
            Iterator<IAppView> it = this.mAppViewListeners.iterator();
            while (it.hasNext()) {
                it.next().onWXBindActivityOpenOrClose(z, z2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLoginState(boolean z) {
        LogUtils.d(TAG, "  setLoginState  " + z);
        synchronized (this.mAppViewListeners) {
            Iterator<IAppView> it = this.mAppViewListeners.iterator();
            while (it.hasNext()) {
                it.next().setLoginUI(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExpireState(boolean z) {
        LogUtils.d(TAG, "  setLoginState  " + z);
        synchronized (this.mAppViewListeners) {
            Iterator<IAppView> it = this.mAppViewListeners.iterator();
            while (it.hasNext()) {
                it.next().onExpireChanged(z);
            }
        }
    }

    public boolean startPlayActivity(Context context) {
        LogUtils.d(TAG, "startPlayActivity");
        try {
            ComponentName componentName = new ComponentName("com.tencent.wecar", CarAppList.LOCAL_LAUNCHER_CLS);
            Intent intent = new Intent();
            intent.setComponent(componentName);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            LogUtils.d(TAG, "应用未安装");
            return false;
        }
    }

    public boolean semanticSearch(Context context, String str, String str2) {
        LogUtils.d(TAG, "semanticSearch from: " + str + ", semantic: " + str2);
        try {
            ComponentName componentName = new ComponentName("com.tencent.wecar", CarAppList.LOCAL_LAUNCHER_CLS);
            Intent intent = new Intent();
            intent.setComponent(componentName);
            intent.putExtra("from", str);
            intent.putExtra(MessageConstant.SEMANTIC_WHERE, 1);
            intent.putExtra("taskId", 0L);
            intent.putExtra("semantic", str2);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            LogUtils.d(TAG, "应用未安装");
            return false;
        }
    }

    public int semanticSearchInService(String str, String str2) {
        LogUtils.d(TAG, "semanticSearchInService");
        Message obtain = Message.obtain();
        obtain.what = 1012;
        Bundle bundle = new Bundle();
        bundle.putInt(MessageConstant.SEMANTIC_WHERE, 1);
        bundle.putLong("taskId", 0L);
        bundle.putString("from", str);
        bundle.putString("semantic", str2);
        obtain.setData(bundle);
        return sendMessage(obtain);
    }

    public boolean startPlay(Context context, String str, String str2) {
        LogUtils.d(TAG, "startPlay from: " + str + ", semantic: " + str2);
        try {
            ComponentName componentName = new ComponentName("com.tencent.wecar", CarAppList.LOCAL_LAUNCHER_CLS);
            Intent intent = new Intent();
            intent.setComponent(componentName);
            intent.putExtra("from", str);
            intent.putExtra(MessageConstant.SEMANTIC_WHERE, 4);
            intent.putExtra("taskId", 0);
            intent.putExtra("semantic", str2);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            LogUtils.d(TAG, "应用未安装");
            return false;
        }
    }

    public boolean playFavor(Context context, String str, String str2) {
        LogUtils.d(TAG, "playFavor from: " + str + ", semantic: " + str2);
        try {
            ComponentName componentName = new ComponentName("com.tencent.wecar", CarAppList.LOCAL_LAUNCHER_CLS);
            Intent intent = new Intent();
            intent.setComponent(componentName);
            intent.putExtra("from", str);
            intent.putExtra(MessageConstant.SEMANTIC_WHERE, 3);
            intent.putExtra("taskId", 0);
            intent.putExtra("semantic", str2);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            LogUtils.d(TAG, "应用未安装");
            return false;
        }
    }

    public boolean showFavor(Context context, String str, String str2) {
        LogUtils.d(TAG, "showFavor from: " + str + ", semantic: " + str2);
        try {
            ComponentName componentName = new ComponentName("com.tencent.wecar", CarAppList.LOCAL_LAUNCHER_CLS);
            Intent intent = new Intent();
            intent.setComponent(componentName);
            intent.putExtra("from", str);
            intent.putExtra(MessageConstant.SEMANTIC_WHERE, 2);
            intent.putExtra("taskId", 0);
            intent.putExtra("semantic", str2);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            LogUtils.d(TAG, "应用未安装");
            return false;
        }
    }

    public void bindPlayService(Context context) {
        LogUtils.d(TAG, "bindPlayService");
        ComponentName componentName = new ComponentName("com.tencent.wecarflow", "com.tencent.wecarflow.launcherwidget.UpdateWidgetService");
        Intent intent = new Intent();
        intent.setComponent(componentName);
        intent.setAction("com.tencent.wecarflow.service_init");
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
        intent.setComponent(componentName);
        context.bindService(intent, this.mServiceConnection, 1);
    }

    public int closeApp() {
        LogUtils.d(TAG, "closeApp");
        Message obtain = Message.obtain();
        obtain.what = 1008;
        return sendMessage(obtain);
    }

    public void unbindPlayService(Context context) {
        LogUtils.d(TAG, "unbindPlayService");
        if (this.bServiceConnected) {
            removeMessenger();
            context.unbindService(this.mServiceConnection);
            this.bServiceConnected = false;
            this.mSendMessenger = null;
            this.mReceiveMessenger = null;
        }
    }

    public int addFavor() {
        LogUtils.d(TAG, "addFavor");
        Message obtain = Message.obtain();
        obtain.what = 1009;
        return sendMessage(obtain);
    }

    public int cancelFavor() {
        LogUtils.d(TAG, "cancelFavor");
        Message obtain = Message.obtain();
        obtain.what = 1010;
        return sendMessage(obtain);
    }

    public int setPlayMode(int i) {
        LogUtils.d(TAG, "setPlayMode");
        Message obtain = Message.obtain();
        obtain.what = 1011;
        obtain.arg1 = i;
        return sendMessage(obtain);
    }

    public int doPre() {
        LogUtils.d(TAG, "doPre");
        Message obtain = Message.obtain();
        obtain.what = 1002;
        return sendMessage(obtain);
    }

    public int doNext() {
        LogUtils.d(TAG, "doNext");
        Message obtain = Message.obtain();
        obtain.what = 1001;
        return sendMessage(obtain);
    }

    public int doRecommend() {
        LogUtils.d(TAG, "doRecommend");
        Message obtain = Message.obtain();
        obtain.what = 1013;
        return sendMessage(obtain);
    }

    public int doPause() {
        LogUtils.d(TAG, "doPause");
        Message obtain = Message.obtain();
        obtain.what = 1004;
        return sendMessage(obtain);
    }

    public int doPlay() {
        LogUtils.d(TAG, "doPlay");
        Message obtain = Message.obtain();
        obtain.what = 1003;
        return sendMessage(obtain);
    }

    public int doStop() {
        LogUtils.d(TAG, "doStop");
        Message obtain = Message.obtain();
        obtain.what = 1005;
        return sendMessage(obtain);
    }

    public int queryPlaying(QueryCallback<Boolean> queryCallback) {
        LogUtils.d(TAG, "queryPlaying: " + queryCallback);
        Message obtain = Message.obtain();
        obtain.what = 1006;
        obtain.replyTo = new Messenger(new CallbackHandler(queryCallback));
        return sendMessage(obtain);
    }

    public int queryCurrent(QueryCallback<MediaInfo> queryCallback) {
        LogUtils.d(TAG, "queryCurrent: " + queryCallback);
        Message obtain = Message.obtain();
        obtain.what = 1007;
        obtain.replyTo = new Messenger(new CallbackHandler(queryCallback));
        return sendMessage(obtain);
    }

    public int getCurrentMedia(QueryCallback<MediaInfo> queryCallback) {
        LogUtils.d(TAG, "getCurrentMedia: " + queryCallback);
        Message obtain = Message.obtain();
        obtain.what = 1014;
        obtain.replyTo = new Messenger(new CallbackHandler(queryCallback));
        return sendMessage(obtain);
    }

    public int getCurrentIndex(QueryCallback<Integer> queryCallback) {
        Message message = new Message();
        message.what = 1015;
        message.replyTo = new Messenger(new CallbackHandler(queryCallback));
        return sendMessage(message);
    }

    public int doPlay(int i) {
        LogUtils.d(TAG, "doPlay index");
        Message obtain = Message.obtain();
        obtain.what = 1018;
        obtain.arg1 = i;
        return sendMessage(obtain);
    }

    public int getCurrentList(QueryCallback<List<MediaInfo>> queryCallback) {
        LogUtils.d(TAG, "getCurrentList");
        Message obtain = Message.obtain();
        obtain.what = 1017;
        obtain.replyTo = new Messenger(new CallbackHandler(queryCallback));
        return sendMessage(obtain);
    }

    public boolean isPlaying() {
        return this.bIsPlaying;
    }

    public void addBindListener(BindListener bindListener) {
        LogUtils.d(TAG, "addBindListener: " + bindListener);
        if (bindListener == null) {
            return;
        }
        synchronized (this.mBindListeners) {
            if (!this.mBindListeners.contains(bindListener)) {
                this.mBindListeners.add(bindListener);
            }
        }
    }

    public void removeBindListener(BindListener bindListener) {
        LogUtils.d(TAG, "removeBindListener: " + bindListener);
        if (bindListener == null) {
            return;
        }
        synchronized (this.mBindListeners) {
            this.mBindListeners.remove(bindListener);
        }
    }

    public void addMediaChangeListener(MediaChangeListener mediaChangeListener) {
        LogUtils.d(TAG, "addMediaChangeListener: " + mediaChangeListener);
        if (mediaChangeListener == null) {
            return;
        }
        synchronized (this.mMediaListeners) {
            if (!this.mMediaListeners.contains(mediaChangeListener)) {
                this.mMediaListeners.add(mediaChangeListener);
            }
        }
    }

    public void removeMediaChangeListener(MediaChangeListener mediaChangeListener) {
        LogUtils.d(TAG, "removeMediaChangeListener: " + mediaChangeListener);
        if (mediaChangeListener == null) {
            return;
        }
        synchronized (this.mMediaListeners) {
            this.mMediaListeners.remove(mediaChangeListener);
        }
    }

    public void addPlayStateListener(PlayStateListener playStateListener) {
        LogUtils.d(TAG, "addPlayStateListener: " + playStateListener);
        if (playStateListener == null) {
            return;
        }
        synchronized (this.mPlayListeners) {
            if (!this.mPlayListeners.contains(playStateListener)) {
                this.mPlayListeners.add(playStateListener);
            }
        }
    }

    public void removePlayStateListener(PlayStateListener playStateListener) {
        LogUtils.d(TAG, "removePlayStateListener: " + playStateListener);
        if (playStateListener == null) {
            return;
        }
        synchronized (this.mPlayListeners) {
            this.mPlayListeners.remove(playStateListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyMediaChange(MediaInfo mediaInfo) {
        LogUtils.d(TAG, "notifyMediaChange info: " + mediaInfo.getMediaName());
        synchronized (this.mMediaListeners) {
            Iterator<MediaChangeListener> it = this.mMediaListeners.iterator();
            while (it.hasNext()) {
                it.next().onMediaChange(mediaInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyMediaFavorChange(boolean z) {
        LogUtils.d(TAG, "notifyMediaFavorChange isFavored: " + z);
        synchronized (this.mMediaListeners) {
            Iterator<MediaChangeListener> it = this.mMediaListeners.iterator();
            while (it.hasNext()) {
                it.next().onFavorChange(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPlayModeChange(int i) {
        synchronized (this.mMediaListeners) {
            Iterator<MediaChangeListener> it = this.mMediaListeners.iterator();
            while (it.hasNext()) {
                it.next().onModeChange(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPlayListChange() {
        synchronized (this.mMediaListeners) {
            Iterator<MediaChangeListener> it = this.mMediaListeners.iterator();
            while (it.hasNext()) {
                it.next().onPlayListChange();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPlayStart() {
        LogUtils.d(TAG, "notifyPlayStart");
        synchronized (this.mPlayListeners) {
            Iterator<PlayStateListener> it = this.mPlayListeners.iterator();
            while (it.hasNext()) {
                it.next().onStart();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPlayPause() {
        LogUtils.d(TAG, "notifyPlayPause");
        synchronized (this.mPlayListeners) {
            Iterator<PlayStateListener> it = this.mPlayListeners.iterator();
            while (it.hasNext()) {
                it.next().onPause();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPlayStop() {
        LogUtils.d(TAG, "notifyPlayStop");
        synchronized (this.mPlayListeners) {
            Iterator<PlayStateListener> it = this.mPlayListeners.iterator();
            while (it.hasNext()) {
                it.next().onStop();
            }
        }
    }

    void notifyProgress(String str, long j, long j2) {
        synchronized (this.mPlayListeners) {
            Iterator<PlayStateListener> it = this.mPlayListeners.iterator();
            while (it.hasNext()) {
                it.next().onProgress(str, j, j2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyServiceConnected() {
        LogUtils.d(TAG, "notifyServiceConnected");
        synchronized (this.mBindListeners) {
            Iterator<BindListener> it = this.mBindListeners.iterator();
            while (it.hasNext()) {
                it.next().onServiceConnected();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyServiceDisconnected() {
        LogUtils.d(TAG, "notifyServiceDisconnected");
        synchronized (this.mBindListeners) {
            Iterator<BindListener> it = this.mBindListeners.iterator();
            while (it.hasNext()) {
                it.next().onServiceDisconnected();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBindDied() {
        LogUtils.d(TAG, "notifyBindDied: ");
        synchronized (this.mBindListeners) {
            Iterator<BindListener> it = this.mBindListeners.iterator();
            while (it.hasNext()) {
                it.next().onBindDied();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMessenger() {
        LogUtils.d(TAG, "addMessenger");
        Message message = new Message();
        message.what = 3001;
        message.replyTo = this.mReceiveMessenger;
        sendMessage(message);
    }

    private void removeMessenger() {
        LogUtils.d(TAG, "removeMessenger");
        Message message = new Message();
        message.what = 3002;
        message.replyTo = this.mReceiveMessenger;
        sendMessage(message);
    }

    public boolean isServiceConnected() {
        return this.bServiceConnected;
    }

    private int sendMessage(Message message) {
        LogUtils.d(TAG, "sendMessage type: " + message.what + ", bServiceConnected: " + this.bServiceConnected);
        if (!this.bServiceConnected) {
            return 2001;
        }
        try {
            this.mSendMessenger.send(message);
            LogUtils.d(TAG, "sendMessage success: ");
            return 2000;
        } catch (RemoteException e) {
            LogUtils.d(TAG, "sendMessage failed: " + e.getMessage());
            e.printStackTrace();
            return 2002;
        }
    }
}
