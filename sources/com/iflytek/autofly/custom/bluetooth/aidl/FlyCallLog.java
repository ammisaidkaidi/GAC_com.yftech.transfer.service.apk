package com.iflytek.autofly.custom.bluetooth.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class FlyCallLog implements Parcelable, Serializable {
    public static final int CALLLOG_TYPE_ALL = 4;
    public static final int CALLLOG_TYPE_INCOMING = 2;
    public static final int CALLLOG_TYPE_MISSED = 3;
    public static final int CALLLOG_TYPE_OUTGOING = 1;
    public static final Parcelable.Creator<FlyCallLog> CREATOR = new Parcelable.Creator<FlyCallLog>() { // from class: com.iflytek.autofly.custom.bluetooth.aidl.FlyCallLog.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlyCallLog[] newArray(int i) {
            return new FlyCallLog[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlyCallLog createFromParcel(Parcel parcel) {
            return new FlyCallLog(parcel);
        }
    };
    private static final long serialVersionUID = 645278216084067892L;
    private String name;
    private String number;
    private String time;
    private int type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FlyCallLog() {
        this.type = 4;
        this.number = "";
        this.name = "";
        this.time = "";
    }

    public FlyCallLog(Parcel parcel) {
        this.type = parcel.readInt();
        this.name = parcel.readString();
        this.number = parcel.readString();
        this.time = parcel.readString();
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public String toString() {
        return "FlyCallLog{type=" + this.type + ", name='" + this.name + "', number='" + this.number + "', time='" + this.time + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeString(this.name);
        parcel.writeString(this.number);
        parcel.writeString(this.time);
    }
}
