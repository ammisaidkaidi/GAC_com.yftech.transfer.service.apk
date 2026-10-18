package com.tencent.taes.remote.api.search.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchCity implements Parcelable {
    public static final Parcelable.Creator<SearchCity> CREATOR = new Parcelable.Creator<SearchCity>() { // from class: com.tencent.taes.remote.api.search.bean.SearchCity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchCity createFromParcel(Parcel parcel) {
            return new SearchCity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchCity[] newArray(int i) {
            return new SearchCity[i];
        }
    };
    public String cityName;
    public byte[] payload;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SearchCity() {
    }

    protected SearchCity(Parcel parcel) {
        this.cityName = parcel.readString();
        this.payload = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.cityName);
        parcel.writeByteArray(this.payload);
    }

    public String toString() {
        return "SearchCity{cityName=" + this.cityName + '}';
    }
}
