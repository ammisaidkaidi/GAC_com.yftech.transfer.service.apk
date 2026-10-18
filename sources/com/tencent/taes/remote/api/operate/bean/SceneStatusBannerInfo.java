package com.tencent.taes.remote.api.operate.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SceneStatusBannerInfo implements Parcelable {
    public static final Parcelable.Creator<SceneStatusBannerInfo> CREATOR = new Parcelable.Creator<SceneStatusBannerInfo>() { // from class: com.tencent.taes.remote.api.operate.bean.SceneStatusBannerInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneStatusBannerInfo createFromParcel(Parcel parcel) {
            return new SceneStatusBannerInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneStatusBannerInfo[] newArray(int i) {
            return new SceneStatusBannerInfo[i];
        }
    };
    private List<ActionsBean> activeActions;
    private List<ActionsBean> deactiveActions;
    private boolean enable;
    private boolean firstOverviewCity;
    private String handerType;
    private String statusBarIconDay;
    private String statusBarIconNight;
    private String statusBarSwitchIconDay;
    private String statusBarSwitchIconNight;
    private String statusBarSwitchIconSelectedDay;
    private String statusBarSwitchIconSelectedNight;
    private String subKey;
    private String title;
    private String uuid;
    private long validEndTime;
    private long validStartTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getSubKey() {
        return this.subKey;
    }

    public void setSubKey(String str) {
        this.subKey = str;
    }

    public String getUuid() {
        return this.uuid;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public boolean isFirstOverviewCity() {
        return this.firstOverviewCity;
    }

    public void setFirstOverviewCity(boolean z) {
        this.firstOverviewCity = z;
    }

    public long getValidStartTime() {
        return this.validStartTime;
    }

    public void setValidStartTime(long j) {
        this.validStartTime = j;
    }

    public long getValidEndTime() {
        return this.validEndTime;
    }

    public void setValidEndTime(long j) {
        this.validEndTime = j;
    }

    public String getStatusBarIconDay() {
        return this.statusBarIconDay;
    }

    public void setStatusBarIconDay(String str) {
        this.statusBarIconDay = str;
    }

    public String getStatusBarIconNight() {
        return this.statusBarIconNight;
    }

    public void setStatusBarIconNight(String str) {
        this.statusBarIconNight = str;
    }

    public String getStatusBarSwitchIconDay() {
        return this.statusBarSwitchIconDay;
    }

    public void setStatusBarSwitchIconDay(String str) {
        this.statusBarSwitchIconDay = str;
    }

    public String getStatusBarSwitchIconNight() {
        return this.statusBarSwitchIconNight;
    }

    public void setStatusBarSwitchIconNight(String str) {
        this.statusBarSwitchIconNight = str;
    }

    public String getStatusBarSwitchIconSelectedDay() {
        return this.statusBarSwitchIconSelectedDay;
    }

    public void setStatusBarSwitchIconSelectedDay(String str) {
        this.statusBarSwitchIconSelectedDay = str;
    }

    public String getStatusBarSwitchIconSelectedNight() {
        return this.statusBarSwitchIconSelectedNight;
    }

    public void setStatusBarSwitchIconSelectedNight(String str) {
        this.statusBarSwitchIconSelectedNight = str;
    }

    public String getHanderType() {
        return this.handerType;
    }

    public void setHanderType(String str) {
        this.handerType = str;
    }

    public List<ActionsBean> getActiveActions() {
        return this.activeActions;
    }

    public void setActiveActions(List<ActionsBean> list) {
        this.activeActions = list;
    }

    public List<ActionsBean> getDeactiveActions() {
        return this.deactiveActions;
    }

    public void setDeactiveActions(List<ActionsBean> list) {
        this.deactiveActions = list;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ActionsBean implements Parcelable {
        public static final Parcelable.Creator<ActionsBean> CREATOR = new Parcelable.Creator<ActionsBean>() { // from class: com.tencent.taes.remote.api.operate.bean.SceneStatusBannerInfo.ActionsBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ActionsBean createFromParcel(Parcel parcel) {
                return new ActionsBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ActionsBean[] newArray(int i) {
                return new ActionsBean[i];
            }
        };
        private String actionName;
        private String app;
        private String data;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getApp() {
            return this.app;
        }

        public void setApp(String str) {
            this.app = str;
        }

        public String getActionName() {
            return this.actionName;
        }

        public void setActionName(String str) {
            this.actionName = str;
        }

        public String getData() {
            return this.data;
        }

        public void setData(String str) {
            this.data = str;
        }

        public String toString() {
            return "ActionsBean{app='" + this.app + "', actionName='" + this.actionName + "', data='" + this.data + "'}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.app);
            parcel.writeString(this.actionName);
            parcel.writeString(this.data);
        }

        public ActionsBean() {
        }

        protected ActionsBean(Parcel parcel) {
            this.app = parcel.readString();
            this.actionName = parcel.readString();
            this.data = parcel.readString();
        }
    }

    public String toString() {
        return "SceneStatusBannerInfo{subKey='" + this.subKey + "', uuid='" + this.uuid + "', title='" + this.title + "', enable=" + this.enable + ", firstOverviewCity=" + this.firstOverviewCity + ", validStartTime=" + this.validStartTime + ", validEndTime=" + this.validEndTime + ", statusBarIconDay='" + this.statusBarIconDay + "', statusBarIconNight='" + this.statusBarIconNight + "', statusBarSwitchIconDay='" + this.statusBarSwitchIconDay + "', statusBarSwitchIconNight='" + this.statusBarSwitchIconNight + "', statusBarSwitchIconSelectedDay='" + this.statusBarSwitchIconSelectedDay + "', statusBarSwitchIconSelectedNight='" + this.statusBarSwitchIconSelectedNight + "', handerType='" + this.handerType + "', activeActions=" + this.activeActions + ", deactiveActions=" + this.deactiveActions + '}';
    }

    public SceneStatusBannerInfo() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.subKey);
        parcel.writeString(this.uuid);
        parcel.writeString(this.title);
        parcel.writeByte(this.enable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.firstOverviewCity ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.validStartTime);
        parcel.writeLong(this.validEndTime);
        parcel.writeString(this.statusBarIconDay);
        parcel.writeString(this.statusBarIconNight);
        parcel.writeString(this.statusBarSwitchIconDay);
        parcel.writeString(this.statusBarSwitchIconNight);
        parcel.writeString(this.statusBarSwitchIconSelectedDay);
        parcel.writeString(this.statusBarSwitchIconSelectedNight);
        parcel.writeString(this.handerType);
        parcel.writeTypedList(this.activeActions);
        parcel.writeTypedList(this.deactiveActions);
    }

    protected SceneStatusBannerInfo(Parcel parcel) {
        this.subKey = parcel.readString();
        this.uuid = parcel.readString();
        this.title = parcel.readString();
        this.enable = parcel.readByte() != 0;
        this.firstOverviewCity = parcel.readByte() != 0;
        this.validStartTime = parcel.readLong();
        this.validEndTime = parcel.readLong();
        this.statusBarIconDay = parcel.readString();
        this.statusBarIconNight = parcel.readString();
        this.statusBarSwitchIconDay = parcel.readString();
        this.statusBarSwitchIconNight = parcel.readString();
        this.statusBarSwitchIconSelectedDay = parcel.readString();
        this.statusBarSwitchIconSelectedNight = parcel.readString();
        this.handerType = parcel.readString();
        this.activeActions = parcel.createTypedArrayList(ActionsBean.CREATOR);
        this.deactiveActions = parcel.createTypedArrayList(ActionsBean.CREATOR);
    }
}
