package com.desaysv.mixmedia.media.data.bean;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class Album implements Serializable {
    private String albumId;
    private String artist;
    private String artistId;
    private int chargeType;
    private String description;
    private String extra;
    private Boolean favor;
    private String id;
    private String imageUri;
    private String imageUrl;
    private long lastPlay = 0;
    private int playCount;
    private Boolean playFree;
    private String publishTime;
    private int resId;
    private String tag;
    private String title;
    private int total;
    private int type;

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getAlbumId() {
        return this.albumId;
    }

    public void setAlbumId(String str) {
        this.albumId = str;
    }

    public String getArtistId() {
        return this.artistId;
    }

    public void setArtistId(String str) {
        this.artistId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getArtist() {
        return this.artist;
    }

    public void setArtist(String str) {
        this.artist = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getTag() {
        return this.tag;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public String getImageUri() {
        return this.imageUri;
    }

    public void setImageUri(String str) {
        this.imageUri = str;
    }

    public int getResId() {
        return this.resId;
    }

    public void setResId(int i) {
        this.resId = i;
    }

    public Boolean getFavor() {
        return this.favor;
    }

    public void setFavor(Boolean bool) {
        this.favor = bool;
    }

    public Boolean getPlayFree() {
        return this.playFree;
    }

    public void setPlayFree(Boolean bool) {
        this.playFree = bool;
    }

    public int getChargeType() {
        return this.chargeType;
    }

    public void setChargeType(int i) {
        this.chargeType = i;
    }

    public int getPlayCount() {
        return this.playCount;
    }

    public void setPlayCount(int i) {
        this.playCount = i;
    }

    public int getTotal() {
        return this.total;
    }

    public void setTotal(int i) {
        this.total = i;
    }

    public String getPublishTime() {
        return this.publishTime;
    }

    public void setPublishTime(String str) {
        this.publishTime = str;
    }

    public String getExtra() {
        return this.extra;
    }

    public void setExtra(String str) {
        this.extra = str;
    }

    public long getLastPlay() {
        return this.lastPlay;
    }

    public void setLastPlay(long j) {
        this.lastPlay = j;
    }
}
