package com.tencent.taes.api.scene.bean;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class SceneInfo implements Parcelable {
    public static final Parcelable.Creator<SceneInfo> CREATOR = new Parcelable.Creator<SceneInfo>() { // from class: com.tencent.taes.api.scene.bean.SceneInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneInfo createFromParcel(Parcel parcel) {
            return new SceneInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneInfo[] newArray(int i) {
            return new SceneInfo[i];
        }
    };
    private String bgImage;
    private boolean closable;
    private Bundle extData;
    private String icon;
    private String iconText;
    private String subTitle;
    private String title;
    private String uuid;
    private int validEndTime;
    private int validStartTime;
    private int vanishTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getUuid() {
        return this.uuid;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public String getIconText() {
        return this.iconText;
    }

    public void setIconText(String str) {
        this.iconText = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public void setSubTitle(String str) {
        this.subTitle = str;
    }

    public String getBgImage() {
        return this.bgImage;
    }

    public void setBgImage(String str) {
        this.bgImage = str;
    }

    public int getValidStartTime() {
        return this.validStartTime;
    }

    public void setValidStartTime(int i) {
        this.validStartTime = i;
    }

    public int getValidEndTime() {
        return this.validEndTime;
    }

    public void setValidEndTime(int i) {
        this.validEndTime = i;
    }

    public int getVanishTime() {
        return this.vanishTime;
    }

    public void setVanishTime(int i) {
        this.vanishTime = i;
    }

    public boolean isClosable() {
        return this.closable;
    }

    public void setClosable(boolean z) {
        this.closable = z;
    }

    public Bundle getExtData() {
        return this.extData;
    }

    public void setExtData(Bundle bundle) {
        this.extData = bundle;
    }

    public String toString() {
        return "SceneInfo{uuid='" + this.uuid + "', icon='" + this.icon + "', iconText='" + this.iconText + "', title='" + this.title + "', subTitle='" + this.subTitle + "', bgImage='" + this.bgImage + "', validStartTime=" + this.validStartTime + ", validEndTime=" + this.validEndTime + ", vanishTime=" + this.vanishTime + ", closable=" + this.closable + ", extData=" + this.extData + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.uuid);
        parcel.writeString(this.icon);
        parcel.writeString(this.iconText);
        parcel.writeString(this.title);
        parcel.writeString(this.subTitle);
        parcel.writeString(this.bgImage);
        parcel.writeInt(this.validStartTime);
        parcel.writeInt(this.validEndTime);
        parcel.writeInt(this.vanishTime);
        parcel.writeByte(this.closable ? (byte) 1 : (byte) 0);
        parcel.writeBundle(this.extData);
    }

    public SceneInfo() {
    }

    protected SceneInfo(Parcel parcel) {
        this.uuid = parcel.readString();
        this.icon = parcel.readString();
        this.iconText = parcel.readString();
        this.title = parcel.readString();
        this.subTitle = parcel.readString();
        this.bgImage = parcel.readString();
        this.validStartTime = parcel.readInt();
        this.validEndTime = parcel.readInt();
        this.vanishTime = parcel.readInt();
        this.closable = parcel.readByte() != 0;
        this.extData = parcel.readBundle();
    }
}
