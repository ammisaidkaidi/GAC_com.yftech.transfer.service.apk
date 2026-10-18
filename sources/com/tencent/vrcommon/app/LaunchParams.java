package com.tencent.vrcommon.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Keep;
import android.text.TextUtils;
import com.tencent.wecarspeech.speechcommon.doa.DoaDirectionMode;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class LaunchParams implements Parcelable {
    public static final Parcelable.Creator<LaunchParams> CREATOR = new Parcelable.Creator<LaunchParams>() { // from class: com.tencent.vrcommon.app.LaunchParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LaunchParams createFromParcel(Parcel parcel) {
            return new LaunchParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LaunchParams[] newArray(int i) {
            return new LaunchParams[i];
        }
    };
    public static final int INDEX_SETTING_HELP = 0;
    public static final int INDEX_SETTING_JD = 2;
    public static final int INDEX_SETTING_SETTING = 1;
    public static final int TYPE_ACTIVE_SPRITE = 6;
    public static final int TYPE_CLOSE_HELP = 10;
    public static final int TYPE_CLOSE_SETTING = 9;
    public static final int TYPE_OPEN_WIDGET_CONTAINER = 8;
    public static final int TYPE_SHOW_DATA_UPGRADE = 4;
    public static final int TYPE_SHOW_HELP = 3;
    public static final int TYPE_SHOW_SETTING = 2;
    public static final int TYPE_START_ASR = 1;
    public static final int TYPE_UPDATE_SPRITE = 7;
    private String mAsrTTS;
    private boolean mAutoClose;
    private boolean mDimBehind;
    private int mDoaDirectionMode;
    private int mLaunchType;
    private int mPageIndex;
    private boolean mPlayAsrBee;
    private boolean mSpriteModal;
    private String mWakeType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private LaunchParams(int i) {
        this.mPageIndex = -1;
        this.mLaunchType = i;
    }

    public int getLaunchType() {
        return this.mLaunchType;
    }

    public String getWakeType() {
        return this.mWakeType;
    }

    public String getAsrTTS() {
        return this.mAsrTTS;
    }

    public boolean isAutoCloseEnabled() {
        return this.mAutoClose;
    }

    public int getPageIndex() {
        return this.mPageIndex;
    }

    public boolean isSpriteModal() {
        return this.mSpriteModal;
    }

    public boolean isDimBehind() {
        return this.mDimBehind;
    }

    public boolean isAsrSoundEnabled() {
        return this.mPlayAsrBee;
    }

    public int getDoaDirectionMode() {
        return this.mDoaDirectionMode;
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Builder {
        private String bAsrTTS;
        private boolean bAutoClose;
        private boolean bDimBehind;
        private int bLaunchType;
        private boolean bSpriteModal;
        private String bWakeType;
        private boolean bPlayAsrBee = true;
        private int bPageIndex = -1;
        private int bDoaDirectionMode = 0;

        public Builder(int i) {
            this.bLaunchType = i;
        }

        public Builder setWakeType(String str) {
            this.bWakeType = str;
            return this;
        }

        public Builder setAsrTTS(String str) {
            this.bAsrTTS = str;
            return this;
        }

        public Builder setPageIndex(int i) {
            this.bPageIndex = i;
            return this;
        }

        public Builder setSpriteModalState(boolean z, boolean z2) {
            this.bSpriteModal = z;
            this.bDimBehind = z2;
            if (!this.bSpriteModal && this.bDimBehind) {
                this.bDimBehind = false;
            }
            return this;
        }

        public Builder setDoaDirectionMode(DoaDirectionMode doaDirectionMode) {
            if (doaDirectionMode != null) {
                this.bDoaDirectionMode = doaDirectionMode.toInt();
            }
            return this;
        }

        public Builder setAutoCloseEnabled(boolean z) {
            this.bAutoClose = z;
            return this;
        }

        public Builder setAsrSoundEnable(boolean z) {
            this.bPlayAsrBee = z;
            return this;
        }

        public LaunchParams build() {
            LaunchParams launchParams = new LaunchParams(this.bLaunchType);
            if (this.bLaunchType == 1 && TextUtils.isEmpty(this.bWakeType)) {
                throw new IllegalArgumentException("can not use empty wakeType with LaunchParams.TYPE_START_ASR");
            }
            if (this.bLaunchType == 3 || this.bLaunchType == 2) {
                this.bSpriteModal = true;
                this.bDimBehind = false;
            }
            launchParams.mPlayAsrBee = this.bPlayAsrBee;
            launchParams.mWakeType = this.bWakeType;
            launchParams.mAsrTTS = this.bAsrTTS;
            launchParams.mSpriteModal = this.bSpriteModal;
            launchParams.mDimBehind = this.bDimBehind;
            launchParams.mAutoClose = this.bAutoClose;
            launchParams.mPageIndex = this.bPageIndex;
            launchParams.mDoaDirectionMode = this.bDoaDirectionMode;
            return launchParams;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mLaunchType);
        parcel.writeByte(this.mSpriteModal ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mDimBehind ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mPlayAsrBee ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mWakeType);
        parcel.writeString(this.mAsrTTS);
        parcel.writeByte(this.mAutoClose ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mPageIndex);
        parcel.writeInt(this.mDoaDirectionMode);
    }

    protected LaunchParams(Parcel parcel) {
        this.mPageIndex = -1;
        this.mLaunchType = parcel.readInt();
        this.mSpriteModal = parcel.readByte() != 0;
        this.mDimBehind = parcel.readByte() != 0;
        this.mPlayAsrBee = parcel.readByte() != 0;
        this.mWakeType = parcel.readString();
        this.mAsrTTS = parcel.readString();
        this.mAutoClose = parcel.readByte() != 0;
        this.mPageIndex = parcel.readInt();
        this.mDoaDirectionMode = parcel.readInt();
    }
}
