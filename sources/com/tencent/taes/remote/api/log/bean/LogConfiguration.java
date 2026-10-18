package com.tencent.taes.remote.api.log.bean;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogConfiguration implements Parcelable {
    public static final Parcelable.Creator<LogConfiguration> CREATOR = new Parcelable.Creator<LogConfiguration>() { // from class: com.tencent.taes.remote.api.log.bean.LogConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LogConfiguration createFromParcel(Parcel parcel) {
            return new LogConfiguration(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LogConfiguration[] newArray(int i) {
            return new LogConfiguration[i];
        }
    };
    public static final String KEY_CONSOLE = "console";
    public static final String KEY_EXPIRED_TIME = "expiredTime";
    public static final String KEY_LOCAL_STORAGE = "localStorage";
    public static final String KEY_LOG_LEVEL = "logLevel";
    public static final String KEY_LOG_SIZE = "logSize";
    public static final String KEY_MODULE_NAME = "moduleName";
    public boolean bConsole;
    public int expiredTime;
    public boolean localStorage;
    public String logLevel;
    public double logSize;
    protected Bundle mExtBundle;
    public String moduleName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LogConfiguration() {
        this.moduleName = "logModule";
        this.logLevel = "ALL";
        this.logSize = 2.0d;
        this.bConsole = true;
        this.localStorage = false;
        this.expiredTime = 3;
    }

    public LogConfiguration(LogConfiguration logConfiguration) {
        if (logConfiguration != null) {
            this.moduleName = logConfiguration.moduleName;
            this.logLevel = logConfiguration.logLevel;
            this.logSize = logConfiguration.logSize;
            this.bConsole = logConfiguration.bConsole;
            this.localStorage = logConfiguration.localStorage;
            this.expiredTime = logConfiguration.expiredTime;
            this.mExtBundle = logConfiguration.mExtBundle;
        }
    }

    public LogConfiguration(String str, String str2, int i, boolean z, boolean z2, int i2) {
        this.moduleName = str;
        this.logLevel = str2;
        this.logSize = i;
        this.bConsole = z;
        this.localStorage = z2;
        this.expiredTime = i2;
    }

    public LogConfiguration(String str, String str2, int i, boolean z, boolean z2, int i2, Bundle bundle) {
        this.moduleName = str;
        this.logLevel = str2;
        this.logSize = i;
        this.bConsole = z;
        this.localStorage = z2;
        this.expiredTime = i2;
        this.mExtBundle = bundle;
    }

    public Bundle getConfigBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(KEY_MODULE_NAME, this.moduleName);
        bundle.putString(KEY_LOG_LEVEL, this.logLevel);
        bundle.putDouble(KEY_LOG_SIZE, this.logSize);
        bundle.putBoolean(KEY_CONSOLE, this.bConsole);
        bundle.putBoolean(KEY_LOCAL_STORAGE, this.localStorage);
        bundle.putInt(KEY_EXPIRED_TIME, this.expiredTime);
        return bundle;
    }

    public void setModuleName(String str) {
        this.moduleName = str;
    }

    public void setLogLevel(String str) {
        this.logLevel = str;
    }

    public void setLogSize(double d) {
        this.logSize = d;
    }

    public void setConsole(boolean z) {
        this.bConsole = z;
    }

    public void setLocalStorage(boolean z) {
        this.localStorage = z;
    }

    public void setExpiredTime(int i) {
        this.expiredTime = i;
    }

    public void setExtBundle(Bundle bundle) {
        this.mExtBundle = bundle;
    }

    public String getModuleName() {
        return this.moduleName;
    }

    public String getLogLevel() {
        return this.logLevel;
    }

    public double getLogSize() {
        return this.logSize;
    }

    public boolean isConsole() {
        return this.bConsole;
    }

    public boolean isLocalStorage() {
        return this.localStorage;
    }

    public int getExpiredTime() {
        return this.expiredTime;
    }

    public Bundle getExtBundle() {
        return this.mExtBundle;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(KEY_MODULE_NAME, this.moduleName);
            jSONObject.put(KEY_LOG_LEVEL, this.logLevel);
            jSONObject.put(KEY_LOG_SIZE, this.logSize);
            jSONObject.put(KEY_CONSOLE, this.bConsole);
            jSONObject.put(KEY_LOCAL_STORAGE, this.localStorage);
            jSONObject.put(KEY_EXPIRED_TIME, this.expiredTime);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public String toString() {
        return "LogConfiguration{moduleName=" + this.moduleName + ",logLevel=" + this.logLevel + ",logSize=" + this.logSize + ",bConsole=" + this.bConsole + ",localStorage=" + this.localStorage + ",expiredTime=" + this.expiredTime + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.moduleName);
        parcel.writeString(this.logLevel);
        parcel.writeDouble(this.logSize);
        parcel.writeByte(this.bConsole ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.localStorage ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.expiredTime);
        parcel.writeBundle(this.mExtBundle);
    }

    protected LogConfiguration(Parcel parcel) {
        this.moduleName = parcel.readString();
        this.logLevel = parcel.readString();
        this.logSize = parcel.readDouble();
        this.bConsole = parcel.readByte() != 0;
        this.localStorage = parcel.readByte() != 0;
        this.expiredTime = parcel.readInt();
        this.mExtBundle = parcel.readBundle();
    }
}
