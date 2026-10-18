package com.tencent.wecarbase.policy;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class Response implements Parcelable {
    public static final Parcelable.Creator<Response> CREATOR = new Parcelable.Creator<Response>() { // from class: com.tencent.wecarbase.policy.Response.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Response createFromParcel(Parcel parcel) {
            return new Response(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Response[] newArray(int i) {
            return new Response[i];
        }
    };
    private int ret;
    private int taskId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Response() {
    }

    public int getRet() {
        return this.ret;
    }

    public void setRet(int i) {
        this.ret = i;
    }

    public int getTaskId() {
        return this.taskId;
    }

    public void setTaskId(int i) {
        this.taskId = i;
    }

    protected Response(Parcel parcel) {
        this.ret = parcel.readInt();
        this.taskId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.ret);
        parcel.writeInt(this.taskId);
    }
}
