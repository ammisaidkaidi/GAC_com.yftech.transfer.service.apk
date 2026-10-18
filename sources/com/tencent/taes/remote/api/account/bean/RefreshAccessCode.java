package com.tencent.taes.remote.api.account.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class RefreshAccessCode extends BaseModel implements Parcelable {
    public static final Parcelable.Creator<RefreshAccessCode> CREATOR = new Parcelable.Creator<RefreshAccessCode>() { // from class: com.tencent.taes.remote.api.account.bean.RefreshAccessCode.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RefreshAccessCode createFromParcel(Parcel parcel) {
            return new RefreshAccessCode(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RefreshAccessCode[] newArray(int i) {
            return new RefreshAccessCode[i];
        }
    };
    private String codeUrl;
    private String sceneId;

    @Override // com.tencent.taes.remote.api.account.bean.Model, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected RefreshAccessCode() {
    }

    protected RefreshAccessCode(Parcel parcel) {
        super(parcel);
        this.sceneId = parcel.readString();
        this.codeUrl = parcel.readString();
    }

    public String getSceneId() {
        return this.sceneId;
    }

    public void setSceneId(String str) {
        this.sceneId = str;
    }

    public String getCodeUrl() {
        return this.codeUrl;
    }

    public void setCodeUrl(String str) {
        this.codeUrl = str;
    }

    public static Parcelable.Creator<RefreshAccessCode> getCREATOR() {
        return CREATOR;
    }

    public String toString() {
        return "RefreshAccessCode{sceneId=" + this.sceneId + " ;codeUrl=" + this.codeUrl + '}';
    }

    @Override // com.tencent.taes.remote.api.account.bean.BaseModel, com.tencent.taes.remote.api.account.bean.Model, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.sceneId);
        parcel.writeString(this.codeUrl);
    }
}
