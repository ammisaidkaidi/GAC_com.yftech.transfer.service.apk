package com.yftech.transfer.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.support.v4.media.MediaBrowserServiceCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class AbsMediaPlayer implements IMediaPlayer {
    private static final String TAG = "AbsMediaPlayer";
    public IMediaPlayerListener mMediaPlayerListener;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IMediaPlayerListener {
        void onMediaMetaDataChanged(IMediaPlayer iMediaPlayer, MediaMetadataCompat mediaMetadataCompat);

        void onPlayProgressChanged(IMediaPlayer iMediaPlayer, long j, long j2);

        void onPlayStateChanged(IMediaPlayer iMediaPlayer, int i);
    }

    public void init() {
    }

    public void uninit() {
    }

    public void setMediaPlayerListener(IMediaPlayerListener iMediaPlayerListener) {
        this.mMediaPlayerListener = iMediaPlayerListener;
    }

    public ComponentName findBrowserServiceComponentName(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(new Intent(MediaBrowserServiceCompat.SERVICE_INTERFACE), 0);
        Log.d(TAG, "findBrowserServiceComponentName, resolveInfoList " + queryIntentServices);
        for (ResolveInfo resolveInfo : queryIntentServices) {
            if (resolveInfo.serviceInfo.packageName.equals(str)) {
                return new ComponentName(str, resolveInfo.serviceInfo.name);
            }
        }
        return null;
    }
}
