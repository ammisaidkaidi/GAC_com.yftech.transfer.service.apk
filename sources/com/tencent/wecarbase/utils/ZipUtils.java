package com.tencent.wecarbase.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* loaded from: /home/user/work/dex/classes.dex */
public class ZipUtils {
    private static final String TAG = "ZipUtils";

    public static void unZipFileFolder(String str, String str2) throws Exception {
        unZipFolder(new FileInputStream(str), str2);
    }

    public static void unZipAssetFolder(Context context, String str, String str2) throws Exception {
        unZipFolder(context.getAssets().open(str), str2);
    }

    public static void unZipFolder(InputStream inputStream, String str) throws Exception {
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry != null) {
                String name = nextEntry.getName();
                if (!TextUtils.isEmpty(name) && !name.contains("../")) {
                    if (nextEntry.isDirectory()) {
                        new File(str + File.separator + name.substring(0, name.length() - 1)).mkdirs();
                    } else {
                        FileOutputStream fileOutputStream = null;
                        try {
                            File file = new File(str + File.separator + name);
                            if (!file.createNewFile()) {
                                Log.d(TAG, file + " exists!");
                            }
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int read = zipInputStream.read(bArr);
                                    if (read != -1) {
                                        fileOutputStream2.write(bArr, 0, read);
                                        fileOutputStream2.flush();
                                    } else {
                                        try {
                                            break;
                                        } catch (IOException e) {
                                            Log.e(TAG, Log.getStackTraceString(e));
                                        }
                                    }
                                }
                                fileOutputStream2.close();
                            } catch (Throwable th) {
                                th = th;
                                fileOutputStream = fileOutputStream2;
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e2) {
                                        Log.e(TAG, Log.getStackTraceString(e2));
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            } else {
                zipInputStream.close();
                return;
            }
        }
    }

    public static void UnZipStringFolder(String str, String str2) throws Exception {
        ZipInputStream zipInputStream;
        try {
            zipInputStream = new ZipInputStream(new FileInputStream(str));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        String name = nextEntry.getName();
                        if (!TextUtils.isEmpty(name) && !name.contains("../")) {
                            if (nextEntry.isDirectory()) {
                                new File(str2 + File.separator + name.substring(0, name.length() - 1)).mkdirs();
                            } else {
                                File file = new File(str2 + File.separator + name);
                                if (!file.createNewFile()) {
                                    Log.d(TAG, file + " exists!");
                                }
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int read = zipInputStream.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                    fileOutputStream.flush();
                                }
                                fileOutputStream.close();
                            }
                        }
                    } else {
                        try {
                            zipInputStream.close();
                            return;
                        } catch (IOException e) {
                            Log.e(TAG, Log.getStackTraceString(e));
                            return;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (zipInputStream != null) {
                        try {
                            zipInputStream.close();
                        } catch (IOException e2) {
                            Log.e(TAG, Log.getStackTraceString(e2));
                        }
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            zipInputStream = null;
        }
    }

    public static void ZipFolder(String str, String str2) throws Exception {
        ZipOutputStream zipOutputStream;
        try {
            zipOutputStream = new ZipOutputStream(new FileOutputStream(str2));
        } catch (Throwable th) {
            th = th;
            zipOutputStream = null;
        }
        try {
            File file = new File(str);
            ZipFiles(file.getParent() + File.separator, file.getName(), zipOutputStream);
            zipOutputStream.finish();
            try {
                zipOutputStream.close();
            } catch (IOException e) {
                Log.e(TAG, Log.getStackTraceString(e));
            }
        } catch (Throwable th2) {
            th = th2;
            if (zipOutputStream != null) {
                try {
                    zipOutputStream.close();
                } catch (IOException e2) {
                    Log.e(TAG, Log.getStackTraceString(e2));
                }
            }
            throw th;
        }
    }

    private static void ZipFiles(String str, String str2, ZipOutputStream zipOutputStream) throws Exception {
        FileInputStream fileInputStream;
        if (zipOutputStream == null) {
            return;
        }
        FileInputStream fileInputStream2 = null;
        try {
            File file = new File(str + str2);
            if (file.isFile()) {
                ZipEntry zipEntry = new ZipEntry(str2);
                fileInputStream = new FileInputStream(file);
                try {
                    zipOutputStream.putNextEntry(zipEntry);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        } else {
                            zipOutputStream.write(bArr, 0, read);
                        }
                    }
                    zipOutputStream.closeEntry();
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    try {
                        zipOutputStream.closeEntry();
                    } catch (IOException e) {
                        Log.e(TAG, Log.getStackTraceString(e));
                    }
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                            throw th;
                        } catch (IOException e2) {
                            Log.e(TAG, Log.getStackTraceString(e2));
                            throw th;
                        }
                    }
                    throw th;
                }
            } else {
                String[] list = file.list();
                if (list.length <= 0) {
                    zipOutputStream.putNextEntry(new ZipEntry(str2 + File.separator));
                    zipOutputStream.closeEntry();
                }
                for (String str3 : list) {
                    ZipFiles(str, str2 + File.separator + str3, zipOutputStream);
                }
                fileInputStream = null;
            }
            try {
                zipOutputStream.closeEntry();
            } catch (IOException e3) {
                Log.e(TAG, Log.getStackTraceString(e3));
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e4) {
                    Log.e(TAG, Log.getStackTraceString(e4));
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static InputStream UpZip(String str, String str2) throws Exception {
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        try {
            zipFile = new ZipFile(str);
        } catch (Throwable th) {
            th = th;
        }
        try {
            InputStream inputStream = zipFile.getInputStream(zipFile.getEntry(str2));
            try {
                zipFile.close();
            } catch (Exception e) {
                Log.e(TAG, Log.getStackTraceString(e));
            }
            return inputStream;
        } catch (Throwable th2) {
            th = th2;
            zipFile2 = zipFile;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (Exception e2) {
                    Log.e(TAG, Log.getStackTraceString(e2));
                }
            }
            throw th;
        }
    }

    public static List<File> GetFileList(String str, boolean z, boolean z2) throws Exception {
        ZipInputStream zipInputStream;
        ArrayList arrayList = new ArrayList();
        try {
            zipInputStream = new ZipInputStream(new FileInputStream(str));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        String name = nextEntry.getName();
                        if (!TextUtils.isEmpty(name) && !name.contains("../")) {
                            if (nextEntry.isDirectory()) {
                                File file = new File(name.substring(0, name.length() - 1));
                                if (z) {
                                    arrayList.add(file);
                                }
                            } else {
                                File file2 = new File(name);
                                if (z2) {
                                    arrayList.add(file2);
                                }
                            }
                        }
                    } else {
                        zipInputStream.close();
                        return arrayList;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (zipInputStream != null) {
                        zipInputStream.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            zipInputStream = null;
        }
    }
}
