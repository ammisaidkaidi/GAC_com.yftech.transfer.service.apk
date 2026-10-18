package com.tencent.wecarbase.common;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.wecarbase.account.AccountLocalHelper;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.model.SerializableMap;
import com.tencent.wecarbase.model.WeCarAccount;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.Hashtable;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class VersionProvider extends ContentProvider {
    public static final String AUTHORITIES_SUFFIX = ".VersionProvider";
    public static final String KEY_DEVICE_IDS = "device_ids";
    public static final String KEY_NONCE = "nonce";
    public static final String KEY_PRIORITY_CODE = "version_code";
    public static final String KEY_PRODUCT_CHANNEL = "product_channel";
    public static final String KEY_VERSION_NAME = "version_name";
    public static final String KEY_WECAR_ACCOUNT = "wecar_account";
    public static final String METHOD_GET_DEVICE_IDS = "getDeviceIds";
    public static final String METHOD_GET_PRODUCT_CHANNEL = "getAPPChannel";
    public static final String METHOD_GET_VERSION_CODE = "getVersionCode";
    public static final String METHOD_GET_WECAR_ACCOUNT = "getWeCarAccount";
    private static final String TAG = "VersionProvider";
    private static Map<String, Uri> gUriMap = new Hashtable();

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public VersionProvider() {
        LogUtils.d(TAG, "VersionProvider()");
    }

    public static Uri getUriForPackage(String str) {
        if (!gUriMap.containsKey(str)) {
            gUriMap.put(str, Uri.parse("content://" + str + AUTHORITIES_SUFFIX));
        }
        return gUriMap.get(str);
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        LogUtils.d(TAG, "call " + str + ", arg = " + str2 + ", extras = " + bundle + ", thread = " + Thread.currentThread().getName());
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (METHOD_GET_VERSION_CODE.equals(str)) {
            return getVersionCode();
        }
        if (METHOD_GET_PRODUCT_CHANNEL.equals(str)) {
            return getProductChannel();
        }
        if ("getWeCarAccount".equals(str)) {
            return getWeCarAccount();
        }
        if (METHOD_GET_DEVICE_IDS.equals(str)) {
            return getDeviceIds();
        }
        return null;
    }

    private Bundle getVersionCode() {
        Bundle bundle = new Bundle();
        bundle.putInt("version_code", 1);
        return bundle;
    }

    private Bundle getProductChannel() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            for (int i = 0; i < 100 && !ConfigHolder.getInstance().hasInitialized(); i += 20) {
                try {
                    Thread.sleep(20L);
                } catch (InterruptedException e) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                    Thread.currentThread().interrupt();
                }
            }
        }
        Bundle bundle = new Bundle();
        SDKConfig config = ConfigHolder.getInstance().getConfig();
        if (config != null) {
            bundle.putString(KEY_PRODUCT_CHANNEL, config.getLocalAPPChannel());
        }
        return bundle;
    }

    private Bundle getWeCarAccount() {
        WeCarAccount loadWeCarAccount = AccountLocalHelper.loadWeCarAccount(getContext());
        Bundle bundle = new Bundle();
        bundle.putParcelable("wecar_account", loadWeCarAccount);
        return bundle;
    }

    private Bundle getDeviceIds() {
        SDKConfig config = ConfigHolder.getInstance().getConfig();
        Bundle bundle = new Bundle();
        if (config != null) {
            bundle.putSerializable(KEY_DEVICE_IDS, new SerializableMap(config.getLocalDeviceIds()));
        }
        return bundle;
    }
}
