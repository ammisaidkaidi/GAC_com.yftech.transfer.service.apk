package com.desaysv.mixmedia.support;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.desaysv.mixmedia.BuildConfig;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class KugouUsbBtConnection extends BaseConnection {
    public KugouUsbBtConnection(Context context, Handler handler, OnSessionCallback onSessionCallback) {
        super(handler, onSessionCallback);
        reconnect(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reconnect(Context context) {
        connect2MBService(context, BuildConfig.LIBRARY_PACKAGE_NAME, "com.desaysv.mixmedia.media.service.MediaSessionService");
    }

    @Override // com.desaysv.mixmedia.support.BaseConnection
    void changeSource(EnumMediaSource enumMediaSource) {
        int code;
        if (this.mediaController == null) {
            return;
        }
        switch (enumMediaSource) {
            case ONLINE_MUSIC:
            case BT_MUSIC:
            case USB0_MUSIC:
                code = enumMediaSource.getCode();
                break;
            default:
                code = -1;
                break;
        }
        if (code != -1) {
            Bundle bundle = new Bundle();
            bundle.putInt(Constants.VALUE_MEDIA_SOURCE, code);
            this.mediaController.getTransportControls().sendCustomAction(Constants.KEY_MEDIA_SOURCE, bundle);
        }
    }
}
