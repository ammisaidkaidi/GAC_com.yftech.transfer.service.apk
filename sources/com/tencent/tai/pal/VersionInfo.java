package com.tencent.tai.pal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

/* loaded from: /home/user/work/dex/classes.dex */
public class VersionInfo implements INoProguardClass, Comparable<VersionInfo> {
    private static VersionInfo sLocalVersion;
    private static volatile VersionInfo sRemoteVersion;

    @SerializedName("mBuildNumber")
    private int mBuildNumber;

    @SerializedName("mDebugVersion")
    private boolean mDebugVersion = false;

    @SerializedName("mFeatureVersion")
    private int mFeatureVersion;

    @SerializedName("mFixVersion")
    private int mFixVersion;

    @SerializedName("mMajorVersion")
    private int mMajorVersion;

    @SerializedName("mVersionCode")
    private long mVersionCode;

    @SerializedName("mVersionName")
    private String mVersionName;

    public String getVersionName() {
        return this.mVersionName;
    }

    public long getVersionCode() {
        return this.mVersionCode;
    }

    public int getMajorVersion() {
        return this.mMajorVersion;
    }

    public int getFeatureVersion() {
        return this.mFeatureVersion;
    }

    public int getFixVersion() {
        return this.mFixVersion;
    }

    public int getBuildNumber() {
        return this.mBuildNumber;
    }

    public String toString() {
        return new Gson().toJson(this);
    }

    public static VersionInfo fromJsonString(String str) {
        return (VersionInfo) new Gson().fromJson(str, VersionInfo.class);
    }

    public static synchronized VersionInfo getLocalVersion() {
        synchronized (VersionInfo.class) {
            if (sLocalVersion != null) {
                return sLocalVersion;
            }
            sLocalVersion = createVersionInfo("3.15.1.74", Long.parseLong("202107051743"));
            Log.e(SDKConstants.TAG, "local version : " + sLocalVersion.toString());
            return sLocalVersion;
        }
    }

    public static synchronized VersionInfo getPalAdapterVersion(Context context) {
        synchronized (VersionInfo.class) {
            String c = c.c(context);
            if (TextUtils.isEmpty(c)) {
                return null;
            }
            return createVersionInfo(c, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static VersionInfo createVersionInfo(String str, long j) {
        VersionInfo versionInfo = new VersionInfo();
        versionInfo.mVersionCode = j;
        versionInfo.mVersionName = str;
        versionInfo.mDebugVersion = TextUtils.isEmpty(versionInfo.mVersionName) || versionInfo.mVersionName.contains("debug") || versionInfo.mVersionName.contains("SNAPSHOT");
        String[] split = versionInfo.mVersionName.replaceAll("\\.", "_").replaceAll("-", "_").split("_");
        if (split.length >= 3) {
            versionInfo.mMajorVersion = Integer.parseInt(split[0]);
            versionInfo.mFeatureVersion = Integer.parseInt(split[1]);
            versionInfo.mFixVersion = Integer.parseInt(split[2]);
            try {
                versionInfo.mBuildNumber = Integer.parseInt(split[3]);
            } catch (Exception unused) {
                versionInfo.mBuildNumber = -1;
                versionInfo.mDebugVersion = true;
            }
        } else {
            versionInfo.mMajorVersion = -1;
            versionInfo.mFeatureVersion = -1;
            versionInfo.mFixVersion = -1;
            versionInfo.mBuildNumber = -1;
        }
        return versionInfo;
    }

    public static VersionInfo getRemoteVersion() {
        return sRemoteVersion;
    }

    public static void setRemoteVersion(VersionInfo versionInfo) {
        sRemoteVersion = versionInfo;
    }

    @Override // java.lang.Comparable
    public int compareTo(VersionInfo versionInfo) {
        if (this.mMajorVersion > versionInfo.mMajorVersion) {
            return 1;
        }
        if (this.mMajorVersion != versionInfo.mMajorVersion) {
            return -1;
        }
        if (this.mFeatureVersion > versionInfo.mFeatureVersion) {
            return 1;
        }
        if (this.mFeatureVersion != versionInfo.mFeatureVersion) {
            return -1;
        }
        if (this.mFixVersion > versionInfo.mFixVersion) {
            return 1;
        }
        return this.mFixVersion == versionInfo.mFixVersion ? 0 : -1;
    }
}
