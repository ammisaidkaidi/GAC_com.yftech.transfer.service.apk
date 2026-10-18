package com.tencent.wecarbase.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class PhoneContact implements Parcelable {
    public static final Parcelable.Creator<PhoneContact> CREATOR = new Parcelable.Creator<PhoneContact>() { // from class: com.tencent.wecarbase.model.PhoneContact.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneContact createFromParcel(Parcel parcel) {
            return new PhoneContact(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneContact[] newArray(int i) {
            return new PhoneContact[i];
        }
    };
    public static final int RET_FAIL = 2;
    public static final int RET_NOTSUPPORT = 0;
    public static final int RET_SUCCESS = 1;
    private String name;
    private String number;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected PhoneContact(Parcel parcel) {
        this.name = parcel.readString();
        this.number = parcel.readString();
    }

    public PhoneContact(String str, String str2) {
        this.name = str;
        this.number = str2;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.number);
    }
}
