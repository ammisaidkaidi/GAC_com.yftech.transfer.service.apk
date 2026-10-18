package com.tencent.taes.remote.api.account.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseModel extends Model implements Parcelable {
    private long nonce;
    private String sKey;
    private String xtraceid;

    public BaseModel() {
    }

    public BaseModel(Parcel parcel) {
        super(parcel);
        this.xtraceid = parcel.readString();
        this.sKey = parcel.readString();
        this.nonce = parcel.readLong();
    }

    public String getXtraceid() {
        return this.xtraceid;
    }

    public void setXtraceid(String str) {
        this.xtraceid = str;
    }

    public String getKey() {
        return this.sKey;
    }

    public void setKey(String str) {
        this.sKey = str;
    }

    public long getBNonce() {
        return this.nonce;
    }

    public void setBNonce(long j) {
        this.nonce = j;
    }

    @Override // com.tencent.taes.remote.api.account.bean.Model, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.xtraceid);
        parcel.writeString(this.sKey);
        parcel.writeLong(this.nonce);
    }
}
