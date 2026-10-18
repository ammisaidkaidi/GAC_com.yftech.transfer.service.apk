package com.tencent.taes.framework.bean;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class IPCEvent implements Parcelable {
    public static final Parcelable.Creator<IPCEvent> CREATOR = new Parcelable.Creator<IPCEvent>() { // from class: com.tencent.taes.framework.bean.IPCEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IPCEvent createFromParcel(Parcel parcel) {
            return new IPCEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IPCEvent[] newArray(int i) {
            return new IPCEvent[i];
        }
    };
    public static final String EVENT_APP_BACKGROUND = "EVENT_APP_BACKGROUND";
    public static final String EVENT_APP_FOREGROUND = "EVENT_APP_FOREGROUND";
    public static final String EVENT_FRAME_WORK_BINDER_CONNECT = "EVENT_FRAME_WORK_BINDER_CONNECT";
    public static final String EVENT_FRAME_WORK_BINDER_DISCONNECT = "EVENT_FRAME_WORK_BINDER_DISCONNECT";
    public Bundle data;
    public String msg;
    public final String name;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IPCEvent(String str) {
        this.name = str;
    }

    public IPCEvent(String str, String str2) {
        this.name = str;
        this.msg = str2;
    }

    public IPCEvent(String str, Bundle bundle) {
        this.name = str;
        this.data = bundle;
    }

    public IPCEvent(Bundle bundle) {
        this.name = bundle.getString("name");
        this.msg = bundle.getString("msg");
        this.data = bundle.getBundle("data");
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString("name", this.name);
        bundle.putString("msg", this.msg);
        bundle.putBundle("data", this.data);
        return bundle;
    }

    public String toString() {
        return "EventInfo { name=" + this.name + " msg=" + this.msg + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.msg);
        parcel.writeBundle(this.data);
    }

    protected IPCEvent(Parcel parcel) {
        this.name = parcel.readString();
        this.msg = parcel.readString();
        this.data = parcel.readBundle();
    }
}
