package com.tencent.taes.remote.api.operate.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class SceneTipsInfo implements Parcelable {
    public static final Parcelable.Creator<SceneTipsInfo> CREATOR = new Parcelable.Creator<SceneTipsInfo>() { // from class: com.tencent.taes.remote.api.operate.bean.SceneTipsInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneTipsInfo createFromParcel(Parcel parcel) {
            return new SceneTipsInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneTipsInfo[] newArray(int i) {
            return new SceneTipsInfo[i];
        }
    };
    private String jumpParams;
    private String text;
    private int type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String getJumpParams() {
        return this.jumpParams;
    }

    public void setJumpParams(String str) {
        this.jumpParams = str;
    }

    public String toString() {
        return "SceneTipsInfo{text='" + this.text + "', type='" + this.type + "', jumpParams='" + this.jumpParams + '}';
    }

    protected SceneTipsInfo(Parcel parcel) {
        this.text = parcel.readString();
        this.type = parcel.readInt();
        this.jumpParams = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.text);
        parcel.writeInt(this.type);
        parcel.writeString(this.jumpParams);
    }
}
