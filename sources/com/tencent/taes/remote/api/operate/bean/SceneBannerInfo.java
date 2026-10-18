package com.tencent.taes.remote.api.operate.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SceneBannerInfo implements Parcelable {
    public static final Parcelable.Creator<SceneBannerInfo> CREATOR = new Parcelable.Creator<SceneBannerInfo>() { // from class: com.tencent.taes.remote.api.operate.bean.SceneBannerInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneBannerInfo createFromParcel(Parcel parcel) {
            return new SceneBannerInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneBannerInfo[] newArray(int i) {
            return new SceneBannerInfo[i];
        }
    };
    private List<ActionsBean> actions;
    private String bgImage;
    private boolean closable;
    private String handerType;
    private String icon;
    private String iconText;
    private String subKey;
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

    public String getHanderType() {
        return this.handerType;
    }

    public void setHanderType(String str) {
        this.handerType = str;
    }

    public List<ActionsBean> getActions() {
        return this.actions;
    }

    public void setActions(List<ActionsBean> list) {
        this.actions = list;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ActionsBean implements Parcelable {
        public static final Parcelable.Creator<ActionsBean> CREATOR = new Parcelable.Creator<ActionsBean>() { // from class: com.tencent.taes.remote.api.operate.bean.SceneBannerInfo.ActionsBean.1
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
        return "SceneBannerInfo{subKey='" + this.subKey + "', uuid='" + this.uuid + "', icon='" + this.icon + "', iconText='" + this.iconText + "', title='" + this.title + "', subTitle='" + this.subTitle + "', bgImage='" + this.bgImage + "', validStartTime=" + this.validStartTime + ", validEndTime=" + this.validEndTime + ", vanishTime=" + this.vanishTime + ", closable=" + this.closable + ", handerType='" + this.handerType + "', actions=" + this.actions + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.subKey);
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
        parcel.writeString(this.handerType);
        parcel.writeList(this.actions);
    }

    public SceneBannerInfo() {
    }

    protected SceneBannerInfo(Parcel parcel) {
        this.subKey = parcel.readString();
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
        this.handerType = parcel.readString();
        this.actions = new ArrayList();
        parcel.readList(this.actions, ActionsBean.class.getClassLoader());
    }
}
