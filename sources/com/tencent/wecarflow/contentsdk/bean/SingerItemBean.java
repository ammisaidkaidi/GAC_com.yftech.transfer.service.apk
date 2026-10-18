package com.tencent.wecarflow.contentsdk.bean;

/* loaded from: /home/user/work/dex/classes.dex */
public class SingerItemBean {
    private String album_num;
    private long singer_id;
    private String singer_mid;
    private String singer_name;
    private String singer_pic;
    private String singer_title;
    private String song_num;

    public String getAlbum_num() {
        return this.album_num;
    }

    public void setAlbum_num(String str) {
        this.album_num = str;
    }

    public String getSong_num() {
        return this.song_num;
    }

    public void setSong_num(String str) {
        this.song_num = str;
    }

    public String getSinger_pic() {
        return this.singer_pic;
    }

    public void setSinger_pic(String str) {
        this.singer_pic = str;
    }

    public String toString() {
        return "singer_id : " + this.singer_id + " singer_mid : " + this.singer_mid + " singer_name : " + this.singer_name + " singer_title " + this.singer_title;
    }

    public long getSinger_id() {
        return this.singer_id;
    }

    public void setSinger_id(long j) {
        this.singer_id = j;
    }

    public String getSinger_mid() {
        return this.singer_mid;
    }

    public void setSinger_mid(String str) {
        this.singer_mid = str;
    }

    public String getSinger_name() {
        return this.singer_name;
    }

    public void setSinger_name(String str) {
        this.singer_name = str;
    }

    public String getSinger_title() {
        return this.singer_title;
    }

    public void setSinger_title(String str) {
        this.singer_title = str;
    }
}
