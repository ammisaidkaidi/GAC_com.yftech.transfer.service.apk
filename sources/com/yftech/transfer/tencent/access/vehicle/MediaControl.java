package com.yftech.transfer.tencent.access.vehicle;

import android.content.Intent;
import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.wecarflow.controlsdk.MessageConstant;
import com.yftech.transfer.service.CarAppList;
import com.yftech.transfer.tencent.access.TASSystem;
import com.yftech.transfer.tencent.access.TASUtils;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaControl extends BaseControl {
    private static final String BD_VOICE_CTRL_SEARCH_ACTION = "com.yftech.mediaservice.SEARCH";
    private static final String MUSIC_ACTION = "yf.car.music.action.start";
    public static final String PLAY_FLAG = "playFlag";
    public static final String PROP_EXIST_PLAY_TOP_ACTIVITY = "video.top.activity";
    private static final String TAB_INTENT_KEY_ALBUM = "album";
    private static final String TAB_INTENT_KEY_SINGER = "singer";
    private static final String TAB_INTENT_KEY_SONG = "song";
    private static final String VIDEO_PLAY_ACTION = "yf.car.music.action.player";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public enum MediaSource {
        RADIO(CarAppList.LOCAL_RADIO_NAME, CarAppList.LOCAL_RADIO_NAME_0, "本地电台"),
        MEDIA("多媒体", "USB", "usb", "u盘", "U盘", "SD卡", "离线", "本地"),
        TB_MUSIC("蓝牙", CarAppList.BT_MUSIC_NAME),
        EMPTY("空");

        static final String NAME = "media_source";
        private String[] sources;
        private static List<MediaSource> items = Arrays.asList(RADIO, MEDIA, TB_MUSIC, EMPTY);

        MediaSource(String... strArr) {
            this.sources = strArr;
        }

        private boolean equals(String str) {
            if (this.sources != null && this.sources.length > 0) {
                for (int i = 0; i < this.sources.length; i++) {
                    if (this.sources[i].equals(str)) {
                        return true;
                    }
                }
            }
            return false;
        }

        static MediaSource match(String str) {
            for (MediaSource mediaSource : items) {
                if (mediaSource.equals(str)) {
                    return mediaSource;
                }
            }
            return EMPTY;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "MediaSource:[" + Arrays.toString(this.sources) + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public enum MediaType {
        MUSIC("音乐", "多媒体"),
        VIDEO(CarAppList.VIDEO_NAME),
        EMPTY("空");

        static final String NAME = "media_type";
        private String[] types;
        private static List<MediaType> items = Arrays.asList(MUSIC, VIDEO);

        MediaType(String... strArr) {
            this.types = strArr;
        }

        private boolean equals(String str) {
            if (this.types != null && this.types.length > 0) {
                for (int i = 0; i < this.types.length; i++) {
                    if (this.types[i].equals(str)) {
                        return true;
                    }
                }
            }
            return false;
        }

        static MediaType match(String str) {
            for (MediaType mediaType : items) {
                if (mediaType.equals(str)) {
                    return mediaType;
                }
            }
            return EMPTY;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "MediaType:[" + Arrays.toString(this.types) + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class MediaControlCmd {
        static final String NAME_ALBUM = "album";
        static final String NAME_SINGER = "singer";
        static final String NAME_SONG = "song";
        String album;
        String singer;
        String song;
        MediaSource source = MediaSource.MEDIA;
        MediaType type = MediaType.MUSIC;

        MediaControlCmd() {
        }

        public String toString() {
            return this.source.toString() + "," + this.type.toString() + ",singer:" + this.singer + ",song:" + this.song + ",album:" + this.album;
        }
    }

    @Override // com.yftech.transfer.tencent.access.vehicle.BaseControl
    public String dispatch(String str, JSONArray jSONArray) {
        int length = jSONArray.length();
        MediaControlCmd mediaControlCmd = new MediaControlCmd();
        for (int i = 0; i < length; i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject.has("name")) {
                    String string = jSONObject.getString("name");
                    if (jSONObject.has("values")) {
                        JSONObject jSONObject2 = jSONObject.getJSONArray("values").getJSONObject(0);
                        if ("media_source".equals(string)) {
                            if (jSONObject2.has("text")) {
                                mediaControlCmd.source = MediaSource.match(jSONObject2.getString("text"));
                            }
                        } else if (MessageConstant.MEDIA_TYPE.equals(string)) {
                            if (jSONObject2.has("text")) {
                                mediaControlCmd.type = MediaType.match(jSONObject2.getString("text"));
                            }
                        } else if (TAB_INTENT_KEY_SINGER.equals(string)) {
                            if (jSONObject2.has("text")) {
                                mediaControlCmd.singer = jSONObject2.getString("text");
                            }
                        } else if ("song".equals(string)) {
                            if (jSONObject2.has("text")) {
                                mediaControlCmd.song = jSONObject2.getString("text");
                            }
                        } else if (TAB_INTENT_KEY_ALBUM.equals(string) && jSONObject2.has("text")) {
                            mediaControlCmd.album = jSONObject2.getString("text");
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        TASSystem.LOGI("MediaControl invoke media control cmd:" + mediaControlCmd);
        return invokeMediaControlCmd(mediaControlCmd);
    }

    private String invokeMediaControlCmd(MediaControlCmd mediaControlCmd) {
        if (mediaControlCmd.source == MediaSource.MEDIA) {
            if (mediaControlCmd.type == MediaType.MUSIC) {
                return startUSBMusic(mediaControlCmd.singer, mediaControlCmd.song, mediaControlCmd.album);
            }
            if (mediaControlCmd.type == MediaType.VIDEO) {
                return startUSBVideo(mediaControlCmd.singer, mediaControlCmd.song, mediaControlCmd.album);
            }
        } else {
            if (mediaControlCmd.source == MediaSource.RADIO) {
                return startRadio();
            }
            if (mediaControlCmd.source == MediaSource.TB_MUSIC) {
                return TASUtils.success("蓝牙未连接，请先连接蓝牙");
            }
        }
        return TASUtils.fail("暂不支持此功能");
    }

    private String startUSBVideo(String str, String str2, String str3) {
        Intent intent = new Intent(MUSIC_ACTION);
        intent.addFlags(HUDConstants.NaviLane.NAVILANE_LEFT_AND_RIGHT_GRAY);
        intent.putExtra(CarAppList.START_APP_MUSIC_FLAG, 3);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra(TAB_INTENT_KEY_SINGER, str);
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra("song", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            intent.putExtra(TAB_INTENT_KEY_ALBUM, str3);
        }
        TASSystem.mContext.startActivity(intent);
        return TASUtils.replyTTS(TASUtils.normal);
    }

    private String startUSBMusic(String str, String str2, String str3) {
        boolean z;
        TASSystem.LOGI("startUSBMusic ,the singer:" + str + ",song:" + str2 + ",album:" + str3);
        Intent intent = new Intent();
        if (TextUtils.isEmpty(str)) {
            z = false;
        } else {
            intent.putExtra(TAB_INTENT_KEY_SINGER, str);
            z = true;
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra("song", str2);
            z = true;
        }
        if (!TextUtils.isEmpty(str3)) {
            intent.putExtra(TAB_INTENT_KEY_ALBUM, str3);
            z = true;
        }
        if (z) {
            intent.setAction(BD_VOICE_CTRL_SEARCH_ACTION);
            intent.putExtra(CarAppList.START_APP_MUSIC_FLAG, 2);
            TASSystem.mContext.sendBroadcast(intent);
        } else {
            intent.setAction(MUSIC_ACTION);
            intent.addFlags(HUDConstants.NaviLane.NAVILANE_LEFT_AND_RIGHT_GRAY);
            intent.putExtra(CarAppList.START_APP_MUSIC_FLAG, 2);
            TASSystem.mContext.startActivity(intent);
        }
        return TASUtils.replyTTS(TASUtils.normal);
    }

    private String startBluetoothMusic() {
        Intent intent = new Intent(MUSIC_ACTION);
        intent.addFlags(HUDConstants.NaviLane.NAVILANE_LEFT_AND_RIGHT_GRAY);
        intent.putExtra(CarAppList.START_APP_MUSIC_FLAG, 1);
        TASSystem.mContext.startActivity(intent);
        return TASUtils.replyTTS(TASUtils.normal);
    }

    private String startRadio() {
        Intent intent = new Intent(MUSIC_ACTION);
        intent.addFlags(HUDConstants.NaviLane.NAVILANE_LEFT_AND_RIGHT_GRAY);
        intent.putExtra(CarAppList.START_APP_MUSIC_FLAG, 0);
        TASSystem.mContext.startActivity(intent);
        return TASUtils.replyTTS(TASUtils.normal);
    }
}
