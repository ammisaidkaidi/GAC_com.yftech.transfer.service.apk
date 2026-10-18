package com.tencent.wecarflow.contentsdk;

import android.annotation.SuppressLint;
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
import com.tencent.wecarbase.wecarnavi.ExternalDefaultBroadcastKey;
import com.tencent.wecarflow.contentsdk.bean.AlbumBean;
import com.tencent.wecarflow.contentsdk.bean.AudioBookSecondResponseBean;
import com.tencent.wecarflow.contentsdk.bean.AudioBookTabBean;
import com.tencent.wecarflow.contentsdk.bean.BaseResponseBean;
import com.tencent.wecarflow.contentsdk.bean.BaseSongItemBean;
import com.tencent.wecarflow.contentsdk.bean.BookBriefInfo;
import com.tencent.wecarflow.contentsdk.bean.FindRecommendItem;
import com.tencent.wecarflow.contentsdk.bean.FindRecommendResponseBean;
import com.tencent.wecarflow.contentsdk.bean.MusicSecondResponseBean;
import com.tencent.wecarflow.contentsdk.bean.MusicTabBean;
import com.tencent.wecarflow.contentsdk.bean.MusicTabItemBean;
import com.tencent.wecarflow.contentsdk.bean.NewsSecondResponseBean;
import com.tencent.wecarflow.contentsdk.bean.NewsTabBean;
import com.tencent.wecarflow.contentsdk.bean.NewsTabItemBean;
import com.tencent.wecarflow.contentsdk.bean.RadioSecondResponseBean;
import com.tencent.wecarflow.contentsdk.bean.RadioTabBean;
import com.tencent.wecarflow.contentsdk.bean.SearchProgramResponseBean;
import com.tencent.wecarflow.contentsdk.bean.SearchSingerResponseBean;
import com.tencent.wecarflow.contentsdk.bean.SearchSongResponseBean;
import com.tencent.wecarflow.contentsdk.bean.SingerItemBean;
import com.tencent.wecarflow.contentsdk.utils.FileUtils;
import com.tencent.wecarflow.contentsdk.utils.GsonUtils;
import com.tencent.wecarflow.contentsdk.utils.LogUtils;
import com.tencent.wecarflow.contentsdk.utils.ThreadPoolManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContentSDK {
    public static final int CODE_NOT_CONNECTED = 2001;
    public static final int CODE_REMOTE_EXCEPTION = 2002;
    public static final int CODE_SERVICE_ERROR = 2003;
    public static final int CODE_SUCCESS = 2000;
    private final String BIND_CLS_NAME;
    private final String FLOW_BIND_ACTION;
    private final String FLOW_PKG_NAME;
    private final String FLOW_START_ACTION;
    private final int MAX_RET;
    private final int MSG_BOOK;
    private final int MSG_MUSIC;
    private final int MSG_NEWS;
    private final int MSG_PROGRAM;
    private final int MSG_RADIO;
    private final int MSG_RECOMMEND;
    private final int MSG_SONG_BY_NAME;
    private final int MSG_SONG_BY_SINGER;
    private final String TAG;
    private boolean bServiceConnected;
    private ContentListener mBookListener;

    @SuppressLint({"HandlerLeak"})
    private Handler mHandler;
    private List<ConnectionListener> mListeners;
    private ContentListener mMusicListener;
    private ContentListener mNewsListener;
    private ContentListener mRadioListener;
    private Messenger mReceiveMessenger;
    private ContentListener mRecommendListener;
    private Messenger mSendMessenger;
    private ServiceConnection mServiceConnection;

    private ContentSDK() {
        this.TAG = "FlowContentContentSDK";
        this.FLOW_PKG_NAME = "com.tencent.wecarflow";
        this.FLOW_START_ACTION = "com.tencent.wecarflow.service_init";
        this.FLOW_BIND_ACTION = "com.tencent.wecarflow.service_content_bind";
        this.BIND_CLS_NAME = "com.tencent.wecarflow.content.FlowContentService";
        this.MSG_RECOMMEND = 100;
        this.MSG_MUSIC = 101;
        this.MSG_RADIO = 102;
        this.MSG_BOOK = 103;
        this.MSG_NEWS = 104;
        this.MSG_SONG_BY_NAME = 105;
        this.MSG_SONG_BY_SINGER = 106;
        this.MSG_PROGRAM = 107;
        this.mListeners = new ArrayList();
        this.mServiceConnection = new ServiceConnection() { // from class: com.tencent.wecarflow.contentsdk.ContentSDK.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                LogUtils.d("FlowContentContentSDK", "onServiceConnected");
                ContentSDK.this.bServiceConnected = true;
                ContentSDK.this.mSendMessenger = new Messenger(iBinder);
                ContentSDK.this.mReceiveMessenger = new Messenger(ContentSDK.this.mHandler);
                ContentSDK.this.addMessenger();
                ContentSDK.this.notifyServiceConnected();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                LogUtils.d("FlowContentContentSDK", "onServiceDisconnected");
                ContentSDK.this.bServiceConnected = false;
                ContentSDK.this.mSendMessenger = null;
                ContentSDK.this.mReceiveMessenger = null;
                ContentSDK.this.notifyServiceDisconnected();
            }

            @Override // android.content.ServiceConnection
            public void onBindingDied(ComponentName componentName) {
                LogUtils.d("FlowContentContentSDK", "onBindingDied name: " + componentName);
                ContentSDK.this.notifyBindDied();
            }
        };
        this.mHandler = new Handler() { // from class: com.tencent.wecarflow.contentsdk.ContentSDK.3
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                LogUtils.d("FlowContentContentSDK", "handleMessage: " + message.what);
                Bundle data = message.getData();
                String string = data.getString("result");
                int i = message.what;
                switch (i) {
                    case 100:
                        ContentSDK.this.mRecommendListener.onContentGot((FindRecommendResponseBean) message.obj);
                        return;
                    case 101:
                        ContentSDK.this.mMusicListener.onContentGot((MusicSecondResponseBean) message.obj);
                        return;
                    case 102:
                        ContentSDK.this.mRadioListener.onContentGot((RadioSecondResponseBean) message.obj);
                        return;
                    case 103:
                        ContentSDK.this.mBookListener.onContentGot((AudioBookSecondResponseBean) message.obj);
                        return;
                    case 104:
                        ContentSDK.this.mNewsListener.onContentGot((NewsSecondResponseBean) message.obj);
                        return;
                    case 105:
                        ContentSDK.this.sendSearchResponse((SearchSongResponseBean) message.obj, message.arg1);
                        return;
                    case 106:
                        ContentSDK.this.sendSearchResponse((SearchSingerResponseBean) message.obj, message.arg1);
                        return;
                    case 107:
                        ContentSDK.this.sendSearchResponse((SearchProgramResponseBean) message.obj, message.arg1);
                        return;
                    default:
                        switch (i) {
                            case 4400:
                                ContentSDK.this.parse(string, 100, FindRecommendResponseBean.class);
                                return;
                            case 4401:
                                ContentSDK.this.parse(string, 101, MusicSecondResponseBean.class);
                                return;
                            case 4402:
                                ContentSDK.this.parse(string, 102, RadioSecondResponseBean.class);
                                return;
                            case 4403:
                                ContentSDK.this.parse(string, 103, AudioBookSecondResponseBean.class);
                                return;
                            case 4404:
                                ContentSDK.this.parse(string, 104, NewsSecondResponseBean.class);
                                return;
                            case MessageConstant.RESPONSE_SONG_BY_SINGER /* 4405 */:
                                ContentSDK.this.parse(string, 106, SearchSingerResponseBean.class, data.getInt("num"), true);
                                return;
                            case MessageConstant.RESPONSE_SONG_BY_NAME /* 4406 */:
                                ContentSDK.this.parse(string, 105, SearchSongResponseBean.class, data.getInt("num"), true);
                                return;
                            case MessageConstant.RESPONSE_PROGRAM /* 4407 */:
                                ContentSDK.this.parse(string, 107, SearchProgramResponseBean.class, data.getInt("num"), true);
                                return;
                            default:
                                return;
                        }
                }
            }
        };
        this.MAX_RET = 5;
        LogUtils.w("FlowContentContentSDK", "sdk version : 1.0.1.1");
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class Holder {
        private static ContentSDK sInstance = new ContentSDK();

        private Holder() {
        }
    }

    public static ContentSDK getInstance() {
        return Holder.sInstance;
    }

    public void bindContentService(Context context) {
        LogUtils.d("FlowContentContentSDK", "bindPlayService");
        ComponentName componentName = new ComponentName("com.tencent.wecarflow", "com.tencent.wecarflow.content.FlowContentService");
        Intent intent = new Intent();
        intent.setComponent(componentName);
        intent.setAction("com.tencent.wecarflow.service_content_bind");
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
        intent.setComponent(componentName);
        context.bindService(intent, this.mServiceConnection, 1);
    }

    public void unbindPlayService(Context context) {
        LogUtils.d("FlowContentContentSDK", "unbindPlayService");
        if (this.bServiceConnected) {
            removeMessenger();
            context.unbindService(this.mServiceConnection);
            this.bServiceConnected = false;
            this.mSendMessenger = null;
            this.mReceiveMessenger = null;
        }
    }

    public void registerConnectionListener(ConnectionListener connectionListener) {
        this.mListeners.add(connectionListener);
    }

    public void unregisterConnectionListener(ConnectionListener connectionListener) {
        this.mListeners.remove(connectionListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyServiceConnected() {
        LogUtils.d("FlowContentContentSDK", "notifyServiceConnected");
        Iterator<ConnectionListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onConnected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyServiceDisconnected() {
        LogUtils.d("FlowContentContentSDK", "notifyServiceDisconnected");
        Iterator<ConnectionListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onDisconnected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBindDied() {
        LogUtils.d("FlowContentContentSDK", "notifyBindDied: ");
        Iterator<ConnectionListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onConnectionDied();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMessenger() {
        LogUtils.d("FlowContentContentSDK", "addMessenger");
        Message message = new Message();
        message.what = 3001;
        message.arg1 = 1;
        message.replyTo = this.mReceiveMessenger;
        sendMessage(message);
    }

    private void removeMessenger() {
        LogUtils.d("FlowContentContentSDK", "removeMessenger");
        Message message = new Message();
        message.what = 3002;
        message.arg1 = 1;
        message.replyTo = this.mReceiveMessenger;
        sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parse(String str, int i, Class cls) {
        parse(str, i, cls, 0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parse(final String str, final int i, final Class cls, final int i2, final boolean z) {
        ThreadPoolManager.getInstance().addThreadTask(new Runnable() { // from class: com.tencent.wecarflow.contentsdk.ContentSDK.2
            @Override // java.lang.Runnable
            public void run() {
                String readFileData = FileUtils.readFileData(str);
                LogUtils.d("FlowContentContentSDK", "file : " + str);
                try {
                    if (z) {
                        FileUtils.delete(str);
                    }
                } catch (IOException e) {
                    LogUtils.w("FlowContentContentSDK", e.getMessage());
                }
                Object convert2Object = GsonUtils.convert2Object(readFileData, cls);
                Message message = new Message();
                message.obj = convert2Object;
                message.what = i;
                message.arg1 = i2;
                ContentSDK.this.mHandler.sendMessage(message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSearchResponse(BaseResponseBean baseResponseBean, int i) {
        if (baseResponseBean == null) {
            this.mMusicListener.onContentGot(null);
            return;
        }
        try {
            List arrayList = new ArrayList();
            if (baseResponseBean instanceof SearchSongResponseBean) {
                arrayList = ((SearchSongResponseBean) baseResponseBean).getSonglist();
            } else if (baseResponseBean instanceof SearchSingerResponseBean) {
                arrayList = ((SearchSingerResponseBean) baseResponseBean).getSingerList();
            } else if (baseResponseBean instanceof SearchProgramResponseBean) {
                arrayList = ((SearchProgramResponseBean) baseResponseBean).getAlbumlist();
            }
            this.mMusicListener.onContentGot(arrayList.subList(0, Math.min(arrayList.size(), Math.min(5, i))));
        } catch (Throwable th) {
            this.mMusicListener.onContentGot(null);
            th.printStackTrace();
        }
    }

    private int sendMessage(Message message) {
        LogUtils.d("FlowContentContentSDK", "sendMessage type: " + message.what + ", bServiceConnected: " + this.bServiceConnected);
        if (!this.bServiceConnected) {
            return 2001;
        }
        try {
            this.mSendMessenger.send(message);
            LogUtils.d("FlowContentContentSDK", "sendMessage success: ");
            return 2000;
        } catch (RemoteException e) {
            LogUtils.d("FlowContentContentSDK", "sendMessage failed: " + e.getMessage());
            e.printStackTrace();
            return 2002;
        }
    }

    public void getRecommendInfo(ContentListener contentListener, int i) {
        this.mRecommendListener = contentListener;
        Message obtain = Message.obtain();
        obtain.what = ExternalDefaultBroadcastKey.TYPE.LVDS_INIT_COMPLETE;
        obtain.arg1 = i;
        sendMessage(obtain);
    }

    public void getRadioInfo(ContentListener contentListener) {
        this.mRadioListener = contentListener;
        Message obtain = Message.obtain();
        obtain.what = 4002;
        sendMessage(obtain);
    }

    public void getBookInfo(ContentListener contentListener) {
        this.mBookListener = contentListener;
        Message obtain = Message.obtain();
        obtain.what = 4003;
        sendMessage(obtain);
    }

    public void getNewsInfo(ContentListener contentListener) {
        this.mNewsListener = contentListener;
        Message obtain = Message.obtain();
        obtain.what = 4004;
        sendMessage(obtain);
    }

    public void getMusicInfo(ContentListener contentListener) {
        this.mMusicListener = contentListener;
        Message obtain = Message.obtain();
        obtain.what = 4001;
        sendMessage(obtain);
    }

    public void searchSongByName(ContentListener contentListener, String str, int i) {
        this.mMusicListener = contentListener;
        Message obtain = Message.obtain();
        obtain.what = 4005;
        Bundle bundle = new Bundle();
        bundle.putString("song_name", str);
        bundle.putInt("num", i);
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void searchSongBySinger(ContentListener contentListener, String str, int i) {
        this.mMusicListener = contentListener;
        Message obtain = Message.obtain();
        obtain.what = 4006;
        Bundle bundle = new Bundle();
        bundle.putString("singer_name", str);
        bundle.putInt("num", i);
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void searchProgram(ContentListener contentListener, String str, int i) {
        this.mMusicListener = contentListener;
        Message obtain = Message.obtain();
        obtain.what = 4007;
        Bundle bundle = new Bundle();
        bundle.putString("program_name", str);
        bundle.putInt("num", i);
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void clickNewsItem(NewsTabBean newsTabBean, NewsTabItemBean newsTabItemBean) {
        Message obtain = Message.obtain();
        obtain.what = 4704;
        Bundle bundle = new Bundle();
        bundle.putString("tabId", newsTabBean.getId());
        bundle.putString("tabName", newsTabBean.getTitle());
        bundle.putString("itemData", GsonUtils.convert2String(newsTabItemBean));
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void clickRadioItem(RadioTabBean radioTabBean, AlbumBean albumBean) {
        Message obtain = Message.obtain();
        obtain.what = 4702;
        Bundle bundle = new Bundle();
        bundle.putString("tabId", radioTabBean.getId());
        bundle.putString("tabName", radioTabBean.getTitle());
        bundle.putString("itemData", GsonUtils.convert2String(albumBean));
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void clickBookItem(AudioBookTabBean audioBookTabBean, BookBriefInfo bookBriefInfo) {
        Message obtain = Message.obtain();
        obtain.what = 4703;
        Bundle bundle = new Bundle();
        bundle.putString("tabId", audioBookTabBean.getId());
        bundle.putString("tabName", audioBookTabBean.getTitle());
        bundle.putString("itemData", GsonUtils.convert2String(bookBriefInfo));
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void clickMusicItem(MusicTabBean musicTabBean, MusicTabItemBean musicTabItemBean) {
        Message obtain = Message.obtain();
        obtain.what = 4701;
        Bundle bundle = new Bundle();
        bundle.putString("tabId", musicTabBean.getId());
        bundle.putString("tabName", musicTabBean.getTitle());
        bundle.putString("itemData", GsonUtils.convert2String(musicTabItemBean));
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void clickRecommendItem(FindRecommendItem findRecommendItem) {
        Message obtain = Message.obtain();
        obtain.what = 4700;
        Bundle bundle = new Bundle();
        bundle.putString("tabId", "");
        bundle.putString("tabName", "");
        bundle.putString("itemData", GsonUtils.convert2String(findRecommendItem));
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void clickSearchSongByNameItem(BaseSongItemBean baseSongItemBean, int i) {
        Message obtain = Message.obtain();
        obtain.what = 4705;
        Bundle bundle = new Bundle();
        bundle.putInt("song_index", i);
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void clickSearchSingerItem(SingerItemBean singerItemBean) {
        Message obtain = Message.obtain();
        obtain.what = 4706;
        Bundle bundle = new Bundle();
        bundle.putString("itemData", GsonUtils.convert2String(singerItemBean));
        obtain.setData(bundle);
        sendMessage(obtain);
    }

    public void clickSearchProgramItem(AlbumBean albumBean) {
        Message obtain = Message.obtain();
        obtain.what = 4707;
        Bundle bundle = new Bundle();
        bundle.putString("itemData", GsonUtils.convert2String(albumBean));
        obtain.setData(bundle);
        sendMessage(obtain);
    }
}
