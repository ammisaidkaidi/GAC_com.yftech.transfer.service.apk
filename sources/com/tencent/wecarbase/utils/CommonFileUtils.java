package com.tencent.wecarbase.utils;

import android.os.StatFs;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import org.apache.http.util.EncodingUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class CommonFileUtils {
    private static final String TAG = "CommonFileUtils";

    public static boolean isFileExist(String str) {
        return new File(str).exists();
    }

    public static boolean copyFile(File file, File file2) {
        BufferedInputStream bufferedInputStream;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream2;
        if (!file.exists()) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream2 = new FileOutputStream(file2);
                try {
                    bufferedInputStream = new BufferedInputStream(fileInputStream);
                    try {
                        BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream2);
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
                            } catch (IOException e) {
                                Log.e(TAG, Log.getStackTraceString(e));
                            }
                            try {
                                bufferedOutputStream2.close();
                            } catch (IOException e2) {
                                Log.e(TAG, Log.getStackTraceString(e2));
                            }
                            try {
                                fileInputStream.close();
                            } catch (IOException e3) {
                                Log.e(TAG, Log.getStackTraceString(e3));
                            }
                            try {
                                fileOutputStream2.close();
                                return true;
                            } catch (IOException e4) {
                                Log.e(TAG, Log.getStackTraceString(e4));
                                return true;
                            }
                        } catch (IOException unused) {
                            bufferedOutputStream = bufferedOutputStream2;
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e5) {
                                    Log.e(TAG, Log.getStackTraceString(e5));
                                }
                            }
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException e6) {
                                    Log.e(TAG, Log.getStackTraceString(e6));
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e7) {
                                    Log.e(TAG, Log.getStackTraceString(e7));
                                }
                            }
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e8) {
                                    Log.e(TAG, Log.getStackTraceString(e8));
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            fileOutputStream = fileOutputStream2;
                            th = th;
                            bufferedOutputStream = bufferedOutputStream2;
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e9) {
                                    Log.e(TAG, Log.getStackTraceString(e9));
                                }
                            }
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException e10) {
                                    Log.e(TAG, Log.getStackTraceString(e10));
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e11) {
                                    Log.e(TAG, Log.getStackTraceString(e11));
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    throw th;
                                } catch (IOException e12) {
                                    Log.e(TAG, Log.getStackTraceString(e12));
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    } catch (IOException unused2) {
                    } catch (Throwable th2) {
                        fileOutputStream = fileOutputStream2;
                        th = th2;
                    }
                } catch (IOException unused3) {
                    bufferedInputStream = null;
                } catch (Throwable th3) {
                    fileOutputStream = fileOutputStream2;
                    th = th3;
                    bufferedInputStream = null;
                }
            } catch (IOException unused4) {
                fileOutputStream2 = null;
                bufferedInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedInputStream = null;
                fileOutputStream = null;
            }
        } catch (IOException unused5) {
            fileOutputStream2 = null;
            bufferedInputStream = null;
            fileInputStream = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedInputStream = null;
            fileOutputStream = null;
            fileInputStream = null;
        }
    }

    public static boolean copyFileSmart(File file, File file2) {
        BufferedInputStream bufferedInputStream;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        if (!file.exists()) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                bufferedInputStream = new BufferedInputStream(fileInputStream);
                try {
                    if (bufferedInputStream.available() == file2.length()) {
                        bufferedInputStream.close();
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e) {
                            Log.e(TAG, Log.getStackTraceString(e));
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e2) {
                            Log.e(TAG, Log.getStackTraceString(e2));
                        }
                        return true;
                    }
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    } catch (IOException unused) {
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = bufferedInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, read);
                        }
                        bufferedOutputStream.flush();
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e3) {
                            Log.e(TAG, Log.getStackTraceString(e3));
                        }
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e4) {
                            Log.e(TAG, Log.getStackTraceString(e4));
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e5) {
                            Log.e(TAG, Log.getStackTraceString(e5));
                        }
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                            Log.e(TAG, Log.getStackTraceString(e6));
                        }
                        return true;
                    } catch (IOException unused2) {
                        bufferedOutputStream2 = bufferedOutputStream;
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e7) {
                                Log.e(TAG, Log.getStackTraceString(e7));
                            }
                        }
                        if (bufferedOutputStream2 != null) {
                            try {
                                bufferedOutputStream2.close();
                            } catch (IOException e8) {
                                Log.e(TAG, Log.getStackTraceString(e8));
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e9) {
                                Log.e(TAG, Log.getStackTraceString(e9));
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e10) {
                                Log.e(TAG, Log.getStackTraceString(e10));
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        bufferedOutputStream2 = bufferedOutputStream;
                        th = th2;
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e11) {
                                Log.e(TAG, Log.getStackTraceString(e11));
                            }
                        }
                        if (bufferedOutputStream2 != null) {
                            try {
                                bufferedOutputStream2.close();
                            } catch (IOException e12) {
                                Log.e(TAG, Log.getStackTraceString(e12));
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e13) {
                                Log.e(TAG, Log.getStackTraceString(e13));
                            }
                        }
                        if (fileOutputStream == null) {
                            throw th;
                        }
                        try {
                            fileOutputStream.close();
                            throw th;
                        } catch (IOException e14) {
                            Log.e(TAG, Log.getStackTraceString(e14));
                            throw th;
                        }
                    }
                } catch (IOException unused3) {
                    fileOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (IOException unused4) {
                bufferedInputStream = null;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedInputStream = null;
                fileOutputStream = null;
            }
        } catch (IOException unused5) {
            bufferedInputStream = null;
            fileInputStream = null;
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedInputStream = null;
            fileInputStream = null;
            fileOutputStream = null;
        }
    }

    public static boolean copyDirectiory(String str, String str2) throws IOException {
        if (!new File(str).exists()) {
            return false;
        }
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        File[] listFiles = new File(str).listFiles();
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
                z = z && copyDirectiory(str3, sb2.toString());
            }
        }
        return z;
    }

    public static boolean delete(String str) throws IOException {
        File file = new File(str);
        if (file.exists()) {
            if (file.isDirectory()) {
                if (file.listFiles().length == 0) {
                    return file.delete();
                }
                File[] listFiles = file.listFiles();
                int length = file.listFiles().length;
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
            if (file.delete()) {
                return;
            }
            Log.e(TAG, file.getPath() + " delete  failed");
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            delete(file2, z);
        }
        if (z || file.delete()) {
            return;
        }
        Log.e(TAG, file.getPath() + " delete  failed");
    }

    public static void delete(File file, FileFilter fileFilter) {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            if ((fileFilter == null || fileFilter.accept(file)) && !file.delete()) {
                Log.e(TAG, file.getPath() + " delete  failed");
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
        if ((fileFilter == null || fileFilter.accept(file)) && !file.delete()) {
            Log.e(TAG, file.getPath() + " delete  failed");
        }
    }

    public static void writeFileData(String str, String str2) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(new File(str));
                } catch (IOException e) {
                    Log.e(TAG, Log.getStackTraceString(e));
                    return;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.close();
            fileOutputStream.close();
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            Log.e(TAG, Log.getStackTraceString(e));
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    Log.e(TAG, Log.getStackTraceString(e4));
                }
            }
            throw th;
        }
    }

    public static void appendFileData(String str, String str2) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(new File(str), true);
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
                Log.e(TAG, Log.getStackTraceString(e));
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
                        Log.e(TAG, Log.getStackTraceString(e3));
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            Log.e(TAG, Log.getStackTraceString(e4));
        }
    }

    public static String readFileData(String str) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File file = new File(str);
                if (!file.exists() && !file.createNewFile()) {
                    Log.d(TAG, str + " exists!");
                }
                fileInputStream = new FileInputStream(file);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[fileInputStream.available()];
            do {
            } while (fileInputStream.read(bArr) > 0);
            String string = EncodingUtils.getString(bArr, "UTF-8");
            try {
                fileInputStream.close();
            } catch (IOException e2) {
                Log.e(TAG, Log.getStackTraceString(e2));
            }
            return string;
        } catch (Exception e3) {
            fileInputStream2 = fileInputStream;
            e = e3;
            Log.e(TAG, Log.getStackTraceString(e));
            if (fileInputStream2 == null) {
                return "";
            }
            try {
                fileInputStream2.close();
                return "";
            } catch (IOException e4) {
                Log.e(TAG, Log.getStackTraceString(e4));
                return "";
            }
        } catch (Throwable th2) {
            fileInputStream2 = fileInputStream;
            th = th2;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e5) {
                    Log.e(TAG, Log.getStackTraceString(e5));
                }
            }
            throw th;
        }
    }

    public static void writeFile(String str, String str2) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (file.getParentFile() != null && !file.getParentFile().exists()) {
                        file.getParentFile().mkdirs();
                    }
                    if (file.exists() && !file.delete()) {
                        Log.e(TAG, file.getPath() + " delete  failed");
                    }
                    fileOutputStream = new FileOutputStream(file, true);
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
                fileOutputStream2 = fileOutputStream;
                e = e2;
                Log.e(TAG, Log.getStackTraceString(e));
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
            } catch (Throwable th2) {
                fileOutputStream2 = fileOutputStream;
                th = th2;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e3) {
                        Log.e(TAG, Log.getStackTraceString(e3));
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            Log.e(TAG, Log.getStackTraceString(e4));
        }
    }

    public static String readLastLine(String str) {
        return readLine(str, -1L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0042 -> B:17:0x008b). Please report as a decompilation issue!!! */
    public static String readLine(String str, long j) {
        BufferedReader bufferedReader;
        long j2;
        File file = new File(str);
        if (file.exists()) {
            ?? canRead = file.canRead();
            try {
                try {
                } catch (IOException e) {
                    Log.e(TAG, Log.getStackTraceString(e));
                }
                if (canRead != 0) {
                    try {
                        bufferedReader = new BufferedReader(new FileReader(file));
                        int i = 0;
                        String str2 = null;
                        while (true) {
                            j2 = i;
                            if (j2 > j && j != -1) {
                                break;
                            }
                            try {
                                String readLine = bufferedReader.readLine();
                                if (readLine != null) {
                                    readLine = readLine.trim();
                                }
                                if (readLine == null) {
                                    break;
                                }
                                i++;
                                str2 = readLine;
                            } catch (FileNotFoundException e2) {
                                e = e2;
                                Log.e(TAG, Log.getStackTraceString(e));
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                return r1;
                            } catch (IOException e3) {
                                e = e3;
                                Log.e(TAG, Log.getStackTraceString(e));
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                return r1;
                            }
                        }
                        r1 = (j2 == j || j == -1) ? str2 : null;
                        bufferedReader.close();
                    } catch (FileNotFoundException e4) {
                        e = e4;
                        bufferedReader = null;
                    } catch (IOException e5) {
                        e = e5;
                        bufferedReader = null;
                    } catch (Throwable th) {
                        th = th;
                        canRead = 0;
                        if (canRead != 0) {
                            try {
                                canRead.close();
                            } catch (IOException e6) {
                                Log.e(TAG, Log.getStackTraceString(e6));
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return r1;
    }

    public static long getAvailableSize(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return statFs.getBlockSize() * statFs.getAvailableBlocks();
        } catch (Exception unused) {
            return 0L;
        }
    }
}
