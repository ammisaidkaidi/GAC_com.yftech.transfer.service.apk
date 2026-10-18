package com.tencent.wecarspeech.clientsdk.impl;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import com.tencent.wecarspeech.clientsdk.model.Domain;
import com.tencent.wecarspeech.clientsdk.model.WakeUpScene;
import com.tencent.wecarspeech.clientsdk.utils.AppUtils;
import com.tencent.wecarspeech.clientsdk.utils.GsonUtils;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import java.util.HashSet;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class SystemRegistration {
    public static final String AUTOHORITY = "content://com.tencent.wecarspeech.vframework.contentprovider";
    public static final String COLUMN_ALIAS = "alias";
    public static final String COLUMN_APPID = "appId";
    public static final String COLUMN_APPNAME = "appName";
    public static final String COLUMN_APPTYPE = "appType";
    public static final String COLUMN_DOMAIN = "domainJson";
    public static final String COLUMN_PKGNAME = "packageName";
    public static final String COLUMN_WAKEUP = "wakeupJson";
    private static final String TAG = "SystemRegistration";
    public static final String WECAR_AUTHORITY = "content://com.tencent.wecar.vframework.contentprovider";
    private SpeechClient mClient;
    private Context mContext;
    private Handler mHandlerBinder;

    public SystemRegistration(Context context, Handler handler, SpeechClient speechClient) {
        this.mContext = context;
        this.mClient = speechClient;
        this.mHandlerBinder = handler;
    }

    public void registerSystemWakeup(WakeUpScene wakeUpScene) {
        if (wakeUpScene == null) {
            LogUtils.e(TAG, "registerSystemWakeup err scene == null");
            wakeUpScene = new WakeUpScene();
        }
        LogUtils.d(TAG, "registerSystemWakeup scene = " + wakeUpScene.toString());
        final ContentValues constructDefaultValues = constructDefaultValues();
        constructDefaultValues.put(COLUMN_WAKEUP, GsonUtils.toJson(wakeUpScene));
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SystemRegistration.1
            @Override // java.lang.Runnable
            public void run() {
                int speechVerCode = SpeechServerTool.getSpeechVerCode(SystemRegistration.this.mContext);
                if (!AppUtils.isAPPInstalled(SystemRegistration.this.mContext, "com.tencent.wecarspeech") || speechVerCode < 300) {
                    SystemRegistration.this.writeProvider("/client/wakeup", constructDefaultValues, SystemRegistration.AUTOHORITY);
                    SystemRegistration.this.writeProvider("/client/wakeup", constructDefaultValues, SystemRegistration.WECAR_AUTHORITY);
                } else {
                    SystemRegistration.this.writeProvider("/client/wakeup", constructDefaultValues, SystemRegistration.AUTOHORITY);
                }
            }
        });
    }

    public void registerSystemDomain(Set<Domain> set) {
        if (set == null) {
            LogUtils.e(TAG, "registerSystemDomain err domainSet == null");
            set = new HashSet<>();
        }
        LogUtils.d(TAG, "registerSystemDomain");
        final ContentValues constructDefaultValues = constructDefaultValues();
        constructDefaultValues.put(COLUMN_DOMAIN, GsonUtils.toJson(set));
        this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SystemRegistration.2
            @Override // java.lang.Runnable
            public void run() {
                int speechVerCode = SpeechServerTool.getSpeechVerCode(SystemRegistration.this.mContext);
                if (!AppUtils.isAPPInstalled(SystemRegistration.this.mContext, "com.tencent.wecarspeech") || speechVerCode < 300) {
                    SystemRegistration.this.writeProvider("/client/domain", constructDefaultValues, SystemRegistration.AUTOHORITY);
                    SystemRegistration.this.writeProvider("/client/domain", constructDefaultValues, SystemRegistration.WECAR_AUTHORITY);
                } else {
                    SystemRegistration.this.writeProvider("/client/domain", constructDefaultValues, SystemRegistration.AUTOHORITY);
                }
            }
        });
    }

    private ContentValues constructDefaultValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("appId", this.mClient.getAppId());
        contentValues.put("packageName", this.mClient.getPkgName());
        contentValues.put(COLUMN_APPNAME, this.mClient.getAppName());
        contentValues.put(COLUMN_APPTYPE, Long.valueOf(this.mClient.getClientType()));
        contentValues.put("alias", this.mClient.getAlias());
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeProvider(String str, ContentValues contentValues, String str2) {
        LogUtils.d(TAG, "writeProvider values = " + contentValues.toString());
        if (this.mContext == null) {
            LogUtils.d(TAG, "mContext == null");
            return;
        }
        Uri parse = Uri.parse(str2 + str);
        ContentResolver contentResolver = this.mContext.getContentResolver();
        if (contentResolver != null) {
            try {
                contentResolver.insert(parse, contentValues);
            } catch (Exception e) {
                LogUtils.e(TAG, "writeProvider " + str2 + " err msg : ", e);
            }
        }
    }
}
