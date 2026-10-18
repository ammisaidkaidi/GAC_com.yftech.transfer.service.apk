package com.tencent.wecarspeech.speechcommon.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class TipsHint implements Parcelable {
    public static final Parcelable.Creator<TipsHint> CREATOR = new Parcelable.Creator<TipsHint>() { // from class: com.tencent.wecarspeech.speechcommon.model.TipsHint.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TipsHint createFromParcel(Parcel parcel) {
            return new TipsHint(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TipsHint[] newArray(int i) {
            return new TipsHint[i];
        }
    };
    private List<String> mHints;
    private String mTips;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TipsHint(List<String> list, String str) {
        this.mHints = list;
        this.mTips = str;
    }

    public TipsHint() {
        this.mHints = new ArrayList();
        this.mTips = "";
    }

    protected TipsHint(Parcel parcel) {
        this.mTips = parcel.readString();
        this.mHints = parcel.createStringArrayList();
    }

    public boolean hasHints() {
        return (this.mHints == null || this.mHints.isEmpty()) ? false : true;
    }

    public List<String> getHints() {
        return this.mHints;
    }

    public boolean hasTips() {
        return !TextUtils.isEmpty(this.mTips);
    }

    public String getTips() {
        return this.mTips;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mTips);
        parcel.writeStringList(this.mHints);
    }

    public void readFromParcel(Parcel parcel) {
        this.mTips = parcel.readString();
        this.mHints = parcel.createStringArrayList();
    }
}
