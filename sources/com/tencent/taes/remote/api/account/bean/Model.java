package com.tencent.taes.remote.api.account.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: /home/user/work/dex/classes.dex */
public class Model implements Parcelable {
    public static final Parcelable.Creator<Model> CREATOR = new Parcelable.Creator<Model>() { // from class: com.tencent.taes.remote.api.account.bean.Model.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Model createFromParcel(Parcel parcel) {
            return new Model(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Model[] newArray(int i) {
            return new Model[i];
        }
    };
    private int bizCode;

    @SerializedName("err")
    public int errorCode;
    private String info;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Model() {
        this.errorCode = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Model(Parcel parcel) {
        this.errorCode = -1;
        this.errorCode = parcel.readInt();
        this.bizCode = parcel.readInt();
        this.info = parcel.readString();
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public void setBizCode(int i) {
        this.bizCode = i;
    }

    public int getBizCode() {
        return this.bizCode;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public String getInfo() {
        return this.info;
    }

    public boolean isOk() {
        return this.errorCode == 0;
    }

    public String toJson() {
        return "{\n    \"err\":" + this.errorCode + ",\n    \"bizCode\":" + this.bizCode + ",\n    \"info\":" + this.info + ",\n}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.errorCode);
        parcel.writeInt(this.bizCode);
        parcel.writeString(this.info);
    }
}
