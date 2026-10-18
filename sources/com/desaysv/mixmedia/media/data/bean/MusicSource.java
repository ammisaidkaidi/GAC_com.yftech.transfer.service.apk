package com.desaysv.mixmedia.media.data.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class MusicSource implements Parcelable {
    public static final Parcelable.Creator<MusicSource> CREATOR = new Parcelable.Creator<MusicSource>() { // from class: com.desaysv.mixmedia.media.data.bean.MusicSource.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MusicSource createFromParcel(Parcel parcel) {
            return new MusicSource(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MusicSource[] newArray(int i) {
            return new MusicSource[i];
        }
    };
    private int connectState;
    private boolean select;
    private String sourceName;
    private int sourceType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MusicSource(String str, int i, boolean z, int i2) {
        this.sourceName = str;
        this.sourceType = i;
        this.select = z;
        this.connectState = i2;
    }

    public MusicSource() {
        this("酷狗音乐", 0, false, 1);
    }

    protected MusicSource(Parcel parcel) {
        this.sourceName = parcel.readString();
        this.sourceType = parcel.readInt();
        this.select = parcel.readByte() != 0;
        this.connectState = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.sourceName);
        parcel.writeInt(this.sourceType);
        parcel.writeByte(this.select ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.connectState);
    }

    public String getSourceName() {
        return this.sourceName;
    }

    public void setSourceName(String str) {
        this.sourceName = str;
    }

    public int getSourceType() {
        return this.sourceType;
    }

    public void setSourceType(int i) {
        this.sourceType = i;
    }

    public boolean isSelect() {
        return this.select;
    }

    public void setSelect(boolean z) {
        this.select = z;
    }

    public int getConnectState() {
        return this.connectState;
    }

    public void setConnectState(int i) {
        this.connectState = i;
    }

    public String toString() {
        return "MusicSource{sourceName='" + this.sourceName + "', sourceType=" + this.sourceType + ", select=" + this.select + ", connectState=" + this.connectState + '}';
    }
}
