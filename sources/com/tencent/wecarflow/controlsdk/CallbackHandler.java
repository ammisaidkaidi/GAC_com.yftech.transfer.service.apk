package com.tencent.wecarflow.controlsdk;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

/* loaded from: /home/user/work/dex/classes.dex */
public class CallbackHandler extends Handler {
    private static final String TAG = "CallbackHandler";
    private QueryCallback callback;

    public CallbackHandler(QueryCallback queryCallback) {
        this.callback = queryCallback;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        LogUtils.d(TAG, "handleMessage: " + message.what);
        switch (message.what) {
            case MessageConstant.FEEDBACK_IS_PLAYING /* 2007 */:
                Bundle data = message.getData();
                if (data != null) {
                    boolean z = data.getBoolean(MessageConstant.MEDIA_PLAYING);
                    this.callback.onSuccess(Boolean.valueOf(z));
                    LogUtils.d(TAG, "callback onSuccess playing: " + z);
                    return;
                }
                this.callback.onError(2003);
                LogUtils.d(TAG, "callback onError");
                return;
            case MessageConstant.FEEDBACK_CURRENT /* 2008 */:
                Bundle data2 = message.getData();
                if (data2 != null) {
                    MediaInfo parseMediaInfo = MediaInfoUtil.parseMediaInfo(data2);
                    this.callback.onSuccess(parseMediaInfo);
                    LogUtils.d(TAG, "callback onSuccess media: " + parseMediaInfo.getMediaName());
                    return;
                }
                this.callback.onError(2003);
                LogUtils.d(TAG, "callback onError");
                return;
            case MessageConstant.FEEDBACK_IS_FAVOR /* 2009 */:
            case 2010:
            default:
                return;
            case MessageConstant.FEEDBACK_GET_CURRENT /* 2011 */:
                Bundle data3 = message.getData();
                if (data3 != null) {
                    MediaInfo parseMediaInfo2 = MediaInfoUtil.parseMediaInfo(data3);
                    this.callback.onSuccess(parseMediaInfo2);
                    LogUtils.d(TAG, "callback onSuccess media: " + parseMediaInfo2.getMediaName());
                    return;
                }
                this.callback.onError(2003);
                LogUtils.d(TAG, "callback onError");
                return;
            case MessageConstant.FEEDBACK_GET_CURRENT_INDEX /* 2012 */:
                Bundle data4 = message.getData();
                if (data4 != null) {
                    int i = data4.getInt(MessageConstant.MEDIA_INDEX);
                    this.callback.onSuccess(Integer.valueOf(i));
                    LogUtils.d(TAG, "callback onSuccess jsonArray: " + i);
                    return;
                }
                this.callback.onError(2003);
                LogUtils.d(TAG, "callback onError");
                return;
            case MessageConstant.FEEDBACK_CURRENT_LIST /* 2013 */:
                Bundle data5 = message.getData();
                if (data5 != null) {
                    String string = data5.getString(MessageConstant.MEDIA_GET_PLAY_LIST);
                    this.callback.onSuccess(MediaInfoUtil.parseMediaInfoList(string));
                    LogUtils.d(TAG, "callback onSuccess jsonArray: " + string);
                    return;
                }
                this.callback.onError(2003);
                LogUtils.d(TAG, "callback onError");
                return;
        }
    }
}
