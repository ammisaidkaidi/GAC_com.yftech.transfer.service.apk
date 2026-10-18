package com.tencent.taes.framework.parser;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import java.util.List;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class ComponentConfigInfo implements Parcelable {
    public static final Parcelable.Creator<ComponentConfigInfo> CREATOR = new Parcelable.Creator<ComponentConfigInfo>() { // from class: com.tencent.taes.framework.parser.ComponentConfigInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComponentConfigInfo createFromParcel(Parcel parcel) {
            return new ComponentConfigInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComponentConfigInfo[] newArray(int i) {
            return new ComponentConfigInfo[i];
        }
    };
    public static final String TYPE_LOCAL = "local";
    public static final String TYPE_SERVER = "server";
    public static final String TYPE_SPECIAL = "special";
    private String actionName;
    private String applicationApiImplCls;
    private boolean bootCompleteLoad;
    private String[] connectPriorityPkgNames;
    private String desc;
    private String lifecycleImpCls;
    private String name;
    private boolean necessaryLoad;
    private boolean parallelLoad;
    private boolean persistent;
    private List<SupportFeaturesBean> supportFeatures;
    private String type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getLifecycleImpCls() {
        return this.lifecycleImpCls;
    }

    public void setLifecycleImpCls(String str) {
        this.lifecycleImpCls = str;
    }

    public String getApplicationApiImplCls() {
        return this.applicationApiImplCls;
    }

    public void setApplicationApiImplCls(String str) {
        this.applicationApiImplCls = str;
    }

    public boolean isBootCompleteLoad() {
        return this.bootCompleteLoad;
    }

    public void setBootCompleteLoad(boolean z) {
        this.bootCompleteLoad = z;
    }

    public boolean isNecessaryLoad() {
        return this.necessaryLoad;
    }

    public void setNecessaryLoad(boolean z) {
        this.necessaryLoad = z;
    }

    public boolean isPersistent() {
        return this.persistent;
    }

    public void setPersistent(boolean z) {
        this.persistent = z;
    }

    public boolean isParallelLoad() {
        return this.parallelLoad;
    }

    public void setParallelLoad(boolean z) {
        this.parallelLoad = z;
    }

    public String getActionName() {
        return this.actionName;
    }

    public void setActionName(String str) {
        this.actionName = str;
    }

    public String[] getConnectPriorityPkgNames() {
        return this.connectPriorityPkgNames;
    }

    public void setConnectPriorityPkgNames(String[] strArr) {
        this.connectPriorityPkgNames = strArr;
    }

    public List<SupportFeaturesBean> getSupportFeatures() {
        return this.supportFeatures;
    }

    public void setSupportFeatures(List<SupportFeaturesBean> list) {
        this.supportFeatures = list;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SupportFeaturesBean implements Parcelable {
        public static final Parcelable.Creator<SupportFeaturesBean> CREATOR = new Parcelable.Creator<SupportFeaturesBean>() { // from class: com.tencent.taes.framework.parser.ComponentConfigInfo.SupportFeaturesBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SupportFeaturesBean createFromParcel(Parcel parcel) {
                return new SupportFeaturesBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SupportFeaturesBean[] newArray(int i) {
                return new SupportFeaturesBean[i];
            }
        };
        private String api;
        private String apiImpl;
        private String binderName;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getApi() {
            return this.api;
        }

        public void setApi(String str) {
            this.api = str;
        }

        public String getApiImpl() {
            return this.apiImpl;
        }

        public void setApiImpl(String str) {
            this.apiImpl = str;
        }

        public String getBinderName() {
            return this.binderName;
        }

        public void setBinderName(String str) {
            this.binderName = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.api);
            parcel.writeString(this.apiImpl);
            parcel.writeString(this.binderName);
        }

        public SupportFeaturesBean() {
        }

        protected SupportFeaturesBean(Parcel parcel) {
            this.api = parcel.readString();
            this.apiImpl = parcel.readString();
            this.binderName = parcel.readString();
        }

        public String toString() {
            return "SupportFeaturesBean{api='" + this.api + "', apiImpl='" + this.apiImpl + "', binderName='" + this.binderName + "'}";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            SupportFeaturesBean supportFeaturesBean = (SupportFeaturesBean) obj;
            return Objects.equals(this.api, supportFeaturesBean.api) && Objects.equals(this.apiImpl, supportFeaturesBean.apiImpl) && Objects.equals(this.binderName, supportFeaturesBean.binderName);
        }

        public int hashCode() {
            return Objects.hash(this.api, this.apiImpl, this.binderName);
        }
    }

    public ComponentConfigInfo() {
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ComponentConfigInfo)) {
            return false;
        }
        ComponentConfigInfo componentConfigInfo = (ComponentConfigInfo) obj;
        return this.name.equals(componentConfigInfo.getName()) && this.type.equals(componentConfigInfo.getType()) && this.supportFeatures.containsAll(componentConfigInfo.getSupportFeatures()) && this.actionName.equals(componentConfigInfo.getActionName());
    }

    public boolean isServerComponent() {
        return TYPE_SERVER.equals(this.type) || TYPE_SPECIAL.equals(this.type);
    }

    public boolean isLocalComponent() {
        return TYPE_LOCAL.equals(this.type);
    }

    public boolean isSpecialComponent() {
        return TYPE_SPECIAL.equals(this.type);
    }

    public SupportFeaturesBean getFeaturesBean(String str) {
        for (SupportFeaturesBean supportFeaturesBean : this.supportFeatures) {
            if (supportFeaturesBean.getApi().equals(str)) {
                return supportFeaturesBean;
            }
        }
        return null;
    }

    public String toString() {
        return "ComponentConfigInfo{name='" + this.name + "', type='" + this.type + "', actionName='" + this.actionName + "', connectPriorityPkgNames=" + this.connectPriorityPkgNames + ", supportFeatures=" + this.supportFeatures + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.desc);
        parcel.writeString(this.type);
        parcel.writeString(this.lifecycleImpCls);
        parcel.writeString(this.applicationApiImplCls);
        parcel.writeByte(this.bootCompleteLoad ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.necessaryLoad ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.persistent ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.parallelLoad ? (byte) 1 : (byte) 0);
        parcel.writeString(this.actionName);
        parcel.writeStringArray(this.connectPriorityPkgNames);
        parcel.writeTypedList(this.supportFeatures);
    }

    protected ComponentConfigInfo(Parcel parcel) {
        this.name = parcel.readString();
        this.desc = parcel.readString();
        this.type = parcel.readString();
        this.lifecycleImpCls = parcel.readString();
        this.applicationApiImplCls = parcel.readString();
        this.bootCompleteLoad = parcel.readByte() != 0;
        this.necessaryLoad = parcel.readByte() != 0;
        this.persistent = parcel.readByte() != 0;
        this.parallelLoad = parcel.readByte() != 0;
        this.actionName = parcel.readString();
        this.connectPriorityPkgNames = parcel.createStringArray();
        this.supportFeatures = parcel.createTypedArrayList(SupportFeaturesBean.CREATOR);
    }
}
