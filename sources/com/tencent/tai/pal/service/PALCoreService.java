package com.tencent.tai.pal.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.INoProguardClass;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.VersionInfo;
import com.tencent.tai.pal.b;

/* loaded from: /home/user/work/dex/classes.dex */
public class PALCoreService extends Service implements INoProguardClass {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f144a = false;
    private b.a b = new b.a() { // from class: com.tencent.tai.pal.service.PALCoreService.1
        @Override // com.tencent.tai.pal.b
        public String a(String str) throws RemoteException {
            VersionInfo fromJsonString = VersionInfo.fromJsonString(str);
            Log.i(SDKConstants.TAG, "PALCoreService.versionMatch clientVersionInfo:" + str);
            VersionInfo localVersion = VersionInfo.getLocalVersion();
            Log.i(SDKConstants.TAG, "PALCoreService.versionMatch serverVersionInfo:" + localVersion);
            if (fromJsonString == null) {
                throw new IllegalArgumentException("client versionInfo should NOT be NULL");
            }
            int callingUid = Binder.getCallingUid();
            com.tencent.tai.pal.a.a(callingUid, fromJsonString);
            Log.i(SDKConstants.TAG, "client uid:" + callingUid + " ClientVersionInfo:" + fromJsonString);
            int majorVersion = fromJsonString.getMajorVersion();
            if (localVersion.getMajorVersion() <= majorVersion) {
                return localVersion.toString();
            }
            if (majorVersion != 0) {
                if (majorVersion == 2) {
                    throw new IllegalArgumentException("version 2.x is no longer supported, please update to 3.x");
                }
                return localVersion.toString();
            }
            Log.i(SDKConstants.TAG, "PALCoreService.versionMatch return fake versionInfo:{\"mBuildNumber\":0,\"mDebugVersion\":false,\"mFeatureVersion\":0,\"mFixVersion\":0,\"mMajorVersion\":0,\"mVersionCode\":0,\"mVersionName\":\"0.0.0.0\"}");
            return "{\"mBuildNumber\":0,\"mDebugVersion\":false,\"mFeatureVersion\":0,\"mFixVersion\":0,\"mMajorVersion\":0,\"mVersionCode\":0,\"mVersionName\":\"0.0.0.0\"}";
        }

        @Override // com.tencent.tai.pal.b
        public String a() throws RemoteException {
            Log.i(SDKConstants.TAG, "PALCoreService.getSupportInfo SupportInfo:" + b.a().b());
            return b.a().b();
        }

        @Override // com.tencent.tai.pal.b
        public IBinder a(String str, String str2) throws RemoteException {
            a a2 = b.a().a(str);
            if (a2 == null) {
                throw new IllegalArgumentException("Service:" + str + " not supported.PALCoreService versionName:3.15.1.74 versionCode:202107051743");
            }
            return a2.c();
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i(SDKConstants.TAG, "PALCoreService.onCreate");
        b.a().a(this);
        if (f144a) {
            return;
        }
        f144a = true;
        Intent intent = new Intent(SDKConstants.ACTION_SERVICE_CREATE_BROADCAST);
        intent.putExtra(SDKConstants.KEY_PACKAGE_NAME, getPackageName());
        sendBroadcast(intent);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        com.tencent.tai.pal.a.a();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.b;
    }
}
