package com.tencent.wecarflow.controlsdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.Collections;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaInfoUtil {
    private MediaInfoUtil() {
    }

    public static MediaInfo parseMediaInfo(Bundle bundle) {
        MediaInfo mediaInfo = new MediaInfo();
        parseBundle(mediaInfo, bundle);
        return mediaInfo;
    }

    public static List<MediaInfo> parseMediaInfoList(String str) {
        if (TextUtils.isEmpty(str)) {
            return Collections.emptyList();
        }
        try {
            return (List) new Gson().fromJson(str, new TypeToken<List<MediaInfo>>() { // from class: com.tencent.wecarflow.controlsdk.MediaInfoUtil.1
            }.getType());
        } catch (Exception e) {
            LogUtils.d("MediaInfoUtil", "parseMediaInfoList " + e);
            return Collections.emptyList();
        }
    }

    private static void parseBundle(MediaInfo mediaInfo, Bundle bundle) {
        mediaInfo.setItemIndex(bundle.getInt(MessageConstant.MEDIA_INDEX));
        mediaInfo.setMediaName(bundle.getString(MessageConstant.MEDIA_NAME));
        mediaInfo.setMediaAuthor(bundle.getString(MessageConstant.MEDIA_AUTHOR));
        mediaInfo.setMediaType(bundle.getString(MessageConstant.MEDIA_TYPE));
        mediaInfo.setMediaGroupName(bundle.getString(MessageConstant.MEDIA_GROUP_NAME));
        mediaInfo.setMediaImage(bundle.getString(MessageConstant.MEDIA_IMAGE));
        mediaInfo.setFavorable(bundle.getBoolean(MessageConstant.MEDIA_IS_FAVORABLE));
        mediaInfo.setFavored(bundle.getBoolean(MessageConstant.MEDIA_IS_FAVORED));
        mediaInfo.setShouldSetPlaymode(bundle.getBoolean(MessageConstant.MEDIA_IS_SET_PLAYMODE));
        mediaInfo.setMediaPlaymode(bundle.getInt(MessageConstant.MEDIA_PLAYMODE));
        mediaInfo.setChangedByPlay(bundle.getBoolean(MessageConstant.CHANGE_BY_PLAY));
    }
}
