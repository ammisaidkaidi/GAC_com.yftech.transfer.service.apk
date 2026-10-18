package com.tencent.wecarbase.taibaseui;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class InfoModel implements Parcelable {
    public static final Parcelable.Creator<InfoModel> CREATOR = new Parcelable.Creator<InfoModel>() { // from class: com.tencent.wecarbase.taibaseui.InfoModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InfoModel createFromParcel(Parcel parcel) {
            return new InfoModel(parcel.readString(), parcel.readString(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InfoModel[] newArray(int i) {
            return new InfoModel[i];
        }
    };
    private int imageResId;
    private String title1;
    private String title2;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getTitle1() {
        return this.title1;
    }

    public String getTitle2() {
        return this.title2;
    }

    public int getImageResId() {
        return this.imageResId;
    }

    public void setTitle1(String str) {
        this.title1 = str;
    }

    public void setTitle2(String str) {
        this.title2 = str;
    }

    public void setImageResId(int i) {
        this.imageResId = i;
    }

    public InfoModel(String str, String str2, int i) {
        this.title1 = str;
        this.title2 = str2;
        this.imageResId = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.title1);
        parcel.writeString(this.title2);
        parcel.writeInt(this.imageResId);
    }
}
