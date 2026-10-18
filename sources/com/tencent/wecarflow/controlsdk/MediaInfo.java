package com.tencent.wecarflow.controlsdk;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaInfo implements Parcelable {
    public static final Parcelable.Creator<MediaInfo> CREATOR = new Parcelable.Creator<MediaInfo>() { // from class: com.tencent.wecarflow.controlsdk.MediaInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaInfo createFromParcel(Parcel parcel) {
            return new MediaInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaInfo[] newArray(int i) {
            return new MediaInfo[i];
        }
    };
    private boolean isChangedByPlay;
    private boolean isFavorable;
    private boolean isFavored;
    private int itemIndex;

    @SerializedName("itemAuthor")
    private String mediaAuthor;
    private String mediaGroupName;

    @SerializedName("itemImageUrl")
    private String mediaImage;

    @SerializedName("itemTitle")
    private String mediaName;
    private int mediaPlaymode;

    @SerializedName("itemType")
    private String mediaType;
    private boolean shouldSetPlaymode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MediaInfo() {
    }

    protected MediaInfo(Parcel parcel) {
        this.itemIndex = parcel.readInt();
        this.mediaName = parcel.readString();
        this.mediaAuthor = parcel.readString();
        this.mediaImage = parcel.readString();
        this.mediaType = parcel.readString();
        this.mediaGroupName = parcel.readString();
        this.isFavorable = parcel.readByte() != 0;
        this.isFavored = parcel.readByte() != 0;
        this.shouldSetPlaymode = parcel.readByte() != 0;
        this.mediaPlaymode = parcel.readInt();
    }

    public String getMediaGroupName() {
        return this.mediaGroupName;
    }

    public void setMediaGroupName(String str) {
        this.mediaGroupName = str;
    }

    public String getMediaName() {
        return this.mediaName;
    }

    public void setMediaName(String str) {
        this.mediaName = str;
    }

    public void setItemIndex(int i) {
        this.itemIndex = i;
    }

    public int getItemIndex() {
        return this.itemIndex;
    }

    public String getMediaAuthor() {
        return this.mediaAuthor;
    }

    public void setMediaAuthor(String str) {
        this.mediaAuthor = str;
    }

    public String getMediaImage() {
        return this.mediaImage;
    }

    public void setMediaImage(String str) {
        this.mediaImage = str;
    }

    public String getMediaType() {
        return this.mediaType;
    }

    public void setMediaType(String str) {
        this.mediaType = str;
    }

    public boolean isFavorable() {
        return this.isFavorable;
    }

    public void setFavorable(boolean z) {
        this.isFavorable = z;
    }

    public boolean isFavored() {
        return this.isFavored;
    }

    public void setFavored(boolean z) {
        this.isFavored = z;
    }

    public boolean isShouldSetPlaymode() {
        return this.shouldSetPlaymode;
    }

    public void setShouldSetPlaymode(boolean z) {
        this.shouldSetPlaymode = z;
    }

    public int getMediaPlaymode() {
        return this.mediaPlaymode;
    }

    public void setMediaPlaymode(int i) {
        this.mediaPlaymode = i;
    }

    public boolean isChangedByPlay() {
        return this.isChangedByPlay;
    }

    public void setChangedByPlay(boolean z) {
        this.isChangedByPlay = z;
    }

    public String toString() {
        return "mediaName: " + this.mediaName + ", mediaAuthor: " + this.mediaAuthor + ", isFavorable: " + this.isFavorable + ", isFavored: " + this.isFavored + ", shouldSetPlaymode: " + this.shouldSetPlaymode + ", mediaPlaymode: " + this.mediaPlaymode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.itemIndex);
        parcel.writeString(this.mediaName);
        parcel.writeString(this.mediaAuthor);
        parcel.writeString(this.mediaImage);
        parcel.writeString(this.mediaType);
        parcel.writeString(this.mediaGroupName);
        parcel.writeByte(this.isFavorable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isFavored ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.shouldSetPlaymode ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mediaPlaymode);
    }
}
