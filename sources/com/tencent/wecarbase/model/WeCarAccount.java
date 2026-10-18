package com.tencent.wecarbase.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarAccount implements Parcelable {
    public static final Parcelable.Creator<WeCarAccount> CREATOR = new Parcelable.Creator<WeCarAccount>() { // from class: com.tencent.wecarbase.model.WeCarAccount.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WeCarAccount createFromParcel(Parcel parcel) {
            return new WeCarAccount(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WeCarAccount[] newArray(int i) {
            return new WeCarAccount[i];
        }
    };
    private TxAccount mQQAccount;
    private String mSessionKey;
    private String mWeCarId;
    private byte[] mWeCarKey;
    private TxAccount mWxAccount;
    private HashMap<String, TxAccount> qqAcountMap = new HashMap<>();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public WeCarAccount() {
    }

    public HashMap<String, TxAccount> getQqAcountMap() {
        return this.qqAcountMap;
    }

    public String getWeCarId() {
        return this.mWeCarId;
    }

    public void setWeCarId(String str) {
        this.mWeCarId = str;
    }

    public String getSessionKey() {
        return this.mSessionKey;
    }

    public void setSessionKey(String str) {
        this.mSessionKey = str;
    }

    public void setWxAccount(TxAccount txAccount) {
        this.mWxAccount = txAccount;
    }

    public TxAccount getWxAccount() {
        return this.mWxAccount;
    }

    public void setQqAcount(String str, TxAccount txAccount) {
        this.qqAcountMap.put(str, txAccount);
    }

    public TxAccount getQqAccount(String str) {
        return this.qqAcountMap.get(str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("wecarid: ");
        sb.append(this.mWeCarId);
        sb.append(", sKey: ");
        sb.append(this.mSessionKey);
        if (this.mWxAccount != null) {
            sb.append(", wx account[");
            sb.append(this.mWxAccount.toString());
            sb.append("]");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mWeCarId);
        parcel.writeByteArray(this.mWeCarKey);
        parcel.writeString(this.mSessionKey);
        parcel.writeParcelable(this.mQQAccount, i);
        parcel.writeParcelable(this.mWxAccount, i);
    }

    protected WeCarAccount(Parcel parcel) {
        this.mWeCarId = parcel.readString();
        this.mWeCarKey = parcel.createByteArray();
        this.mSessionKey = parcel.readString();
        this.mQQAccount = (TxAccount) parcel.readParcelable(TxAccount.class.getClassLoader());
        this.mWxAccount = (TxAccount) parcel.readParcelable(TxAccount.class.getClassLoader());
    }
}
