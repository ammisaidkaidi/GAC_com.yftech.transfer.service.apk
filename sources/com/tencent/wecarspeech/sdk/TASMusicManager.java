package com.tencent.wecarspeech.sdk;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASMusicManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f193a = LogUtils.GLOBAL_LOG_TAG + TASMusicManager.class.getSimpleName();
    private static volatile TASMusicManager b;
    private IMusicClient c;
    private boolean d;
    private boolean e;

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IMusicClient {
        int addFavorite();

        int cancelFavorite();

        void closeApp(String str);

        void getCurrentMusic();

        @Deprecated
        void getPlayStatus();

        boolean isPlayModeSupported(int i);

        void next();

        void openApp(String str);

        void pause();

        void play();

        String playByMediaSource(String str, String str2);

        void playSong(String str, String str2, String str3);

        void pre();

        boolean searchSong(String str, String str2, String str3);

        void setPlayMode(int i);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class MusicModel {
        public String album;
        public String artist;
        public String name;

        public MusicModel(String str, String str2, String str3) {
            this.name = str;
            this.artist = str2;
            this.album = str3;
        }
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PlayMode {
        public static final int BY_ORDER = 1;
        public static final int ORDER_CYCLE = 3;
        public static final int REPEAT_SINGLE = 4;
        public static final int SHUFFLE = 2;
        public static final int SINGLE = 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a implements c.a {
        private a() {
        }

        private void a(byte[] bArr) {
            String str;
            String str2;
            String str3 = null;
            if (bArr != null) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    str = jSONObject.optString("e_music_name");
                    try {
                        str2 = jSONObject.optString("e_music_artist");
                        try {
                            str3 = jSONObject.optString("e_music_album");
                        } catch (JSONException e) {
                            e = e;
                            LogUtils.e(TASMusicManager.f193a, e.toString());
                            LogUtils.t(TASMusicManager.f193a, "==+playSong, name:" + str + " ,artist:" + str2 + " ,album:" + str3);
                            TASMusicManager.this.c.playSong(str, str2, str3);
                            LogUtils.t(TASMusicManager.f193a, "==-playSong, name:" + str + " ,artist:" + str2 + " ,album:" + str3);
                        }
                    } catch (JSONException e2) {
                        e = e2;
                        str2 = null;
                    }
                } catch (JSONException e3) {
                    e = e3;
                    str = null;
                    str2 = null;
                }
            } else {
                str = null;
                str2 = null;
            }
            LogUtils.t(TASMusicManager.f193a, "==+playSong, name:" + str + " ,artist:" + str2 + " ,album:" + str3);
            TASMusicManager.this.c.playSong(str, str2, str3);
            LogUtils.t(TASMusicManager.f193a, "==-playSong, name:" + str + " ,artist:" + str2 + " ,album:" + str3);
        }

        private void b(byte[] bArr) {
            int i = 1;
            if (bArr != null) {
                try {
                    i = new JSONObject(new String(bArr)).optInt(FocusCallbackDef.EXTRA_K_MUSIC_PLAYMODE);
                } catch (JSONException e) {
                    LogUtils.e(TASMusicManager.f193a, e.toString());
                }
            }
            LogUtils.t(TASMusicManager.f193a, "==+playmode");
            TASMusicManager.this.c.setPlayMode(i);
            LogUtils.t(TASMusicManager.f193a, "==-playmode");
        }

        private byte[] c(byte[] bArr) {
            int i = 1;
            if (bArr != null) {
                try {
                    i = new JSONObject(new String(bArr)).optInt(FocusCallbackDef.EXTRA_K_MUSIC_PLAYMODE);
                } catch (JSONException e) {
                    LogUtils.e(TASMusicManager.f193a, e.toString());
                }
            }
            LogUtils.t(TASMusicManager.f193a, "==+isPlayModeSupported");
            boolean isPlayModeSupported = TASMusicManager.this.c.isPlayModeSupported(i);
            LogUtils.t(TASMusicManager.f193a, "==-isPlayModeSupported");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(isPlayModeSupported ? 1 : 0).toJson());
            } catch (JSONException e2) {
                LogUtils.e(TASMusicManager.f193a, e2.toString());
            }
            return jSONObject.toString().getBytes();
        }

        private void d(byte[] bArr) {
            String str = null;
            if (bArr != null) {
                try {
                    str = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_MUSIC_MEDIA_SOURCE);
                } catch (JSONException e) {
                    LogUtils.e(TASMusicManager.f193a, e.toString());
                }
            }
            LogUtils.t(TASMusicManager.f193a, "==+openApp");
            TASMusicManager.this.c.openApp(str);
            LogUtils.t(TASMusicManager.f193a, "==-openApp");
        }

        private void e(byte[] bArr) {
            String str = null;
            if (bArr != null) {
                try {
                    str = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_MUSIC_MEDIA_SOURCE);
                } catch (JSONException e) {
                    LogUtils.e(TASMusicManager.f193a, e.toString());
                }
            }
            LogUtils.t(TASMusicManager.f193a, "==+closeApp");
            TASMusicManager.this.c.closeApp(str);
            LogUtils.t(TASMusicManager.f193a, "==-closeApp");
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x003d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:8:0x003e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private byte[] f(byte[] bArr) {
            String str;
            String str2;
            String playByMediaSource;
            if (bArr != null) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    str = jSONObject.optString(FocusCallbackDef.EXTRA_K_MUSIC_MEDIA_SOURCE);
                    try {
                        str2 = jSONObject.optString(FocusCallbackDef.EXTRA_K_MUSIC_MEDIA_JSON);
                    } catch (JSONException e) {
                        e = e;
                        LogUtils.e(TASMusicManager.f193a, e.toString());
                        str2 = null;
                        playByMediaSource = TASMusicManager.this.c.playByMediaSource(str, str2);
                        if (!TextUtils.isEmpty(playByMediaSource)) {
                        }
                    }
                } catch (JSONException e2) {
                    e = e2;
                    str = null;
                }
            } else {
                str = null;
                str2 = null;
            }
            playByMediaSource = TASMusicManager.this.c.playByMediaSource(str, str2);
            if (!TextUtils.isEmpty(playByMediaSource)) {
                return null;
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONObject jSONObject3 = new JSONObject(playByMediaSource);
                String optString = jSONObject3.optString("message");
                int optInt = jSONObject3.optInt(NotificationCompat.CATEGORY_STATUS);
                if (!TextUtils.isEmpty(optString)) {
                    optInt = 5;
                }
                jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(optInt, optString).toJson());
            } catch (JSONException e3) {
                LogUtils.e(TASMusicManager.f193a, e3.toString());
            }
            return jSONObject2.toString().getBytes();
        }

        private byte[] g(byte[] bArr) {
            String str;
            String str2;
            String str3 = null;
            if (bArr != null) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    str = jSONObject.optString("e_music_name");
                    try {
                        str2 = jSONObject.optString("e_music_artist");
                        try {
                            str3 = jSONObject.optString("e_music_album");
                        } catch (JSONException e) {
                            e = e;
                            LogUtils.e(TASMusicManager.f193a, e.toString());
                            LogUtils.t(TASMusicManager.f193a, "==+searchSong, name:" + str + " ,artist:" + str2 + " ,album:" + str3);
                            boolean searchSong = TASMusicManager.this.c.searchSong(str, str2, str3);
                            LogUtils.t(TASMusicManager.f193a, "==-searchSong, name:" + str + " ,artist:" + str2 + " ,album:" + str3);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(searchSong ? 1 : 0).toJson());
                            return jSONObject2.toString().getBytes();
                        }
                    } catch (JSONException e2) {
                        e = e2;
                        str2 = null;
                    }
                } catch (JSONException e3) {
                    e = e3;
                    str = null;
                    str2 = null;
                }
            } else {
                str = null;
                str2 = null;
            }
            LogUtils.t(TASMusicManager.f193a, "==+searchSong, name:" + str + " ,artist:" + str2 + " ,album:" + str3);
            boolean searchSong2 = TASMusicManager.this.c.searchSong(str, str2, str3);
            LogUtils.t(TASMusicManager.f193a, "==-searchSong, name:" + str + " ,artist:" + str2 + " ,album:" + str3);
            JSONObject jSONObject22 = new JSONObject();
            try {
                jSONObject22.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(searchSong2 ? 1 : 0).toJson());
            } catch (JSONException e4) {
                LogUtils.e(TASMusicManager.f193a, e4.toString());
            }
            return jSONObject22.toString().getBytes();
        }

        @Override // com.tencent.wecarspeech.sdk.c.a
        public void a(boolean z) {
            LogUtils.t(TASMusicManager.f193a, "+onSdkServiceConnectEvent, connected:" + z);
            if (TASMusicManager.this.c != null) {
                com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MUSIC_SET_ENABLED, new byte[0]);
            }
            if (TASMusicManager.this.d) {
                TASMusicManager.this.notifyA2dpStatus(true);
                TASMusicManager.this.d = false;
            }
            if (TASMusicManager.this.e) {
                TASMusicManager.this.notifyUSBStatus(true);
                TASMusicManager.this.e = false;
            }
            LogUtils.t(TASMusicManager.f193a, "-onSdkServiceConnectEvent, connected:" + z);
        }

        @Override // com.tencent.wecarspeech.sdk.c.a
        public byte[] a(String str, String str2, byte[] bArr, int i) {
            if (TASMusicManager.this.c == null) {
                LogUtils.w(TASMusicManager.f193a, "handlerMusicFocus return, mIMusicClient == null");
                return null;
            }
            String str3 = TASMusicManager.f193a;
            StringBuilder sb = new StringBuilder();
            sb.append("+callback, caller:");
            sb.append(str);
            sb.append(" ,callback:");
            sb.append(str2);
            sb.append(" ,data:");
            sb.append(bArr == null ? "null" : new String(bArr));
            LogUtils.t(str3, sb.toString());
            if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_OPEN)) {
                d(bArr);
            } else {
                if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_CLOSE)) {
                    return b(str, str2, bArr, i);
                }
                e(bArr);
            }
            String str4 = TASMusicManager.f193a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-callback, caller:");
            sb2.append(str);
            sb2.append(" ,callback:");
            sb2.append(str2);
            sb2.append(" ,data:");
            sb2.append(bArr == null ? "null" : new String(bArr));
            LogUtils.t(str4, sb2.toString());
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0089  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public byte[] b(String str, String str2, byte[] bArr, int i) {
            String str3;
            String str4;
            if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PLAY)) {
                LogUtils.t(TASMusicManager.f193a, "==+play");
                TASMusicManager.this.c.play();
                str3 = TASMusicManager.f193a;
                str4 = "==-play";
            } else {
                if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PAUSE)) {
                    if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_IS_PLAYMODE_SUPPORTED)) {
                        return c(bArr);
                    }
                    if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PLAYMODE)) {
                        b(bArr);
                    } else {
                        if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PLAY_MUSIC)) {
                            return str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_SEARCH_MUSIC) ? g(bArr) : str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PLAY_BY_MEDIASOURCE) ? f(bArr) : c(str, str2, bArr, i);
                        }
                        a(bArr);
                    }
                    String str5 = TASMusicManager.f193a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("-callback, caller:");
                    sb.append(str);
                    sb.append(" ,callback:");
                    sb.append(str2);
                    sb.append(" ,data:");
                    sb.append(bArr != null ? "null" : new String(bArr));
                    LogUtils.t(str5, sb.toString());
                    return null;
                }
                LogUtils.t(TASMusicManager.f193a, "==+pause");
                TASMusicManager.this.c.pause();
                str3 = TASMusicManager.f193a;
                str4 = "==-pause";
            }
            LogUtils.t(str3, str4);
            String str52 = TASMusicManager.f193a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-callback, caller:");
            sb2.append(str);
            sb2.append(" ,callback:");
            sb2.append(str2);
            sb2.append(" ,data:");
            sb2.append(bArr != null ? "null" : new String(bArr));
            LogUtils.t(str52, sb2.toString());
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0065  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public byte[] c(String str, String str2, byte[] bArr, int i) {
            String str3;
            String str4;
            if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_GET_PLAY_STATUS)) {
                if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_GET_CURRENT_INFO)) {
                    LogUtils.t(TASMusicManager.f193a, "==+getCurrentMusic");
                    TASMusicManager.this.c.getCurrentMusic();
                    str3 = TASMusicManager.f193a;
                    str4 = "==-getCurrentMusic";
                }
                String str5 = TASMusicManager.f193a;
                StringBuilder sb = new StringBuilder();
                sb.append("-callback, caller:");
                sb.append(str);
                sb.append(" ,callback:");
                sb.append(str2);
                sb.append(" ,data:");
                sb.append(bArr != null ? "null" : new String(bArr));
                LogUtils.t(str5, sb.toString());
                return null;
            }
            LogUtils.t(TASMusicManager.f193a, "==+getPlayStatus");
            TASMusicManager.this.c.getPlayStatus();
            str3 = TASMusicManager.f193a;
            str4 = "==-getPlayStatus";
            LogUtils.t(str3, str4);
            String str52 = TASMusicManager.f193a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-callback, caller:");
            sb2.append(str);
            sb2.append(" ,callback:");
            sb2.append(str2);
            sb2.append(" ,data:");
            sb2.append(bArr != null ? "null" : new String(bArr));
            LogUtils.t(str52, sb2.toString());
            return null;
        }
    }

    private TASMusicManager() {
        c.a().a(TASMusicManager.class.getSimpleName(), new a());
    }

    public static TASMusicManager getInstance() {
        if (b == null) {
            synchronized (TASMusicManager.class) {
                if (b == null) {
                    b = new TASMusicManager();
                }
            }
        }
        return b;
    }

    public void notifyA2dpStatus(boolean z) {
        LogUtils.t(f193a, "+notifyA2dpStatus, isConnected:" + z);
        this.d = z;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_MUSIC_A2DP_STATUS, z);
        } catch (JSONException e) {
            LogUtils.e(f193a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MUSIC_A2DP_STATUS, jSONObject.toString().getBytes());
        LogUtils.t(f193a, "-notifyA2dpStatus, isConnected:" + z);
    }

    public void notifyMusicList(List<MusicModel> list) {
        LogUtils.t(f193a, "+notifyMusicList");
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    for (MusicModel musicModel : list) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("e_music_name", musicModel.name);
                        jSONObject2.put("e_music_artist", musicModel.artist);
                        jSONObject2.put("e_music_album", musicModel.album);
                        jSONArray.put(jSONObject2);
                    }
                }
            } catch (JSONException e) {
                LogUtils.e(f193a, e.toString());
            }
        }
        jSONObject.put("list", jSONArray);
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MUSIC_SONG_LIST_UPDATE, jSONObject.toString().getBytes());
        LogUtils.t(f193a, "-notifyMusicList");
    }

    public void notifyPlayMusicInfo(MusicModel musicModel) {
        String str = f193a;
        StringBuilder sb = new StringBuilder();
        sb.append("+notifyPlayMusicInfo, mode:");
        sb.append(musicModel == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        JSONObject jSONObject = new JSONObject();
        if (musicModel != null) {
            try {
                if (musicModel.name != null) {
                    jSONObject.put("e_music_name", musicModel.name);
                }
                if (musicModel.artist != null) {
                    jSONObject.put("e_music_artist", musicModel.artist);
                }
                if (musicModel.album != null) {
                    jSONObject.put("e_music_album", musicModel.album);
                }
            } catch (JSONException e) {
                LogUtils.e(f193a, e.toString());
            }
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MUSIC_INFO, jSONObject.toString().getBytes());
        String str2 = f193a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-notifyPlayMusicInfo, mode:");
        sb2.append(musicModel == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void notifyPlayStatus(boolean z) {
        LogUtils.t(f193a, "+notifyPlayStatus, isPlaying:" + z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_MUSIC_PLAY_STATUS, z);
        } catch (JSONException e) {
            LogUtils.e(f193a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MUSIC_PLAY_STATUS, jSONObject.toString().getBytes());
        LogUtils.t(f193a, "-notifyPlayStatus, isPlaying:" + z);
    }

    public void notifyUSBStatus(boolean z) {
        LogUtils.t(f193a, "+notifyUSBStatus, isConnected:" + z);
        this.e = z;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_MUSIC_USB_STATUS, z);
        } catch (JSONException e) {
            LogUtils.e(f193a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MUSIC_USB_STATUS, jSONObject.toString().getBytes());
        LogUtils.t(f193a, "-notifyUSBStatus, isConnected:" + z);
    }

    public void setMusicClient(IMusicClient iMusicClient) {
        String str = f193a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setMusicClient, musicClient:");
        sb.append(iMusicClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.c = iMusicClient;
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MUSIC_SET_ENABLED, new byte[0]);
        String str2 = f193a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setMusicClient, musicClient:");
        sb2.append(iMusicClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }
}
