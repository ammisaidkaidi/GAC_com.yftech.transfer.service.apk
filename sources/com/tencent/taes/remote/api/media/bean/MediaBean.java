package com.tencent.taes.remote.api.media.bean;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaBean implements Parcelable {
    public static final Parcelable.Creator<MediaBean> CREATOR = new Parcelable.Creator<MediaBean>() { // from class: com.tencent.taes.remote.api.media.bean.MediaBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaBean createFromParcel(Parcel parcel) {
            return new MediaBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaBean[] newArray(int i) {
            return new MediaBean[i];
        }
    };
    public static final String KEY_HOT = "hot";
    public static final String TYPE_BOOK = "book";
    public static final String TYPE_NEWS = "news";
    public static final String TYPE_RADIO = "radio";
    public static final String TYPE_SONG = "song";
    private Bundle extras;
    private String itemAuthor;
    private String itemContainerId;
    private String itemContainerTitle;
    private String itemContent;
    private String itemId;
    private String itemImageUrl;
    private int itemIndex;
    private int itemOffset;
    private int itemPlayDirect;
    private String itemTitle;
    private int itemTotal;
    private String itemType;
    private String itemUrl;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MediaBean() {
    }

    public String getItemType() {
        return this.itemType;
    }

    public void setItemType(String str) {
        this.itemType = str;
    }

    public String getItemTitle() {
        return this.itemTitle;
    }

    public void setItemTitle(String str) {
        this.itemTitle = str;
    }

    public String getItemAuthor() {
        return this.itemAuthor;
    }

    public void setItemAuthor(String str) {
        this.itemAuthor = str;
    }

    public String getItemId() {
        return this.itemId;
    }

    public void setItemId(String str) {
        this.itemId = str;
    }

    public int getItemIndex() {
        return this.itemIndex;
    }

    public void setItemIndex(int i) {
        this.itemIndex = i;
    }

    public String getItemImageUrl() {
        return this.itemImageUrl;
    }

    public void setItemImageUrl(String str) {
        this.itemImageUrl = str;
    }

    public String getItemContent() {
        return this.itemContent;
    }

    public void setItemContent(String str) {
        this.itemContent = str;
    }

    public boolean isItemPlayDirect() {
        return this.itemPlayDirect == 1;
    }

    public void setItemPlayDirect(int i) {
        this.itemPlayDirect = i;
    }

    public String getItemUrl() {
        return this.itemUrl;
    }

    public void setItemUrl(String str) {
        this.itemUrl = str;
    }

    public int getItemTotal() {
        return this.itemTotal;
    }

    public void setItemTotal(int i) {
        this.itemTotal = i;
    }

    public int getItemOffset() {
        return this.itemOffset;
    }

    public void setItemOffset(int i) {
        this.itemOffset = i;
    }

    public String getItemContainerId() {
        return this.itemContainerId;
    }

    public void setItemContainerId(String str) {
        this.itemContainerId = str;
    }

    public String getItemContainerTitle() {
        return this.itemContainerTitle;
    }

    public void setItemContainerTitle(String str) {
        this.itemContainerTitle = str;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public void setExtras(Bundle bundle) {
        this.extras = bundle;
    }

    protected MediaBean(Parcel parcel) {
        this.itemType = parcel.readString();
        this.itemTitle = parcel.readString();
        this.itemAuthor = parcel.readString();
        this.itemId = parcel.readString();
        this.itemIndex = parcel.readInt();
        this.itemImageUrl = parcel.readString();
        this.itemContent = parcel.readString();
        this.itemPlayDirect = parcel.readInt();
        this.itemUrl = parcel.readString();
        this.itemTotal = parcel.readInt();
        this.itemOffset = parcel.readInt();
        this.itemContainerId = parcel.readString();
        this.itemContainerTitle = parcel.readString();
        this.extras = parcel.readBundle();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.itemType);
        parcel.writeString(this.itemTitle);
        parcel.writeString(this.itemAuthor);
        parcel.writeString(this.itemId);
        parcel.writeInt(this.itemIndex);
        parcel.writeString(this.itemImageUrl);
        parcel.writeString(this.itemContent);
        parcel.writeInt(this.itemPlayDirect);
        parcel.writeString(this.itemUrl);
        parcel.writeInt(this.itemTotal);
        parcel.writeInt(this.itemOffset);
        parcel.writeString(this.itemContainerId);
        parcel.writeString(this.itemContainerTitle);
        parcel.writeBundle(this.extras);
    }
}
