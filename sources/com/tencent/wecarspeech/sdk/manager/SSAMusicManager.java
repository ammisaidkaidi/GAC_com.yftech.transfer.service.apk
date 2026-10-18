package com.tencent.wecarspeech.sdk.manager;

import android.support.v4.media.session.PlaybackStateCompat;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.api.IMusicClient;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.model.MusicModel;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SSAMusicManager extends b {
    private static volatile SSAMusicManager b;
    private IMusicClient<ActionRet> c;
    private boolean d;
    private boolean e;

    private SSAMusicManager() {
    }

    public static SSAMusicManager getInstance() {
        if (b == null) {
            synchronized (SSAMusicManager.class) {
                if (b == null) {
                    b = new SSAMusicManager();
                }
            }
        }
        return b;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(this.f207a, "+onSdkServiceConnectEvent, connected:" + z);
        if (this.c != null) {
            a.a().a(ActionCallbackDef.ACTION_MUSIC_SET_ENABLED, new byte[0]);
        }
        if (this.d) {
            notifyA2dpStatus(true);
            this.d = false;
        }
        if (this.e) {
            notifyUSBStatus(true);
            this.e = false;
        }
        LogUtils.t(this.f207a, "-onSdkServiceConnectEvent, connected:" + z);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0344  */
    @Override // com.tencent.wecarspeech.sdk.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        JSONObject jSONObject;
        ActionRet searchSong;
        String str8;
        StringBuilder sb;
        String str9;
        ActionRet actionRet = null;
        r0 = null;
        String optString = null;
        r0 = null;
        String optString2 = null;
        r0 = null;
        r0 = null;
        r0 = null;
        String optString3 = null;
        r0 = null;
        String optString4 = null;
        if (this.c == null) {
            LogUtils.w(this.f207a, "handlerMusicFocus return, mIMusicClient == null");
            return null;
        }
        String str10 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("+callback, caller:");
        sb2.append(str);
        sb2.append(" ,callback:");
        sb2.append(str2);
        sb2.append(" ,data:");
        sb2.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str10, sb2.toString());
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_OPEN)) {
            if (bArr != null) {
                try {
                    optString = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_MUSIC_MEDIA_SOURCE);
                } catch (JSONException e) {
                    LogUtils.e(this.f207a, e.toString());
                }
            }
            LogUtils.t(this.f207a, "==+openApp");
            actionRet = this.c.openApp(optString);
            str3 = this.f207a;
            str4 = "==-openApp";
        } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_CLOSE)) {
            if (bArr != null) {
                try {
                    optString2 = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_MUSIC_MEDIA_SOURCE);
                } catch (JSONException e2) {
                    LogUtils.e(this.f207a, e2.toString());
                }
            }
            LogUtils.t(this.f207a, "==+closeApp");
            actionRet = this.c.closeApp(optString2);
            str3 = this.f207a;
            str4 = "==-closeApp";
        } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PLAY)) {
            LogUtils.t(this.f207a, "==+play");
            actionRet = this.c.play();
            str3 = this.f207a;
            str4 = "==-play";
        } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PAUSE)) {
            LogUtils.t(this.f207a, "==+pause");
            actionRet = this.c.pause();
            str3 = this.f207a;
            str4 = "==-pause";
        } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_NEXT)) {
            LogUtils.t(this.f207a, "==+next");
            actionRet = this.c.next();
            str3 = this.f207a;
            str4 = "==-next";
        } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PRE)) {
            LogUtils.t(this.f207a, "==+pre");
            actionRet = this.c.pre();
            str3 = this.f207a;
            str4 = "==-pre";
        } else {
            int i2 = 1;
            if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_IS_PLAYMODE_SUPPORTED)) {
                if (bArr != null) {
                    try {
                        i2 = new JSONObject(new String(bArr)).optInt(FocusCallbackDef.EXTRA_K_MUSIC_PLAYMODE);
                    } catch (JSONException e3) {
                        LogUtils.e(this.f207a, e3.toString());
                    }
                }
                LogUtils.t(this.f207a, "==+isPlayModeSupported");
                actionRet = this.c.isPlayModeSupported(i2);
                str3 = this.f207a;
                str4 = "==-isPlayModeSupported";
            } else {
                if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PLAYMODE)) {
                    if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PLAY_MUSIC)) {
                        if (bArr != null) {
                            try {
                                JSONObject jSONObject2 = new JSONObject(new String(bArr));
                                str6 = jSONObject2.optString("e_music_name");
                                try {
                                    str7 = jSONObject2.optString("e_music_artist");
                                    try {
                                        optString3 = jSONObject2.optString("e_music_album");
                                    } catch (JSONException e4) {
                                        e = e4;
                                        LogUtils.e(this.f207a, e.toString());
                                        LogUtils.t(this.f207a, "==+playSong, name:" + str6 + " ,artist:" + str7 + " ,album:" + optString3);
                                        searchSong = this.c.playSong(str6, str7, optString3);
                                        str8 = this.f207a;
                                        sb = new StringBuilder();
                                        str9 = "==-playSong, name:";
                                        sb.append(str9);
                                        sb.append(str6);
                                        sb.append(" ,artist:");
                                        sb.append(str7);
                                        sb.append(" ,album:");
                                        sb.append(optString3);
                                        LogUtils.t(str8, sb.toString());
                                        actionRet = searchSong;
                                        String str11 = this.f207a;
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("-callback, caller:");
                                        sb3.append(str);
                                        sb3.append(" ,callback:");
                                        sb3.append(str2);
                                        sb3.append(" ,data:");
                                        sb3.append(bArr != null ? "null" : new String(bArr));
                                        LogUtils.t(str11, sb3.toString());
                                        return a(actionRet);
                                    }
                                } catch (JSONException e5) {
                                    e = e5;
                                    str7 = null;
                                }
                            } catch (JSONException e6) {
                                e = e6;
                                str6 = null;
                                str7 = null;
                            }
                        } else {
                            str6 = null;
                            str7 = null;
                        }
                        LogUtils.t(this.f207a, "==+playSong, name:" + str6 + " ,artist:" + str7 + " ,album:" + optString3);
                        searchSong = this.c.playSong(str6, str7, optString3);
                        str8 = this.f207a;
                        sb = new StringBuilder();
                        str9 = "==-playSong, name:";
                    } else {
                        if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_SEARCH_MUSIC)) {
                            if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_PLAY_BY_MEDIASOURCE)) {
                                if (bArr != null) {
                                    try {
                                        JSONObject jSONObject3 = new JSONObject(new String(bArr));
                                        str5 = jSONObject3.optString(FocusCallbackDef.EXTRA_K_MUSIC_MEDIA_SOURCE);
                                        try {
                                            optString4 = jSONObject3.optString(FocusCallbackDef.EXTRA_K_MUSIC_MEDIA_JSON);
                                        } catch (JSONException e7) {
                                            e = e7;
                                            LogUtils.e(this.f207a, e.toString());
                                            actionRet = this.c.playByMediaSource(str5, optString4);
                                            String str112 = this.f207a;
                                            StringBuilder sb32 = new StringBuilder();
                                            sb32.append("-callback, caller:");
                                            sb32.append(str);
                                            sb32.append(" ,callback:");
                                            sb32.append(str2);
                                            sb32.append(" ,data:");
                                            sb32.append(bArr != null ? "null" : new String(bArr));
                                            LogUtils.t(str112, sb32.toString());
                                            return a(actionRet);
                                        }
                                    } catch (JSONException e8) {
                                        e = e8;
                                        str5 = null;
                                    }
                                } else {
                                    str5 = null;
                                }
                                actionRet = this.c.playByMediaSource(str5, optString4);
                            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_ADD_FAVORITE)) {
                                LogUtils.t(this.f207a, "==+addFavorite");
                                actionRet = this.c.addFavorite();
                                str3 = this.f207a;
                                str4 = "==-addFavorite";
                            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MUSIC_CANCEL_FAVORITE)) {
                                LogUtils.t(this.f207a, "==+cancelFavorite");
                                actionRet = this.c.cancelFavorite();
                                str3 = this.f207a;
                                str4 = "==-cancelFavorite";
                            }
                            String str1122 = this.f207a;
                            StringBuilder sb322 = new StringBuilder();
                            sb322.append("-callback, caller:");
                            sb322.append(str);
                            sb322.append(" ,callback:");
                            sb322.append(str2);
                            sb322.append(" ,data:");
                            sb322.append(bArr != null ? "null" : new String(bArr));
                            LogUtils.t(str1122, sb322.toString());
                            return a(actionRet);
                        }
                        if (bArr != null) {
                            try {
                                jSONObject = new JSONObject(new String(bArr));
                                str6 = jSONObject.optString("e_music_name");
                                try {
                                    str7 = jSONObject.optString("e_music_artist");
                                } catch (JSONException e9) {
                                    e = e9;
                                    str7 = null;
                                }
                            } catch (JSONException e10) {
                                e = e10;
                                str6 = null;
                                str7 = null;
                            }
                            try {
                                optString3 = jSONObject.optString("e_music_album");
                            } catch (JSONException e11) {
                                e = e11;
                                LogUtils.e(this.f207a, e.toString());
                                LogUtils.t(this.f207a, "==+searchSong, name:" + str6 + " ,artist:" + str7 + " ,album:" + optString3);
                                searchSong = this.c.searchSong(str6, str7, optString3);
                                str8 = this.f207a;
                                sb = new StringBuilder();
                                str9 = "==-searchSong, name:";
                                sb.append(str9);
                                sb.append(str6);
                                sb.append(" ,artist:");
                                sb.append(str7);
                                sb.append(" ,album:");
                                sb.append(optString3);
                                LogUtils.t(str8, sb.toString());
                                actionRet = searchSong;
                                String str11222 = this.f207a;
                                StringBuilder sb3222 = new StringBuilder();
                                sb3222.append("-callback, caller:");
                                sb3222.append(str);
                                sb3222.append(" ,callback:");
                                sb3222.append(str2);
                                sb3222.append(" ,data:");
                                sb3222.append(bArr != null ? "null" : new String(bArr));
                                LogUtils.t(str11222, sb3222.toString());
                                return a(actionRet);
                            }
                        } else {
                            str6 = null;
                            str7 = null;
                        }
                        LogUtils.t(this.f207a, "==+searchSong, name:" + str6 + " ,artist:" + str7 + " ,album:" + optString3);
                        searchSong = this.c.searchSong(str6, str7, optString3);
                        str8 = this.f207a;
                        sb = new StringBuilder();
                        str9 = "==-searchSong, name:";
                    }
                    sb.append(str9);
                    sb.append(str6);
                    sb.append(" ,artist:");
                    sb.append(str7);
                    sb.append(" ,album:");
                    sb.append(optString3);
                    LogUtils.t(str8, sb.toString());
                    actionRet = searchSong;
                    String str112222 = this.f207a;
                    StringBuilder sb32222 = new StringBuilder();
                    sb32222.append("-callback, caller:");
                    sb32222.append(str);
                    sb32222.append(" ,callback:");
                    sb32222.append(str2);
                    sb32222.append(" ,data:");
                    sb32222.append(bArr != null ? "null" : new String(bArr));
                    LogUtils.t(str112222, sb32222.toString());
                    return a(actionRet);
                }
                if (bArr != null) {
                    try {
                        i2 = new JSONObject(new String(bArr)).optInt(FocusCallbackDef.EXTRA_K_MUSIC_PLAYMODE);
                    } catch (JSONException e12) {
                        LogUtils.e(this.f207a, e12.toString());
                    }
                }
                LogUtils.t(this.f207a, "==+playmode");
                actionRet = this.c.setPlayMode(i2);
                str3 = this.f207a;
                str4 = "==-playmode";
            }
        }
        LogUtils.t(str3, str4);
        String str1122222 = this.f207a;
        StringBuilder sb322222 = new StringBuilder();
        sb322222.append("-callback, caller:");
        sb322222.append(str);
        sb322222.append(" ,callback:");
        sb322222.append(str2);
        sb322222.append(" ,data:");
        sb322222.append(bArr != null ? "null" : new String(bArr));
        LogUtils.t(str1122222, sb322222.toString());
        return a(actionRet);
    }

    public void notifyA2dpStatus(boolean z) {
        LogUtils.t(this.f207a, "+notifyA2dpStatus, isConnected:" + z);
        this.d = z;
        a(ActionCallbackDef.EXTRA_K_MUSIC_A2DP_STATUS, z);
        a.a().a(ActionCallbackDef.ACTION_MUSIC_A2DP_STATUS, a());
        LogUtils.t(this.f207a, "-notifyA2dpStatus, isConnected:" + z);
    }

    public int notifyMusicList(List<MusicModel> list) {
        LogUtils.t(this.f207a, "+notifyMusicList");
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        int i = 0;
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    int i2 = 0;
                    for (MusicModel musicModel : list) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("e_music_name", musicModel.name);
                        jSONObject2.put("e_music_artist", musicModel.artist);
                        jSONObject2.put("e_music_album", musicModel.album);
                        jSONArray.put(jSONObject2);
                        i2++;
                        if (i2 >= 1500) {
                            break;
                        }
                    }
                }
            } catch (JSONException e) {
                LogUtils.e(this.f207a, e.toString());
            }
        }
        jSONObject.put("list", jSONArray);
        if (jSONArray.toString().getBytes().length <= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            a.a().a(ActionCallbackDef.ACTION_MUSIC_SONG_LIST_UPDATE, jSONObject.toString().getBytes());
        } else {
            i = -1;
        }
        LogUtils.t(this.f207a, "-notifyMusicList");
        return i;
    }

    public void notifyPlayMusicInfo(MusicModel musicModel) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+notifyPlayMusicInfo, mode:");
        sb.append(musicModel == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (musicModel != null) {
            if (musicModel.name != null) {
                a("e_music_name", musicModel.name);
            }
            if (musicModel.artist != null) {
                a("e_music_artist", musicModel.artist);
            }
            if (musicModel.album != null) {
                a("e_music_album", musicModel.album);
            }
        }
        a.a().a(ActionCallbackDef.ACTION_MUSIC_INFO, a());
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-notifyPlayMusicInfo, mode:");
        sb2.append(musicModel == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void notifyPlayStatus(boolean z) {
        LogUtils.t(this.f207a, "+notifyPlayStatus, isPlaying:" + z);
        a(ActionCallbackDef.EXTRA_K_MUSIC_PLAY_STATUS, z);
        a.a().a(ActionCallbackDef.ACTION_MUSIC_PLAY_STATUS, a());
        LogUtils.t(this.f207a, "-notifyPlayStatus, isPlaying:" + z);
    }

    public void notifyUSBStatus(boolean z) {
        LogUtils.t(this.f207a, "+notifyUSBStatus, isConnected:" + z);
        this.e = z;
        a(ActionCallbackDef.EXTRA_K_MUSIC_USB_STATUS, z);
        a.a().a(ActionCallbackDef.ACTION_MUSIC_USB_STATUS, a());
        LogUtils.t(this.f207a, "-notifyUSBStatus, isConnected:" + z);
    }

    public void setMusicClient(IMusicClient<ActionRet> iMusicClient) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setMusicClient, musicClient:");
        sb.append(iMusicClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.c = iMusicClient;
        a.a().a(ActionCallbackDef.ACTION_MUSIC_SET_ENABLED, new byte[0]);
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setMusicClient, musicClient:");
        sb2.append(iMusicClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }
}
