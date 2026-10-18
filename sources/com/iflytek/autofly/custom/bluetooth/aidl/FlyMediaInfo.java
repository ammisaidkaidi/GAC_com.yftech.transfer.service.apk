package com.iflytek.autofly.custom.bluetooth.aidl;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class FlyMediaInfo implements Parcelable {
    public static final Parcelable.Creator<FlyMediaInfo> CREATOR = new Parcelable.Creator<FlyMediaInfo>() { // from class: com.iflytek.autofly.custom.bluetooth.aidl.FlyMediaInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlyMediaInfo[] newArray(int i) {
            return new FlyMediaInfo[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlyMediaInfo createFromParcel(Parcel parcel) {
            return new FlyMediaInfo(parcel);
        }
    };
    private String albumName;
    private String artistName;
    private String mediaTitle;
    private long songLength;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FlyMediaInfo() {
        this.songLength = 0L;
        this.mediaTitle = "unknown";
        this.artistName = "unknown";
        this.albumName = "unknown";
        this.songLength = 0L;
    }

    public FlyMediaInfo(Parcel parcel) {
        this.songLength = 0L;
        this.mediaTitle = parcel.readString();
        this.artistName = parcel.readString();
        this.albumName = parcel.readString();
        this.songLength = parcel.readLong();
    }

    public String getMeidaTitle() {
        return this.mediaTitle;
    }

    public void setMeidaTitle(String str) {
        this.mediaTitle = str;
    }

    public String getArtistName() {
        return this.artistName;
    }

    public void setArtistName(String str) {
        this.artistName = str;
    }

    public String getAlbumName() {
        return this.albumName;
    }

    public void setAlbumName(String str) {
        this.albumName = str;
    }

    public long getSongLength() {
        return this.songLength;
    }

    public void setSongLength(long j) {
        this.songLength = j;
    }

    public String toString() {
        return "FlyMediaInfo{mediaTitle='" + this.mediaTitle + "', artistName='" + this.artistName + "', albumName='" + this.albumName + "', songLength=" + this.songLength + '}';
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FlyMediaInfo)) {
            return false;
        }
        FlyMediaInfo flyMediaInfo = (FlyMediaInfo) obj;
        return (flyMediaInfo.mediaTitle == null || flyMediaInfo.artistName == null || flyMediaInfo.albumName == null) ? this.mediaTitle == null || this.artistName == null || this.albumName == null : flyMediaInfo.mediaTitle.equals(this.mediaTitle) && flyMediaInfo.artistName.equals(this.artistName) && flyMediaInfo.albumName.equals(this.albumName) && flyMediaInfo.songLength == this.songLength;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mediaTitle);
        parcel.writeString(this.artistName);
        parcel.writeString(this.albumName);
        parcel.writeLong(this.songLength);
    }
}
