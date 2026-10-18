package com.tencent.taifeedback.upload.sdk.utils;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.CRC32;
import java.util.zip.CheckedOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: /home/user/work/dex/classes.dex */
public class ZipUtil {
    private static final String BASE_DIR = "";
    private static final int BUFFER = 1024;
    private static final String PATH = "/";
    private static final String TAG = "ZipUtil";
    private static ZipUtil zipUtil;

    public static ZipUtil getInstance() {
        if (zipUtil == null) {
            zipUtil = new ZipUtil();
        }
        return zipUtil;
    }

    public void destroy() {
        zipUtil = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0043 -> B:12:0x004c). Please report as a decompilation issue!!! */
    public void compress(File[] fileArr, String str) {
        ZipOutputStream zipOutputStream;
        ZipOutputStream zipOutputStream2 = null;
        ZipOutputStream zipOutputStream3 = null;
        zipOutputStream2 = null;
        try {
            try {
                try {
                    zipOutputStream = new ZipOutputStream(new CheckedOutputStream(new FileOutputStream(str), new CRC32()));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            Log.e(TAG, Log.getStackTraceString(e2));
            zipOutputStream2 = zipOutputStream2;
        }
        try {
            int length = fileArr.length;
            for (File file : fileArr) {
                compress(file, zipOutputStream, "");
            }
            zipOutputStream.flush();
            zipOutputStream.close();
            zipOutputStream2 = length;
        } catch (Exception e3) {
            e = e3;
            zipOutputStream3 = zipOutputStream;
            Log.e(TAG, Log.getStackTraceString(e));
            zipOutputStream2 = zipOutputStream3;
            if (zipOutputStream3 != null) {
                zipOutputStream3.close();
                zipOutputStream2 = zipOutputStream3;
            }
        } catch (Throwable th2) {
            th = th2;
            zipOutputStream2 = zipOutputStream;
            if (zipOutputStream2 != null) {
                try {
                    zipOutputStream2.close();
                } catch (Exception e4) {
                    Log.e(TAG, Log.getStackTraceString(e4));
                }
            }
            throw th;
        }
    }

    private void compress(File file, ZipOutputStream zipOutputStream, String str) throws Exception {
        if (file.isDirectory()) {
            compressDir(file, zipOutputStream, str);
        } else {
            compressFile(file, zipOutputStream, str);
        }
    }

    private void compressDir(File file, ZipOutputStream zipOutputStream, String str) throws Exception {
        File[] listFiles = file.listFiles();
        if (listFiles.length < 1) {
            zipOutputStream.putNextEntry(new ZipEntry(str + file.getName() + PATH));
            zipOutputStream.closeEntry();
        }
        for (File file2 : listFiles) {
            compress(file2, zipOutputStream, str + file.getName() + PATH);
        }
    }

    private void compressFile(File file, ZipOutputStream zipOutputStream, String str) throws Exception {
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            zipOutputStream.putNextEntry(new ZipEntry(str + file.getName()));
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = bufferedInputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    zipOutputStream.write(bArr, 0, read);
                } else {
                    bufferedInputStream.close();
                    zipOutputStream.closeEntry();
                    return;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            if (bufferedInputStream2 != null) {
                bufferedInputStream2.close();
            }
            throw th;
        }
    }
}
