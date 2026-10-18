package com.tencent.taes.api.moss.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: /home/user/work/dex/classes.dex */
public class MossLabel implements Parcelable, Comparable<MossLabel> {
    public static final Parcelable.Creator<MossLabel> CREATOR = new Parcelable.Creator<MossLabel>() { // from class: com.tencent.taes.api.moss.bean.MossLabel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MossLabel createFromParcel(Parcel parcel) {
            return new MossLabel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MossLabel[] newArray(int i) {
            return new MossLabel[i];
        }
    };

    @SerializedName("appSortId")
    public int appSortId;

    @SerializedName("id")
    public int id;

    @SerializedName("name")
    public String name;

    @SerializedName("sortId")
    public int sortId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MossLabel() {
    }

    protected MossLabel(Parcel parcel) {
        this.id = parcel.readInt();
        this.appSortId = parcel.readInt();
        this.sortId = parcel.readInt();
        this.name = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeInt(this.appSortId);
        parcel.writeInt(this.sortId);
        parcel.writeString(this.name);
    }

    public boolean equals(Object obj) {
        return (obj instanceof MossLabel) && this.id == ((MossLabel) obj).id;
    }

    @Override // java.lang.Comparable
    public int compareTo(MossLabel mossLabel) {
        return this.sortId - mossLabel.sortId;
    }
}
