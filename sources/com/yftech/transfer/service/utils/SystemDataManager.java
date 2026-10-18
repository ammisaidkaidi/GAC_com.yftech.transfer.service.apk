package com.yftech.transfer.service.utils;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.support.v4.app.ActivityCompat;
import com.tencent.wecarspeech.sdk.TASTelManager;
import com.yftech.transfer.service.R;
import com.yftech.transfer.tencent.access.TASSystem;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class SystemDataManager {
    public static final String TAG = "SystemDataManager:";
    private static SystemDataManager manager;

    private SystemDataManager() {
    }

    public static synchronized SystemDataManager getInstance() {
        SystemDataManager systemDataManager;
        synchronized (SystemDataManager.class) {
            if (manager == null) {
                synchronized (SystemDataManager.class) {
                    if (manager == null) {
                        manager = new SystemDataManager();
                    }
                }
            }
            systemDataManager = manager;
        }
        return systemDataManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0065, code lost:
    
        if (r11 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0067, code lost:
    
        r11.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007a  */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.tencent.wecarspeech.sdk.TASTelManager$PhoneContact] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TASTelManager.PhoneContact getCallLogs() {
        Throwable th = null;
        if (ActivityCompat.checkSelfPermission(TASSystem.mContext, "android.permission.READ_CALL_LOG") != 0) {
            return null;
        }
        ?? r4 = "name";
        try {
            try {
                Cursor query = TASSystem.mContext.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"_id", "number", "date", "type", "name"}, null, null, "date DESC");
                try {
                    synchronized (SystemDataManager.class) {
                        try {
                            if (query != null) {
                                try {
                                    if (query.moveToNext()) {
                                        String string = query.getString(query.getColumnIndex("number"));
                                        String string2 = query.getString(query.getColumnIndex("name"));
                                        if (string2 != null && string2.equalsIgnoreCase(string)) {
                                            string2 = TASSystem.mContext.getString(R.string.txt_bt_number_unknown);
                                        }
                                        r4 = new TASTelManager.PhoneContact(string2, string);
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    r4 = 0;
                                }
                            }
                            r4 = 0;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    try {
                        try {
                            throw th;
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        if (query != null) {
                            if (th != null) {
                                try {
                                    query.close();
                                } catch (Throwable th6) {
                                    th.addSuppressed(th6);
                                }
                            } else {
                                query.close();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th7) {
                    r4 = 0;
                    th = th7;
                    throw th;
                }
            } catch (Exception e) {
                e = e;
                r4 = 0;
                e.printStackTrace();
                return r4;
            }
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            return r4;
        }
    }

    public ArrayList<TASTelManager.PhoneContact> getContacts(ContentResolver contentResolver, ArrayList<TASTelManager.PhoneContact> arrayList) {
        try {
            Cursor query = contentResolver.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "display_name", "sync4"}, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    int i = query.getInt(query.getColumnIndex("_id"));
                    String string = query.getString(query.getColumnIndex("display_name"));
                    try {
                        Cursor query2 = contentResolver.query(Uri.parse("content://com.android.contacts/raw_contacts/" + i + "/data"), new String[]{"mimetype", "data1"}, null, null, null);
                        if (query2 != null) {
                            while (query2.moveToNext()) {
                                if ("vnd.android.cursor.item/phone_v2".equals(query2.getString(query2.getColumnIndex("mimetype")))) {
                                    arrayList.add(new TASTelManager.PhoneContact(string, query2.getString(query2.getColumnIndex("data1"))));
                                }
                            }
                            query2.close();
                        }
                    } catch (Exception e) {
                        TASSystem.LOGI("-----get contacts error:" + e.getMessage());
                        e.printStackTrace();
                    }
                }
                query.close();
            }
            TASSystem.LOGI("----- get contacts ---end----");
        } catch (Exception e2) {
            TASSystem.LOGI("get contacts error:" + e2.getMessage());
            e2.printStackTrace();
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[Catch: Exception -> 0x0051, SYNTHETIC, TryCatch #4 {Exception -> 0x0051, blocks: (B:3:0x000d, B:6:0x004d, B:24:0x003e, B:21:0x0047, B:28:0x0043, B:22:0x004a), top: B:2:0x000d, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private InputStream openPhoto(ContentResolver contentResolver, long j) {
        Throwable th;
        Throwable th2;
        byte[] blob;
        ByteArrayInputStream byteArrayInputStream = null;
        try {
            Cursor query = contentResolver.query(Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), "photo"), new String[]{"data15"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst() && (blob = query.getBlob(0)) != null) {
                        byteArrayInputStream = new ByteArrayInputStream(blob);
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        th = th3;
                        th2 = th4;
                        if (query != null) {
                            throw th2;
                        }
                        if (th == null) {
                            query.close();
                            throw th2;
                        }
                        try {
                            query.close();
                            throw th2;
                        } catch (Throwable th5) {
                            th.addSuppressed(th5);
                            throw th2;
                        }
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return byteArrayInputStream;
    }

    public String getNameByNumber(ContentResolver contentResolver, String str) {
        String string;
        try {
            Uri uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
            Cursor query = contentResolver.query(uri, new String[]{"display_name", "data1"}, "data1=" + str, null, null);
            Throwable th = null;
            try {
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            int i = 0;
                            do {
                                try {
                                    query.moveToPosition(i);
                                    i++;
                                    string = query.getString(query.getColumnIndex("display_name"));
                                    try {
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            } while (i < query.getCount());
                            if (string != null) {
                                if (!string.trim().isEmpty()) {
                                    str = string;
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        uri = str;
                        th = th4;
                    }
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Exception e) {
            e = e;
        }
        return str;
    }
}
