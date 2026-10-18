package com.tencent.vrcommon.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class CloseParams implements Parcelable {
    public static final Parcelable.Creator<CloseParams> CREATOR = new Parcelable.Creator<CloseParams>() { // from class: com.tencent.vrcommon.app.CloseParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CloseParams createFromParcel(Parcel parcel) {
            return new CloseParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CloseParams[] newArray(int i) {
            return new CloseParams[i];
        }
    };
    public static final int TYPE_CLOSE_ALL_VR_UI = 2;
    public static final int TYPE_CLOSE_VR_SPRITE = 3;
    public static final int TYPE_CLOSE_WIDGET_CONTAINER = 1;
    private long mCloseDelay;
    private int mCloseType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private CloseParams(int i) {
        this.mCloseType = i;
    }

    public int getCloseType() {
        return this.mCloseType;
    }

    public long getCloseDelay() {
        return this.mCloseDelay;
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Builder {
        private long bCloseDelay;
        private int bCloseType;

        public Builder(int i) {
            this.bCloseType = i;
        }

        public Builder setCloseDelay(long j) {
            this.bCloseDelay = j;
            return this;
        }

        public CloseParams build() {
            CloseParams closeParams = new CloseParams(this.bCloseType);
            closeParams.mCloseType = this.bCloseType;
            closeParams.mCloseDelay = this.bCloseDelay;
            return closeParams;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mCloseType);
    }

    protected CloseParams(Parcel parcel) {
        this.mCloseType = parcel.readInt();
    }
}
