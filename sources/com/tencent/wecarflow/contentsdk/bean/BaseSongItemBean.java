package com.tencent.wecarflow.contentsdk.bean;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseSongItemBean extends BaseMediaBean {
    String album_id;
    String album_mid;
    String album_name;
    String album_pic_300x300;
    int hot;
    boolean isSelect = false;
    List<SingerItemBean> other_singer_list;
    int playable;
    String public_time;
    String singer_id;
    String singer_mid;
    String singer_name;
    String singer_pic_300x300;
    String singer_title;
    long song_id;
    String song_mid;
    String song_name;
    long song_play_time;
    String song_play_url;
    String song_play_url_hq;
    String song_play_url_sq;
    String song_play_url_standard;
    int song_size;
    int song_size_hq;
    int song_size_sq;
    int song_size_standard;
    int user_own_rule;
    long uuid;

    @Override // com.tencent.wecarflow.contentsdk.bean.BaseMediaBean
    public String getItemType() {
        return "song";
    }

    @Override // com.tencent.wecarflow.contentsdk.bean.BaseMediaBean
    public boolean isItemRead() {
        return false;
    }

    public String getSinger_pic_300x300() {
        return this.singer_pic_300x300;
    }

    public long getSong_id() {
        return this.song_id;
    }

    public String getAlbum_name() {
        return this.album_name;
    }

    public String getSong_play_url_sq() {
        if (TextUtils.isEmpty(this.song_play_url_sq)) {
            return getSong_play_url_hq();
        }
        return this.song_play_url_sq;
    }

    public String getSong_play_url_hq() {
        if (TextUtils.isEmpty(this.song_play_url_hq)) {
            return getSong_play_url_standard();
        }
        return this.song_play_url_hq;
    }

    public String getSong_play_url_standard() {
        if (TextUtils.isEmpty(this.song_play_url_standard)) {
            return getSong_play_url();
        }
        return this.song_play_url_standard;
    }

    public String getSong_mid() {
        return this.song_mid;
    }

    public String getSong_play_url() {
        return this.song_play_url;
    }

    public String getSinger_name() {
        String str = "";
        if (this.other_singer_list != null && !this.other_singer_list.isEmpty()) {
            Iterator<SingerItemBean> it = this.other_singer_list.iterator();
            while (it.hasNext()) {
                str = str + "  " + it.next().getSinger_name();
            }
        }
        return this.singer_name + str;
    }

    public String getSong_name() {
        return this.song_name;
    }

    public String getSinger_title() {
        return this.singer_title;
    }

    public int getSong_size_standard() {
        return this.song_size_standard;
    }

    public int getSong_size() {
        return this.song_size;
    }

    public int getSong_size_hq() {
        return this.song_size_hq;
    }

    public int getSong_size_sq() {
        return this.song_size_sq;
    }

    public String getPublic_time() {
        return this.public_time;
    }

    public List<SingerItemBean> getOther_singer_list() {
        return this.other_singer_list;
    }

    public String getAlbum_pic_300x300() {
        if (!TextUtils.isEmpty(this.album_pic_300x300)) {
            return this.album_pic_300x300;
        }
        return getSinger_pic_300x300();
    }

    public boolean isPlayable() {
        return this.user_own_rule == 1 && this.playable == 1;
    }

    @Override // com.tencent.wecarflow.contentsdk.bean.BaseMediaBean
    public String getItemTitle() {
        return this.song_name;
    }

    public boolean isItemPlayDirect() {
        return !TextUtils.isEmpty(getSong_play_url_sq());
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setSelect(boolean z) {
        this.isSelect = z;
    }

    public long getUuid() {
        return this.uuid;
    }

    public void setUuid(long j) {
        this.uuid = j;
    }

    public String getAlbum_id() {
        return this.album_id;
    }

    public void setAlbum_id(String str) {
        this.album_id = str;
    }

    public long getSong_play_time() {
        return this.song_play_time;
    }

    public void setSong_play_time(long j) {
        this.song_play_time = j;
    }
}
