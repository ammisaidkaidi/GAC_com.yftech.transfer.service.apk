package com.desaysv.mixmedia.support;

import android.media.MediaDescription;
import android.os.Bundle;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogUtils {
    public static void d(String str) {
    }

    public static void d(String str, String str2) {
    }

    public static void i(String str) {
    }

    public static void i(String str, String str2) {
    }

    public static void showBundle(String str, Bundle bundle) {
    }

    public static void showDescription(MediaDescription mediaDescription) {
        i(String.format(Locale.getDefault(), "[MediaDescription] MediaId=%s, title=%s, iconUri=%s, mediaUri=%s, subTitle=%s", mediaDescription.getMediaId(), mediaDescription.getTitle(), mediaDescription.getIconUri(), mediaDescription.getMediaUri(), mediaDescription.getSubtitle()));
        if (mediaDescription.getExtras() != null) {
            showBundle("QueueItemExtras", mediaDescription.getExtras());
        }
    }
}
