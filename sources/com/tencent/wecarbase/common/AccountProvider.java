package com.tencent.wecarbase.common;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.wecarbase.account.AccountLocalHelper;
import com.tencent.wecarbase.model.WeCarAccount;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.Hashtable;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class AccountProvider extends ContentProvider {
    public static final String AUTHORITIES_SUFFIX = ".AccountProvider";
    public static final String KEY_WECAR_ACCOUNT = "wecar_account";
    public static final String METHOD_GET_WECAR_ACCOUNT = "getWeCarAccount";
    private static final String TAG = "AccountProvider";
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

    public AccountProvider() {
        LogUtils.d(TAG, "AccountProvider()");
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
        if (TextUtils.isEmpty(str) || !"getWeCarAccount".equals(str)) {
            return null;
        }
        return getWeCarAccount();
    }

    private Bundle getWeCarAccount() {
        WeCarAccount loadWeCarAccount = AccountLocalHelper.loadWeCarAccount(getContext());
        Bundle bundle = new Bundle();
        bundle.putParcelable("wecar_account", loadWeCarAccount);
        return bundle;
    }
}
