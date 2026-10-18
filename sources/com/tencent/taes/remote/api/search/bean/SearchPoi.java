package com.tencent.taes.remote.api.search.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchPoi implements Parcelable {
    public static final Parcelable.Creator<SearchPoi> CREATOR = new Parcelable.Creator<SearchPoi>() { // from class: com.tencent.taes.remote.api.search.bean.SearchPoi.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchPoi createFromParcel(Parcel parcel) {
            return new SearchPoi(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchPoi[] newArray(int i) {
            return new SearchPoi[i];
        }
    };
    public String address;
    public byte[] payload;
    public String title;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SearchPoi() {
    }

    protected SearchPoi(Parcel parcel) {
        this.title = parcel.readString();
        this.address = parcel.readString();
        this.payload = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.title);
        parcel.writeString(this.address);
        parcel.writeByteArray(this.payload);
    }

    public String toString() {
        return "SearchPoi{title=" + this.title + ", address=" + this.address + '}';
    }
}
