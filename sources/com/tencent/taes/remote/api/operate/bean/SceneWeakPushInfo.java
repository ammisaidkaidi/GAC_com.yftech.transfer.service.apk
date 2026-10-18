package com.tencent.taes.remote.api.operate.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SceneWeakPushInfo implements Parcelable {
    public static final Parcelable.Creator<SceneWeakPushInfo> CREATOR = new Parcelable.Creator<SceneWeakPushInfo>() { // from class: com.tencent.taes.remote.api.operate.bean.SceneWeakPushInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneWeakPushInfo createFromParcel(Parcel parcel) {
            return new SceneWeakPushInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneWeakPushInfo[] newArray(int i) {
            return new SceneWeakPushInfo[i];
        }
    };
    private String extraData;
    private OperationModeBean operationMode;
    private String uuid;

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

    public OperationModeBean getOperationMode() {
        return this.operationMode;
    }

    public void setOperationMode(OperationModeBean operationModeBean) {
        this.operationMode = operationModeBean;
    }

    public String getExtraData() {
        return this.extraData;
    }

    public void setExtraData(String str) {
        this.extraData = str;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class OperationModeBean implements Parcelable {
        public static final Parcelable.Creator<OperationModeBean> CREATOR = new Parcelable.Creator<OperationModeBean>() { // from class: com.tencent.taes.remote.api.operate.bean.SceneWeakPushInfo.OperationModeBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OperationModeBean createFromParcel(Parcel parcel) {
                return new OperationModeBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OperationModeBean[] newArray(int i) {
                return new OperationModeBean[i];
            }
        };
        private String businessName;
        private String modeContainer;
        private String modeProperties;
        private List<ModeViewsBean> modeViews;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getModeContainer() {
            return this.modeContainer;
        }

        public void setModeContainer(String str) {
            this.modeContainer = str;
        }

        public String getBusinessName() {
            return this.businessName;
        }

        public void setBusinessName(String str) {
            this.businessName = str;
        }

        public String getModeProperties() {
            return this.modeProperties;
        }

        public void setModeProperties(String str) {
            this.modeProperties = str;
        }

        public List<ModeViewsBean> getModeViews() {
            return this.modeViews;
        }

        public void setModeViews(List<ModeViewsBean> list) {
            this.modeViews = list;
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class ModeViewsBean implements Parcelable {
            public static final Parcelable.Creator<ModeViewsBean> CREATOR = new Parcelable.Creator<ModeViewsBean>() { // from class: com.tencent.taes.remote.api.operate.bean.SceneWeakPushInfo.OperationModeBean.ModeViewsBean.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public ModeViewsBean createFromParcel(Parcel parcel) {
                    return new ModeViewsBean(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public ModeViewsBean[] newArray(int i) {
                    return new ModeViewsBean[i];
                }
            };
            private String modeData;
            private int modeType;

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public int getModeType() {
                return this.modeType;
            }

            public void setModeType(int i) {
                this.modeType = i;
            }

            public String getModeData() {
                return this.modeData;
            }

            public void setModeData(String str) {
                this.modeData = str;
            }

            public String toString() {
                return "ModeViewsBean{modeType=" + this.modeType + ", modeData='" + this.modeData + "'}";
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.modeType);
                parcel.writeString(this.modeData);
            }

            public ModeViewsBean() {
            }

            protected ModeViewsBean(Parcel parcel) {
                this.modeType = parcel.readInt();
                this.modeData = parcel.readString();
            }
        }

        public String toString() {
            return "OperationModeBean{modeContainer='" + this.modeContainer + "', businessName='" + this.businessName + "', modeProperties='" + this.modeProperties + "', modeViews=" + this.modeViews + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.modeContainer);
            parcel.writeString(this.businessName);
            parcel.writeString(this.modeProperties);
            parcel.writeList(this.modeViews);
        }

        public OperationModeBean() {
        }

        protected OperationModeBean(Parcel parcel) {
            this.modeContainer = parcel.readString();
            this.businessName = parcel.readString();
            this.modeProperties = parcel.readString();
            this.modeViews = new ArrayList();
            parcel.readList(this.modeViews, ModeViewsBean.class.getClassLoader());
        }
    }

    public String toString() {
        return "SceneWeakPushInfo{uuid='" + this.uuid + "', operationMode=" + this.operationMode + ", extraData='" + this.extraData + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.uuid);
        parcel.writeParcelable(this.operationMode, i);
        parcel.writeString(this.extraData);
    }

    public SceneWeakPushInfo() {
    }

    protected SceneWeakPushInfo(Parcel parcel) {
        this.uuid = parcel.readString();
        this.operationMode = (OperationModeBean) parcel.readParcelable(OperationModeBean.class.getClassLoader());
        this.extraData = parcel.readString();
    }
}
