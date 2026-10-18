package com.desaysv.mixmedia.support;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.desaysv.mixmedia.BuildConfig;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class XMLYConnection extends BaseConnection {
    public XMLYConnection(Context context, Handler handler, OnSessionCallback onSessionCallback) {
        super(handler, onSessionCallback);
        reconnect(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reconnect(Context context) {
        connect2MBService(context, BuildConfig.LIBRARY_PACKAGE_NAME, "com.desaysv.mixradio.media.service.MediaSessionService");
    }

    @Override // com.desaysv.mixmedia.support.BaseConnection
    void changeSource(EnumMediaSource enumMediaSource) {
        if (this.mediaController == null) {
            return;
        }
        int code = enumMediaSource == EnumMediaSource.ONLINE_TRACK ? enumMediaSource.getCode() : -1;
        if (code != -1) {
            Bundle bundle = new Bundle();
            bundle.putInt(Constants.VALUE_MEDIA_SOURCE, code);
            this.mediaController.getTransportControls().sendCustomAction(Constants.KEY_MEDIA_SOURCE, bundle);
        }
    }
}
