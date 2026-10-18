package com.tencent.tai.pal.input;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class CabinKeyEvent implements Parcelable {

    @Deprecated
    static final int ACTION_CLICK = 4;
    public static final int ACTION_DOWN = 1;

    @Deprecated
    static final int ACTION_LONG_PRESS = 3;
    public static final int ACTION_UP = 2;
    public static final Parcelable.Creator<CabinKeyEvent> CREATOR = new Parcelable.Creator<CabinKeyEvent>() { // from class: com.tencent.tai.pal.input.CabinKeyEvent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CabinKeyEvent createFromParcel(Parcel parcel) {
            return new CabinKeyEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CabinKeyEvent[] newArray(int i) {
            return new CabinKeyEvent[0];
        }
    };
    public static final int KEY_CODE_ASSISTANT = 7;
    public static final int KEY_CODE_ASSISTANT_EXIT = 11;
    public static final int KEY_CODE_CENTER = 5;
    public static final int KEY_CODE_DOWN = 2;
    public static final int KEY_CODE_LEFT = 3;
    public static final int KEY_CODE_MEDIA_FAST_FORWARD = 13;
    public static final int KEY_CODE_MEDIA_NEXT = 9;
    public static final int KEY_CODE_MEDIA_PREVIOUS = 8;
    public static final int KEY_CODE_MEDIA_REWIND = 12;
    public static final int KEY_CODE_MESSAGING = 6;
    public static final int KEY_CODE_MESSAGING_EXIT = 10;
    public static final int KEY_CODE_RIGHT = 4;
    public static final int KEY_CODE_TENCENT_MEETING_MICROPHONE_SWITCH = 14;
    public static final int KEY_CODE_UNKNOWN = 0;
    public static final int KEY_CODE_UP = 1;
    public static final int SOURCE_BLUETOOTH_CONTROLLER = 2;
    public static final int SOURCE_STEERING_WHEEL = 1;
    private int mAction;
    private long mDownTime;
    private long mEventTime;
    private int mKeyCode;
    private int mSource;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CabinKeyEvent(int i, int i2, int i3, long j, long j2) {
        this.mSource = i;
        this.mAction = i2;
        this.mKeyCode = i3;
        this.mDownTime = j;
        this.mEventTime = j2;
    }

    public int getSource() {
        return this.mSource;
    }

    public int getAction() {
        return this.mAction;
    }

    public int getKeyCode() {
        return this.mKeyCode;
    }

    public long getDownTime() {
        return this.mDownTime;
    }

    public long getEventTime() {
        return this.mEventTime;
    }

    private CabinKeyEvent(Parcel parcel) {
        this.mSource = parcel.readInt();
        this.mAction = parcel.readInt();
        this.mKeyCode = parcel.readInt();
        this.mDownTime = parcel.readLong();
        this.mEventTime = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mSource);
        parcel.writeInt(this.mAction);
        parcel.writeInt(this.mKeyCode);
        parcel.writeLong(this.mDownTime);
        parcel.writeLong(this.mEventTime);
    }

    public String toString() {
        return "CabinKeyEvent{src=" + this.mSource + ", act=" + this.mAction + ", code=" + this.mKeyCode + ", downTime=" + this.mDownTime + ", eventTime=" + this.mEventTime + '}';
    }
}
