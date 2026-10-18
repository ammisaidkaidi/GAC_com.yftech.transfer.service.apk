package com.baidu.navisdk.hudsdk.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public class BitmapUtils {
    public static String encodeToBase64Str(byte[] bArr) {
        if (bArr != null) {
            return Base64.encodeToString(bArr, 0);
        }
        return null;
    }

    public static byte[] decodeBase64Str(String str) {
        if (str != null) {
            return Base64.decode(str, 0);
        }
        return null;
    }

    public static byte[] bitmap2Bytes(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException unused) {
        }
        return byteArray;
    }

    public static Bitmap bytes2Bimap(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
    }

    public static void mkdir(String str) {
        File file = new File(str);
        if (file.getParentFile().exists()) {
            if (file.exists()) {
                return;
            }
            file.mkdir();
            return;
        }
        mkdir(file.getParent());
    }

    public static void writeBitmapToFile(Bitmap bitmap, String str, int i) {
        FileOutputStream fileOutputStream;
        File file = new File(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    fileOutputStream = new FileOutputStream(file);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e) {
                e = e;
            }
            try {
                if (i == 1) {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                } else {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                }
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e2) {
                e = e2;
                fileOutputStream2 = fileOutputStream;
                e.printStackTrace();
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public static Bitmap readBitmapFromFile(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        Bitmap decodeFile = BitmapFactory.decodeFile(str);
        File file = new File(str);
        if (!file.exists()) {
            return decodeFile;
        }
        file.delete();
        return decodeFile;
    }
}
