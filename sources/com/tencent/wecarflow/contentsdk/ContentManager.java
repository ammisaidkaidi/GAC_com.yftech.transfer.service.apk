package com.tencent.wecarflow.contentsdk;

import android.content.Context;
import com.tencent.wecarflow.contentsdk.bean.AlbumBean;
import com.tencent.wecarflow.contentsdk.bean.AudioBookTabBean;
import com.tencent.wecarflow.contentsdk.bean.BaseSongItemBean;
import com.tencent.wecarflow.contentsdk.bean.BookBriefInfo;
import com.tencent.wecarflow.contentsdk.bean.FindRecommendItem;
import com.tencent.wecarflow.contentsdk.bean.MusicTabBean;
import com.tencent.wecarflow.contentsdk.bean.MusicTabItemBean;
import com.tencent.wecarflow.contentsdk.bean.NewsTabBean;
import com.tencent.wecarflow.contentsdk.bean.NewsTabItemBean;
import com.tencent.wecarflow.contentsdk.bean.RadioTabBean;
import com.tencent.wecarflow.contentsdk.bean.SingerItemBean;
import com.tencent.wecarflow.contentsdk.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContentManager {
    private final String TAG;
    ConnectionListener cListener;
    private boolean isConnected;
    private ContentSDK mSdk;

    private ContentManager() {
        this.TAG = "FlowContentContentManager";
        this.cListener = new ConnectionListener() { // from class: com.tencent.wecarflow.contentsdk.ContentManager.1
            @Override // com.tencent.wecarflow.contentsdk.ConnectionListener
            public void onConnected() {
                ContentManager.this.isConnected = true;
                LogUtils.w("FlowContentContentManager", "  服务绑定成功  ");
            }

            @Override // com.tencent.wecarflow.contentsdk.ConnectionListener
            public void onDisconnected() {
                ContentManager.this.isConnected = true;
                LogUtils.w("FlowContentContentManager", "  服务绑定已断开  ");
            }

            @Override // com.tencent.wecarflow.contentsdk.ConnectionListener
            public void onConnectionDied() {
                LogUtils.w("FlowContentContentManager", "  服务绑定挂掉了  ");
            }
        };
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class Holder {
        private static ContentManager sInstance = new ContentManager();

        private Holder() {
        }
    }

    public static ContentManager getInstance() {
        return Holder.sInstance;
    }

    public void init(Context context, ConnectionListener connectionListener) {
        this.mSdk = ContentSDK.getInstance();
        this.mSdk.registerConnectionListener(this.cListener);
        this.mSdk.registerConnectionListener(connectionListener);
        this.mSdk.bindContentService(context);
    }

    public void unregisterConnectionListener(ConnectionListener connectionListener) {
        this.mSdk.unregisterConnectionListener(connectionListener);
    }

    public void unbindContentService(Context context) {
        this.mSdk.unbindPlayService(context);
    }

    public void getRecommendInfo(ContentListener contentListener, int i) {
        if (this.isConnected) {
            this.mSdk.getRecommendInfo(contentListener, i);
        } else {
            LogUtils.w("FlowContentContentManager", "should register a listener listen for connection");
        }
    }

    public void getRadioInfo(ContentListener contentListener) {
        if (this.isConnected) {
            this.mSdk.getRadioInfo(contentListener);
        } else {
            LogUtils.w("FlowContentContentManager", "should register a listener listen for connection");
        }
    }

    public void getBookInfo(ContentListener contentListener) {
        if (this.isConnected) {
            this.mSdk.getBookInfo(contentListener);
        } else {
            LogUtils.w("FlowContentContentManager", "should register a listener listen for connection");
        }
    }

    public void getNewsInfo(ContentListener contentListener) {
        if (this.isConnected) {
            this.mSdk.getNewsInfo(contentListener);
        } else {
            LogUtils.w("FlowContentContentManager", "should register a listener listen for connection");
        }
    }

    public void getMusicInfo(ContentListener contentListener) {
        if (this.isConnected) {
            this.mSdk.getMusicInfo(contentListener);
        } else {
            LogUtils.w("FlowContentContentManager", "should register a listener listen for connection");
        }
    }

    public void searchSongByName(ContentListener contentListener, String str, int i) {
        LogUtils.w("FlowContentContentManager", "isConnected = " + this.isConnected + "   searchSongByName = " + str);
        if (this.isConnected) {
            ContentSDK contentSDK = this.mSdk;
            if (i <= 0) {
                i = 5;
            }
            contentSDK.searchSongByName(contentListener, str, i);
            return;
        }
        LogUtils.w("FlowContentContentManager", "should register a listener listen for connection");
    }

    public void searchSongBySinger(ContentListener contentListener, String str, int i) {
        LogUtils.w("FlowContentContentManager", "isConnected = " + this.isConnected + "   searchSongBySinger = " + str);
        if (this.isConnected) {
            ContentSDK contentSDK = this.mSdk;
            if (i <= 0) {
                i = 5;
            }
            contentSDK.searchSongBySinger(contentListener, str, i);
            return;
        }
        LogUtils.w("FlowContentContentManager", "should register a listener listen for connection");
    }

    public void searchProgram(ContentListener contentListener, String str, int i) {
        LogUtils.w("FlowContentContentManager", "isConnected = " + this.isConnected + "   searchSongBySinger = " + str);
        if (this.isConnected) {
            ContentSDK contentSDK = this.mSdk;
            if (i <= 0) {
                i = 5;
            }
            contentSDK.searchProgram(contentListener, str, i);
            return;
        }
        LogUtils.w("FlowContentContentManager", "should register a listener listen for connection");
    }

    public void clickNewsItem(NewsTabBean newsTabBean, NewsTabItemBean newsTabItemBean) {
        if (this.isConnected) {
            this.mSdk.clickNewsItem(newsTabBean, newsTabItemBean);
        }
    }

    public void clickRadioItem(RadioTabBean radioTabBean, AlbumBean albumBean) {
        if (this.isConnected) {
            this.mSdk.clickRadioItem(radioTabBean, albumBean);
        }
    }

    public void clickBookItem(AudioBookTabBean audioBookTabBean, BookBriefInfo bookBriefInfo) {
        if (this.isConnected) {
            this.mSdk.clickBookItem(audioBookTabBean, bookBriefInfo);
        }
    }

    public void clickMusicItem(MusicTabBean musicTabBean, MusicTabItemBean musicTabItemBean) {
        if (this.isConnected) {
            this.mSdk.clickMusicItem(musicTabBean, musicTabItemBean);
        }
    }

    public void clickRecommendItem(FindRecommendItem findRecommendItem) {
        if (this.isConnected) {
            this.mSdk.clickRecommendItem(findRecommendItem);
        }
    }

    public void clickSearchSongByNameItem(BaseSongItemBean baseSongItemBean, int i) {
        if (this.isConnected) {
            this.mSdk.clickSearchSongByNameItem(baseSongItemBean, i);
        }
    }

    public void clickSearchSingerItem(SingerItemBean singerItemBean) {
        if (this.isConnected) {
            this.mSdk.clickSearchSingerItem(singerItemBean);
        }
    }

    public void clickSearchProgramItem(AlbumBean albumBean) {
        if (this.isConnected) {
            this.mSdk.clickSearchProgramItem(albumBean);
        }
    }
}
