package com.tencent.wecarflow.contentsdk.utils;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: /home/user/work/dex/classes.dex */
public class FileUtils {
    private static final String TAG = "FileUtils";

    private FileUtils() {
    }

    public static String write(String str, String str2) {
        File file;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                file = new File(Environment.getExternalStorageDirectory(), str2);
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(str.getBytes());
            fileOutputStream.close();
            String name = file.getName();
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return name;
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 == null) {
                return "";
            }
            try {
                fileOutputStream2.close();
                return "";
            } catch (IOException e4) {
                e4.printStackTrace();
                return "";
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static boolean exists(String str) {
        return new File(Environment.getExternalStorageDirectory(), str).exists();
    }

    public static void remove(String str) {
        File file = new File(Environment.getExternalStorageDirectory(), str);
        if (exists(str)) {
            file.delete();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean copyAssetsFile(Context context, String str, String str2) throws Exception {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        InputStream inputStream2 = null;
        try {
            inputStream = context.getAssets().open(str);
            try {
                File file = new File(str2);
                File file2 = new File(str2);
                if (!file2.getParentFile().exists()) {
                    file2.getParentFile().mkdirs();
                }
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e) {
                e = e;
                fileOutputStream = null;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
            }
        } catch (Exception e2) {
            e = e2;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            fileOutputStream = null;
        }
        try {
            byte[] bArr = new byte[8096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            try {
                fileOutputStream.close();
            } catch (IOException unused2) {
            }
            LogUtils.i(TAG, "copyAssetsFile ok");
            return true;
        } catch (Exception e3) {
            e = e3;
            inputStream2 = inputStream;
            try {
                LogUtils.e(TAG, "copyAssetsFile fail" + e);
                throw e;
            } catch (Throwable th3) {
                th = th3;
                inputStream = inputStream2;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                if (fileOutputStream == null) {
                    try {
                        fileOutputStream.close();
                        throw th;
                    } catch (IOException unused4) {
                        throw th;
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            if (inputStream != null) {
            }
            if (fileOutputStream == null) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean copyFile(File file, File file2) {
        BufferedOutputStream bufferedOutputStream;
        if (!file.exists()) {
            return false;
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
            } catch (IOException e) {
                e = e;
                bufferedOutputStream = null;
            } catch (Throwable th) {
                th = th;
                bufferedOutputStream = null;
            }
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = bufferedInputStream2.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    bufferedOutputStream.write(bArr, 0, read);
                }
                bufferedOutputStream.flush();
                try {
                    bufferedInputStream2.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                try {
                    bufferedOutputStream.close();
                    return true;
                } catch (IOException e3) {
                    e3.printStackTrace();
                    return true;
                }
            } catch (IOException e4) {
                e = e4;
                bufferedInputStream = bufferedInputStream2;
                try {
                    LogUtils.e(TAG, "copy file error" + e);
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    if (bufferedOutputStream == null) {
                        try {
                            bufferedOutputStream.close();
                            throw th;
                        } catch (IOException e8) {
                            e8.printStackTrace();
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                }
                if (bufferedOutputStream == null) {
                }
            }
        } catch (IOException e9) {
            e = e9;
            bufferedOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            bufferedOutputStream = null;
        }
    }

    public static boolean copyFileSmart(File file, File file2) {
        BufferedInputStream bufferedInputStream;
        if (!file.exists()) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                if (bufferedInputStream.available() == file2.length()) {
                    bufferedInputStream.close();
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return true;
                }
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file2));
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        bufferedOutputStream2.write(bArr, 0, read);
                    }
                    bufferedOutputStream2.flush();
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    return true;
                } catch (IOException unused) {
                    bufferedOutputStream = bufferedOutputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    bufferedOutputStream = bufferedOutputStream2;
                    th = th;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    if (bufferedOutputStream == null) {
                        throw th;
                    }
                    try {
                        bufferedOutputStream.close();
                        throw th;
                    } catch (IOException e7) {
                        e7.printStackTrace();
                        throw th;
                    }
                }
            } catch (IOException unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused3) {
            bufferedInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
        }
    }

    public static boolean copyDirectory(String str, String str2) throws IOException {
        if (!new File(str).exists()) {
            return false;
        }
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        File[] listFiles = new File(str).listFiles();
        if (listFiles == null) {
            return true;
        }
        boolean z = true;
        for (int i = 0; i < listFiles.length; i++) {
            if (listFiles[i].isFile()) {
                File file2 = listFiles[i];
                StringBuilder sb = new StringBuilder();
                sb.append(new File(str2).getAbsolutePath());
                sb.append(File.separator);
                sb.append(listFiles[i].getName());
                z = z && copyFile(file2, new File(sb.toString()));
            }
            if (listFiles[i].isDirectory()) {
                String str3 = str + "/" + listFiles[i].getName();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append("/");
                sb2.append(listFiles[i].getName());
                z = z && copyDirectory(str3, sb2.toString());
            }
        }
        return z;
    }

    public static boolean delete(String str) throws IOException {
        File file = new File(str);
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    return false;
                }
                if (listFiles.length == 0) {
                    return file.delete();
                }
                int length = listFiles.length;
                boolean z = true;
                for (int i = 0; i < length; i++) {
                    z = !listFiles[i].isDirectory() ? !(z && listFiles[i].delete()) : !(z && delete(listFiles[i].getAbsolutePath()));
                }
                return z;
            }
            if (file.isFile()) {
                return file.delete();
            }
        }
        return false;
    }

    public static void delete(File file) {
        delete(file, false);
    }

    public static void delete(File file, boolean z) {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            file.delete();
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            delete(file2, z);
        }
        if (z) {
            return;
        }
        file.delete();
    }

    public static void delete(File file, FileFilter fileFilter) {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            if (fileFilter == null || fileFilter.accept(file)) {
                file.delete();
                return;
            }
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            delete(file2, fileFilter);
        }
        if (fileFilter == null || fileFilter.accept(file)) {
            file.delete();
        }
    }

    public static void writeFileData(String str, String str2) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(new File(str));
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                fileOutputStream.write(str2.getBytes());
                fileOutputStream.close();
            } catch (Exception e2) {
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
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x002d -> B:9:0x0030). Please report as a decompilation issue!!! */
    public static void appendFileData(String str, String str2) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(new File(str), true);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.close();
            fileOutputStream.close();
        } catch (Exception e3) {
            e = e3;
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
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static long getFileSize(String str) {
        FileInputStream fileInputStream;
        long j = -1;
        FileInputStream fileInputStream2 = null;
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            try {
                File file = new File(str);
                if (file.exists()) {
                    fileInputStream = new FileInputStream(file);
                    try {
                        j = fileInputStream.available();
                    } catch (Exception e2) {
                        fileInputStream2 = fileInputStream;
                        e = e2;
                        e.printStackTrace();
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                        }
                        return j;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } else {
                    fileInputStream = null;
                }
            } catch (Exception e4) {
                e = e4;
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return j;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean externalMemoryAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static long getAvailableExternalMemorySize() {
        if (!externalMemoryAvailable()) {
            return 0L;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        if (Build.VERSION.SDK_INT >= 18) {
            return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
        }
        return statFs.getBlockSize() * statFs.getAvailableBlocks();
    }

    public static void createFileAndWriteFileData(String str, String str2) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    fileOutputStream = new FileOutputStream(file);
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                fileOutputStream.write(str2.getBytes());
                LogUtils.i(TAG, "write wecarid into sdcard");
                fileOutputStream.close();
            } catch (Exception e2) {
                fileOutputStream2 = fileOutputStream;
                e = e2;
                e.printStackTrace();
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
            } catch (Throwable th2) {
                fileOutputStream2 = fileOutputStream;
                th = th2;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String readFileData(String str) {
        return readFileData(str, true);
    }

    public static String readFileData(String str, boolean z) {
        FileInputStream fileInputStream;
        String str2 = "";
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (!file.exists() && z) {
                        LogUtils.d(TAG, "readFileData, but not exit. create = " + file.createNewFile());
                    }
                    if (file.exists()) {
                        fileInputStream = new FileInputStream(file);
                        try {
                            byte[] bArr = new byte[fileInputStream.available()];
                            if (fileInputStream.read(bArr) < 0) {
                                LogUtils.w(TAG, "file empty");
                            }
                            str2 = new String(bArr, "UTF-8");
                        } catch (Exception e) {
                            fileInputStream2 = fileInputStream;
                            e = e;
                            LogUtils.e(TAG, "readFileData fail" + e);
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                            }
                            return str2;
                        } catch (Throwable th) {
                            fileInputStream2 = fileInputStream;
                            th = th;
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } else {
                        fileInputStream = null;
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e4) {
                e = e4;
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return str2;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
