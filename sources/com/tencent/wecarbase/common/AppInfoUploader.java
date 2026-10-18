package com.tencent.wecarbase.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.taiutils.TimeUtils;
import com.tencent.wecarbase.WeCarBaseSDK;
import com.tencent.wecarbase.client.AccountManager;
import com.tencent.wecarbase.client.SimpleEventListener;
import com.tencent.wecarbase.common.helper.SignHelper;
import com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory;
import com.tencent.wecarbase.common.tools.network.http.BaseJsonPostRequest;
import com.tencent.wecarbase.common.tools.network.http.HttpResult;
import com.tencent.wecarbase.model.WeCarAccount;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.NetworkUtils;
import com.tencent.wecarbase.utils.PackageUtils;
import com.tencent.wecarspeech.clientsdk.impl.SystemRegistration;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppInfoUploader {
    private static final String DOMAIN_DEV = "http://wecarplattest.sparta.html5.qq.com";
    private static final String DOMAIN_ONLINE = "http://plat.wecar.map.qq.com";
    private static AppInfoUploader INSTANCE = new AppInfoUploader();
    private static final String KEY_CACHED_VERSION_CODE = "cached_version_code";
    private static final String KEY_CACHED_VERSION_CODE_WECARID = "cached_version_code_wecar_id";
    private static final String KEY_TAISERVICE_CACHED_VERSION_CODE = "taiservice_cached_version_code";
    private static final String KEY_TAISERVICE_CACHED_VERSION_CODE_WECARID = "taiservice_cached_version_code_wecar_id";
    private static final String TAISERVICE_PACKAGE_NAME = "com.tencent.taiservice";
    private String TAG = getClass().getSimpleName();
    private boolean mInitialized = false;
    private AtomicBoolean mUploading = new AtomicBoolean(false);
    private boolean mIsTAIService = false;
    private Runnable mRunnable = new Runnable() { // from class: com.tencent.wecarbase.common.AppInfoUploader.1
        /* JADX WARN: Can't wrap try/catch for region: R(8:11|(11:16|(1:18)(1:68)|19|20|21|(1:23)(3:59|60|61)|24|(3:29|(1:53)(2:31|(2:33|(2:35|(2:37|38)(1:40))(1:41))(1:(2:43|44)(1:52)))|39)|57|58|39)|69|70|71|72|74|39) */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x019c, code lost:
        
            com.tencent.wecarbase.utils.LogUtils.fd(r16.this$0.TAG, "uploadAppInfo, response is null or not success");
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01d8, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x01da, code lost:
        
            com.tencent.wecarbase.utils.LogUtils.e(r16.this$0.TAG, "AppInfoUploader, mRunnable get account error: " + r0.getMessage());
         */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0164 A[Catch: all -> 0x0261, Exception -> 0x0263, TryCatch #3 {Exception -> 0x0263, blocks: (B:3:0x0002, B:5:0x0008, B:8:0x002e, B:9:0x005c, B:11:0x0062, B:13:0x006c, B:16:0x0078, B:18:0x009a, B:19:0x00bf, B:24:0x0134, B:26:0x0150, B:29:0x0157, B:31:0x0164, B:33:0x016d, B:35:0x0175, B:37:0x0183, B:46:0x01fe, B:48:0x0206, B:49:0x0237, B:51:0x0220, B:55:0x019c, B:57:0x01a8, B:64:0x0116, B:68:0x00b0, B:69:0x01c7, B:77:0x01da), top: B:2:0x0002, outer: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x01f8 A[SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            boolean z;
            HttpResult httpResult;
            JSONObject jSONObject;
            try {
                try {
                    Context context = ContextHolder.getContext();
                    if (context != null) {
                        String packageName = context.getPackageName();
                        int versionCode = PackageUtils.getVersionCode(context, packageName);
                        String versionName = PackageUtils.getVersionName(context, packageName);
                        boolean isOnlineEnv = WeCarBaseSDK.getInstance().getConfig().isOnlineEnv();
                        StringBuilder sb = new StringBuilder();
                        sb.append(isOnlineEnv ? AppInfoUploader.DOMAIN_ONLINE : AppInfoUploader.DOMAIN_DEV);
                        sb.append("/node/appversionsave");
                        String sb2 = sb.toString();
                        LogUtils.fd(AppInfoUploader.this.TAG, "uploadAppInfo, online = " + isOnlineEnv + ", url = " + sb2);
                        int i = 0;
                        String str = null;
                        while (true) {
                            int i2 = i + 1;
                            z = true;
                            if (i >= 3) {
                                z = false;
                                break;
                            }
                            WeCarAccount weCarAccount = AccountManager.getInstance().getWeCarAccount();
                            if (weCarAccount != null && !TextUtils.isEmpty(weCarAccount.getWeCarId())) {
                                str = weCarAccount.getWeCarId();
                                long nonce = AccountManager.getInstance().getNonce();
                                String sessionKey = weCarAccount.getSessionKey();
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("wecarId", str);
                                if (AppInfoUploader.this.mIsTAIService) {
                                    jSONObject2.put(PackageUtils.UPLOAD_PACKAGE_NAME, "com.tencent.taiservice");
                                    jSONObject2.put("versionname", "3.1.0.474");
                                    jSONObject2.put("versioncode", "3.1.0.474");
                                } else {
                                    jSONObject2.put(PackageUtils.UPLOAD_PACKAGE_NAME, packageName);
                                    jSONObject2.put("versionname", versionName);
                                    jSONObject2.put("versioncode", versionCode);
                                }
                                jSONObject2.put("nonce", nonce);
                                jSONObject2.put(SystemRegistration.COLUMN_APPNAME, "test");
                                jSONObject2.put(FeedBackConstants.CALLBACK_PARAM_SKEY, sessionKey);
                                jSONObject2.put("sig", SignHelper.generateSigForHttpPost("/node/appversionsave", jSONObject2));
                                String jSONObject3 = jSONObject2.toString();
                                try {
                                    BaseJsonPostRequest baseJsonPostRequest = new BaseJsonPostRequest(1, sb2, jSONObject3);
                                    LogUtils.fd(AppInfoUploader.this.TAG, "uploadAppInfo, request url is " + sb2 + " body is " + jSONObject3);
                                    httpResult = baseJsonPostRequest.execute();
                                    if (httpResult == null) {
                                        jSONObject3 = null;
                                    } else {
                                        try {
                                            jSONObject3 = httpResult.getStringBody();
                                        } catch (Exception e) {
                                            e = e;
                                            LogUtils.e(AppInfoUploader.this.TAG, "AppInfoUploader, mRunnable HttpRequest error: " + Log.getStackTraceString(e));
                                            LogUtils.fd(AppInfoUploader.this.TAG, "uploadAppInfo, response body = " + jSONObject3);
                                            if (httpResult != null) {
                                                jSONObject = new JSONObject(jSONObject3);
                                                if (jSONObject.has("err")) {
                                                }
                                                i = i2;
                                            }
                                            LogUtils.fd(AppInfoUploader.this.TAG, "uploadAppInfo, response is not nul, statusCode = " + httpResult.getStatusCode());
                                            i = i2;
                                        }
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                    httpResult = null;
                                }
                                LogUtils.fd(AppInfoUploader.this.TAG, "uploadAppInfo, response body = " + jSONObject3);
                                if (httpResult != null && httpResult.isSucceeded()) {
                                    jSONObject = new JSONObject(jSONObject3);
                                    if (jSONObject.has("err")) {
                                        continue;
                                    } else {
                                        int i3 = jSONObject.getInt("err");
                                        if (i3 == 5) {
                                            if (jSONObject.has("content")) {
                                                JSONObject jSONObject4 = jSONObject.getJSONObject("content");
                                                if (jSONObject4.has(FeedBackConstants.CALLBACK_PARAM_SKEY)) {
                                                    AccountManager.getInstance().updateSessionKey(jSONObject4.getString(FeedBackConstants.CALLBACK_PARAM_SKEY), jSONObject4.getLong("nonce"));
                                                }
                                            }
                                        } else if (i3 == 0) {
                                            break;
                                        }
                                    }
                                    i = i2;
                                }
                                LogUtils.fd(AppInfoUploader.this.TAG, "uploadAppInfo, response is not nul, statusCode = " + httpResult.getStatusCode());
                                i = i2;
                            }
                            LogUtils.fe(AppInfoUploader.this.TAG, "uploadAppInfo, but no wecarId, retry");
                            Thread.sleep(2000L);
                            i = i2;
                        }
                        if (z) {
                            if (AppInfoUploader.this.mIsTAIService) {
                                PreferenceManager.getDefaultSharedPreferences(context).edit().putString(AppInfoUploader.KEY_TAISERVICE_CACHED_VERSION_CODE, "com.tencent.taiservice").putString(AppInfoUploader.KEY_TAISERVICE_CACHED_VERSION_CODE_WECARID, str).apply();
                            } else {
                                PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(AppInfoUploader.KEY_CACHED_VERSION_CODE, versionCode).putString(AppInfoUploader.KEY_CACHED_VERSION_CODE_WECARID, str).apply();
                            }
                            LogUtils.fd(AppInfoUploader.this.TAG, "uploadAppInfo, save vc " + versionCode + " to sp");
                        }
                    }
                } finally {
                    AppInfoUploader.this.mUploading.set(false);
                }
            } catch (Exception e3) {
                LogUtils.e(AppInfoUploader.this.TAG, "AppInfoUploader, mRunnable error: " + e3.getMessage());
            }
        }
    };
    private SimpleEventListener mEventListener = new SimpleEventListener() { // from class: com.tencent.wecarbase.common.AppInfoUploader.2
        @Override // com.tencent.wecarbase.client.SimpleEventListener, com.tencent.wecarbase.client.AccountEventListener
        public void onWeCarIdRegistered(WeCarAccount weCarAccount) {
            AppInfoUploader.this.uploadAppInfo(true);
        }

        @Override // com.tencent.wecarbase.client.SimpleEventListener, com.tencent.wecarbase.client.AccountEventListener
        public void onWeCarIdChanged(WeCarAccount weCarAccount, WeCarAccount weCarAccount2) {
            AppInfoUploader.this.uploadAppInfo(true);
        }
    };
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.tencent.wecarbase.common.AppInfoUploader.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                LogUtils.d(AppInfoUploader.this.TAG, "receive action " + action);
                if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) && NetworkUtils.isNetworkAvailable(context)) {
                    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) && PackageUtils.getVersionCode(ContextHolder.getContext(), ContextHolder.getContext().getPackageName()) == PreferenceManager.getDefaultSharedPreferences(ContextHolder.getContext()).getInt(AppInfoUploader.KEY_CACHED_VERSION_CODE, -1)) {
                        long elapsedRealtime = SystemClock.elapsedRealtime() - PreferenceManager.getDefaultSharedPreferences(context).getLong("AppInfoUploader_android.net.conn.CONNECTIVITY_CHANGE", 0L);
                        if (0 < elapsedRealtime && elapsedRealtime < TimeUtils.MINUTE_MILLIS) {
                            LogUtils.d(AppInfoUploader.this.TAG, "ignore CONNECTIVITY_ACTION, time gap = " + elapsedRealtime + "ms");
                            return;
                        }
                        PreferenceManager.getDefaultSharedPreferences(context).edit().putLong("AppInfoUploader_android.net.conn.CONNECTIVITY_CHANGE", SystemClock.elapsedRealtime()).apply();
                    }
                    AppInfoUploader.this.uploadAppInfo(false);
                }
            } catch (Exception e) {
                LogUtils.e(AppInfoUploader.this.TAG, "AppInfoUploader, BroadcastReceiver error: " + e.getMessage());
            }
        }
    };

    private AppInfoUploader() {
    }

    public static AppInfoUploader getInstance() {
        return INSTANCE;
    }

    public void init(Context context, boolean z) {
        if (this.mInitialized) {
            return;
        }
        WeCarBaseSDK.getInstance().registerEventListener(this.mEventListener);
        synchronized (this) {
            if (!this.mInitialized) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                ContextHolder.getContext().registerReceiver(this.mReceiver, intentFilter);
                this.mInitialized = true;
            }
            this.mIsTAIService = z;
        }
    }

    public void unInit() {
        if (this.mInitialized) {
            this.mInitialized = false;
            WeCarBaseSDK.getInstance().unregisterEventListener(this.mEventListener);
            try {
                ContextHolder.getContext().unregisterReceiver(this.mReceiver);
            } catch (Exception e) {
                Log.e(this.TAG, e.getMessage());
            }
        }
    }

    public void testNet() {
        this.mReceiver.onReceive(ContextHolder.getContext(), new Intent("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public void uploadAppInfo(boolean z) {
        if (!this.mInitialized || ContextHolder.getContext() == null) {
            LogUtils.fe(this.TAG, "uploadAppInfo, forceUpload = " + z + ", but mInitialized is:" + this.mInitialized);
            return;
        }
        WeCarAccount weCarAccount = AccountManager.getInstance().getWeCarAccount();
        String weCarId = weCarAccount == null ? null : weCarAccount.getWeCarId();
        String string = PreferenceManager.getDefaultSharedPreferences(ContextHolder.getContext()).getString(KEY_CACHED_VERSION_CODE_WECARID, null);
        String valueOf = this.mIsTAIService ? "3.1.0.474" : String.valueOf(PackageUtils.getVersionCode(ContextHolder.getContext(), ContextHolder.getContext().getPackageName()));
        String string2 = this.mIsTAIService ? PreferenceManager.getDefaultSharedPreferences(ContextHolder.getContext()).getString(KEY_TAISERVICE_CACHED_VERSION_CODE, "-1") : String.valueOf(PreferenceManager.getDefaultSharedPreferences(ContextHolder.getContext()).getInt(KEY_CACHED_VERSION_CODE, -1));
        boolean z2 = (!z && valueOf.equals(string2) && TextUtils.equals(weCarId, string)) ? false : true;
        String str = "Upload AppInfo, forceUpload = " + z + ", curtWeCarId = " + weCarId + ", cachedWeCarId = " + string + ", curtVc = " + valueOf + ", cachedVc = " + string2 + ", mUploading = " + this.mUploading.get();
        if (z2 && this.mUploading.compareAndSet(false, true)) {
            LogUtils.fd(this.TAG, "do " + str);
            TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(this.mRunnable);
            return;
        }
        LogUtils.d(this.TAG, "cancel " + str);
    }
}
