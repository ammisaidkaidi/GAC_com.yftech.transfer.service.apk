package com.tencent.wecarbase.utils;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.tencent.wecarbase.common.ContextHolder;

/* loaded from: /home/user/work/dex/classes.dex */
public class SpeechRoleDBUtils {
    public static final String ROLE_DAJI_ID = "daji";
    public static final String ROLE_DB_URI = "content://com.tencent.wecarspeech.db.role";
    public static final String ROLE_DINGDANG_ID = "dingdang";
    public static final String ROLE_GUANGQI_ID = "guangqi";
    public static final String ROLE_LIBAI_ID = "libai";
    private static String TAG = "SpeechRoleDBUtils";

    public static String getRoleFromDB() {
        try {
            Cursor query = ContextHolder.getContext().getContentResolver().query(Uri.parse(ROLE_DB_URI), null, null, null, null);
            if (query != null && query.getCount() > 0 && query.moveToNext()) {
                String string = query.getString(query.getColumnIndex("role"));
                LogUtils.d(TAG, "role is " + string);
                return string;
            }
        } catch (Exception e) {
            LogUtils.d(TAG, "can't not get role");
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
        }
        LogUtils.d(TAG, "role db read，return DINGDANG_ID");
        return "dingdang";
    }

    public static void registerRoleDBObserver(ContentObserver contentObserver) {
        try {
            ContextHolder.getContext().getContentResolver().registerContentObserver(Uri.parse(ROLE_DB_URI), true, contentObserver);
        } catch (Exception e) {
            LogUtils.d(TAG, "can't not observe role");
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
        }
    }
}
