package com.tencent.taifeedback.upload.sdk.utils;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class FileUtils {
    public static final String EXT_INTERVAL = ";";
    private static final String TAG = "com.tencent.taifeedback.upload.sdk.utils.FileUtils";
    private static FileUtils fileUtil;
    private String fullPath = null;
    private String basePath = "tai_feedback";
    private String storePath = FeedBackConstants.JSON_FIELD_BUG;
    public final String IMG_EXT = ".png";
    public final String LOG_EXT = ".bugly.log.txt";
    public final String ATTACH_EXT = ".txt";
    public final String ZIP_EXT = ".zip";
    public final String PROP_FILE = "bug.json";
    public final String MUSIC_FILE_EXT = ".amr;.mp3;.wav";
    public final String DAT_EXT = ".dat";

    public static FileUtils getInstance() {
        if (fileUtil == null) {
            fileUtil = new FileUtils();
        }
        return fileUtil;
    }

    public void destroy() {
        fileUtil = null;
    }

    public String getStoreLogFile(Context context) {
        return getStoreFile(context, ".bugly.log.txt");
    }

    public String getStorePicFile(Context context) {
        return getStoreFile(context, ".png");
    }

    public String getStorePropFile(Context context) {
        return getStorePath(context) + File.separator + "bug.json";
    }

    public String getStoreZipFile(Context context) {
        return getBasePath(context) + File.separator + (new SimpleDateFormat("yyyyMMddHHmmss", Locale.US).format(new Date()) + ".zip");
    }

    public String getStoreFile(Context context, String str) {
        return getStorePath(context) + File.separator + (new SimpleDateFormat("yyyyMMddHHmmss", Locale.US).format(new Date()) + str);
    }

    public String getStorePath(Context context) {
        String str = getBasePath(context) + File.separator + this.storePath;
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public String getBasePath(Context context) {
        if (this.fullPath != null) {
            return this.fullPath;
        }
        this.fullPath = context.getFilesDir().getPath() + File.separator + this.basePath;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            int i = 0;
            String[] strArr = {Environment.getExternalStorageDirectory().getAbsolutePath(), "/sdcard", "/mnt/sdcard", "/mnt/sdcard2", "/mnt/ext_sdcard", "/storage/sdcard0", "/storage/sdcard1", "/mnt/sdcard/tencent"};
            while (true) {
                if (i >= strArr.length) {
                    break;
                }
                String str = strArr[i] + File.separator + this.basePath;
                File file = new File(str);
                file.mkdirs();
                if (file.exists()) {
                    this.fullPath = str;
                    break;
                }
                i++;
            }
        } else {
            File file2 = new File(this.fullPath);
            if (!file2.exists()) {
                file2.mkdirs();
            }
        }
        return this.fullPath;
    }

    public boolean exists(String str) {
        try {
            return new File(str).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    public long size(String str) {
        try {
            return new File(str).length();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public void deleteSubFiles(String str) {
        File[] listFiles;
        File file = new File(str);
        if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                deleteFile(file2);
            }
        }
    }

    public void deleteFile(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                deleteFile(file2);
            }
        }
        if (file.delete()) {
            return;
        }
        Utils.getInstance().log(TAG, file.getPath() + " delete  failed");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0142 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0131 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0164 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0153 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25, types: [java.nio.channels.ReadableByteChannel, java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean copy(String str, String str2) {
        FileChannel fileChannel;
        FileOutputStream fileOutputStream;
        FileChannel fileChannel2;
        FileChannel fileChannel3;
        FileOutputStream fileOutputStream2;
        FileChannel fileChannel4;
        FileChannel fileChannel5;
        FileInputStream fileInputStream;
        ?? r8;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream((String) str);
                try {
                    str = new FileOutputStream((String) str2);
                    try {
                        str2 = fileInputStream.getChannel();
                        try {
                            r8 = str.getChannel();
                        } catch (IOException unused) {
                            r8 = 0;
                        } catch (Exception unused2) {
                            r8 = 0;
                        } catch (Throwable th) {
                            th = th;
                            r8 = 0;
                        }
                    } catch (IOException unused3) {
                        str2 = 0;
                        str = str;
                        r8 = str2;
                        fileInputStream2 = fileInputStream;
                        fileChannel5 = r8;
                        fileOutputStream2 = str;
                        fileChannel4 = str2;
                        Utils.getInstance().log(TAG, "copy file failed");
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (IOException unused4) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused5) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        if (fileChannel4 != null) {
                            try {
                                fileChannel4.close();
                            } catch (IOException unused6) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        if (fileChannel5 != null) {
                            try {
                                fileChannel5.close();
                            } catch (IOException unused7) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        return false;
                    } catch (Exception unused8) {
                        str2 = 0;
                        str = str;
                        r8 = str2;
                        fileInputStream2 = fileInputStream;
                        fileChannel3 = r8;
                        fileOutputStream = str;
                        fileChannel2 = str2;
                        Utils.getInstance().log(TAG, "copy file failed");
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (IOException unused9) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused10) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        if (fileChannel2 != null) {
                            try {
                                fileChannel2.close();
                            } catch (IOException unused11) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        if (fileChannel3 != null) {
                            try {
                                fileChannel3.close();
                            } catch (IOException unused12) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        str2 = 0;
                        str = str;
                        r8 = str2;
                        fileInputStream2 = fileInputStream;
                        fileChannel = r8;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (IOException unused13) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        if (str != 0) {
                            try {
                                str.close();
                            } catch (IOException unused14) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        if (str2 != 0) {
                            try {
                                str2.close();
                            } catch (IOException unused15) {
                                Utils.getInstance().log(TAG, "close copy file failed");
                            }
                        }
                        if (fileChannel != null) {
                            throw th;
                        }
                        try {
                            fileChannel.close();
                            throw th;
                        } catch (IOException unused16) {
                            Utils.getInstance().log(TAG, "close copy file failed");
                            throw th;
                        }
                    }
                } catch (IOException unused17) {
                    str = 0;
                    str2 = 0;
                } catch (Exception unused18) {
                    str = 0;
                    str2 = 0;
                } catch (Throwable th3) {
                    th = th3;
                    str = 0;
                    str2 = 0;
                }
            } catch (Throwable th4) {
                th = th4;
            }
            try {
                r8.transferFrom(str2, 0L, str2.size());
                try {
                    fileInputStream.close();
                } catch (IOException unused19) {
                    Utils.getInstance().log(TAG, "close copy file failed");
                }
                try {
                    str.close();
                } catch (IOException unused20) {
                    Utils.getInstance().log(TAG, "close copy file failed");
                }
                if (str2 != 0) {
                    try {
                        str2.close();
                    } catch (IOException unused21) {
                        Utils.getInstance().log(TAG, "close copy file failed");
                    }
                }
                if (r8 == 0) {
                    return true;
                }
                try {
                    r8.close();
                    return true;
                } catch (IOException unused22) {
                    Utils.getInstance().log(TAG, "close copy file failed");
                    return true;
                }
            } catch (IOException unused23) {
                fileInputStream2 = fileInputStream;
                fileChannel5 = r8;
                fileOutputStream2 = str;
                fileChannel4 = str2;
                Utils.getInstance().log(TAG, "copy file failed");
                if (fileInputStream2 != null) {
                }
                if (fileOutputStream2 != null) {
                }
                if (fileChannel4 != null) {
                }
                if (fileChannel5 != null) {
                }
                return false;
            } catch (Exception unused24) {
                fileInputStream2 = fileInputStream;
                fileChannel3 = r8;
                fileOutputStream = str;
                fileChannel2 = str2;
                Utils.getInstance().log(TAG, "copy file failed");
                if (fileInputStream2 != null) {
                }
                if (fileOutputStream != null) {
                }
                if (fileChannel2 != null) {
                }
                if (fileChannel3 != null) {
                }
                return false;
            } catch (Throwable th5) {
                th = th5;
                fileInputStream2 = fileInputStream;
                fileChannel = r8;
                if (fileInputStream2 != null) {
                }
                if (str != 0) {
                }
                if (str2 != 0) {
                }
                if (fileChannel != null) {
                }
            }
        } catch (IOException unused25) {
            fileOutputStream2 = null;
            fileChannel4 = null;
            fileChannel5 = null;
        } catch (Exception unused26) {
            fileOutputStream = null;
            fileChannel2 = null;
            fileChannel3 = null;
        } catch (Throwable th6) {
            th = th6;
            str = 0;
            str2 = 0;
            fileChannel = null;
        }
    }

    public List<String> getFilePathByExt(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = new File(str).listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return arrayList;
        }
        for (File file : listFiles) {
            if (file.getName().endsWith(str2)) {
                arrayList.add(file.getAbsolutePath());
            }
        }
        return arrayList;
    }

    public void deleteFileByExt(String str, String str2) {
        List<String> filePathByExt = getFilePathByExt(str, str2);
        if (filePathByExt == null || filePathByExt.size() <= 0) {
            return;
        }
        int size = filePathByExt.size();
        for (int i = 0; i < size; i++) {
            deleteFile(new File(filePathByExt.get(i)));
        }
    }

    public List<String> getFileNameByExt(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = new File(str).listFiles();
        if (listFiles == null) {
            return arrayList;
        }
        List<String> extList = getExtList(str2);
        for (int i = 0; i < extList.size(); i++) {
            for (File file : listFiles) {
                String name = file.getName();
                if (name != null && (name.endsWith(extList.get(i)) || name.toLowerCase().endsWith(extList.get(i)))) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    public List<String> getFileNameExceptExt(String str, String str2) {
        boolean z;
        if (str == null || str2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        File[] listFiles = new File(str).listFiles();
        if (listFiles == null) {
            return arrayList;
        }
        List<String> extList = getExtList(str2);
        for (File file : listFiles) {
            String name = file.getName();
            Iterator<String> it = extList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (name.endsWith(it.next())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                arrayList.add(file.getName());
            }
        }
        return arrayList;
    }

    public String getFileNameByExt(List<String> list) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
            stringBuffer.append(EXT_INTERVAL);
        }
        return stringBuffer.toString();
    }

    public Properties loadPropertiesFromFile(String str) {
        Properties properties = new Properties();
        if (str != null && exists(str)) {
            try {
                if (Build.VERSION.SDK_INT < 9) {
                    FileInputStream fileInputStream = new FileInputStream(str);
                    properties.load(fileInputStream);
                    fileInputStream.close();
                } else {
                    FileReader fileReader = new FileReader(str);
                    properties.load(fileReader);
                    fileReader.close();
                }
            } catch (Exception unused) {
            }
        }
        return properties;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void storeJsonToFile(String str, JSONObject jSONObject) throws IOException {
        OutputStreamWriter outputStreamWriter;
        String str2;
        StringBuilder sb;
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(str);
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(fileOutputStream2, "utf-8");
                try {
                    outputStreamWriter2.write(jSONObject.toString());
                    try {
                        outputStreamWriter2.close();
                    } catch (Exception e) {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                    }
                    try {
                        fileOutputStream2.close();
                    } catch (Exception e2) {
                        e = e2;
                        str2 = TAG;
                        sb = new StringBuilder();
                        sb.append("Exception:");
                        sb.append(Log.getStackTraceString(e));
                        Log.e(str2, sb.toString());
                    }
                } catch (Exception e3) {
                    outputStreamWriter = outputStreamWriter2;
                    e = e3;
                    fileOutputStream = fileOutputStream2;
                    try {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                        if (outputStreamWriter != null) {
                            try {
                                outputStreamWriter.close();
                            } catch (Exception e4) {
                                Log.e(TAG, "Exception:" + Log.getStackTraceString(e4));
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception e5) {
                                e = e5;
                                str2 = TAG;
                                sb = new StringBuilder();
                                sb.append("Exception:");
                                sb.append(Log.getStackTraceString(e));
                                Log.e(str2, sb.toString());
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (outputStreamWriter != null) {
                            try {
                                outputStreamWriter.close();
                            } catch (Exception e6) {
                                Log.e(TAG, "Exception:" + Log.getStackTraceString(e6));
                            }
                        }
                        if (fileOutputStream == null) {
                            try {
                                fileOutputStream.close();
                                throw th;
                            } catch (Exception e7) {
                                Log.e(TAG, "Exception:" + Log.getStackTraceString(e7));
                                throw th;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    outputStreamWriter = outputStreamWriter2;
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (outputStreamWriter != null) {
                    }
                    if (fileOutputStream == null) {
                    }
                }
            } catch (Exception e8) {
                e = e8;
                outputStreamWriter = null;
            } catch (Throwable th3) {
                th = th3;
                outputStreamWriter = null;
            }
        } catch (Exception e9) {
            e = e9;
            outputStreamWriter = null;
        } catch (Throwable th4) {
            th = th4;
            outputStreamWriter = null;
        }
    }

    public void storePropertiesToFile(String str, Properties properties) {
        try {
            if (Build.VERSION.SDK_INT < 9) {
                FileOutputStream fileOutputStream = new FileOutputStream(str);
                properties.store(fileOutputStream, "");
                fileOutputStream.close();
            } else {
                FileWriter fileWriter = new FileWriter(str);
                properties.store(fileWriter, "");
                fileWriter.close();
            }
        } catch (Exception unused) {
        }
    }

    public List<String> getExtList(String str) {
        ArrayList arrayList = new ArrayList();
        if (str.contains(EXT_INTERVAL)) {
            for (String str2 : str.split(EXT_INTERVAL)) {
                if (str2 != null && !"".equals(str2.trim())) {
                    arrayList.add(str2.trim());
                }
            }
            return arrayList;
        }
        arrayList.add(str);
        return arrayList;
    }

    public String getSDPath() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            return Environment.getExternalStorageDirectory().toString();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void writeTextFile(String str, String str2) {
        FileWriter fileWriter;
        Throwable th;
        IOException e;
        if (str == null || str2 == null) {
            return;
        }
        try {
            try {
                fileWriter = new FileWriter(str);
                try {
                    fileWriter.write(str2);
                    fileWriter.flush();
                } catch (IOException e2) {
                    e = e2;
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                    if (fileWriter == null) {
                        return;
                    }
                    fileWriter.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileWriter != null) {
                    try {
                        fileWriter.close();
                    } catch (IOException unused) {
                        Utils.getInstance().log(TAG, "close file failed");
                    }
                }
                throw th;
            }
        } catch (IOException e3) {
            fileWriter = null;
            e = e3;
        } catch (Throwable th3) {
            fileWriter = null;
            th = th3;
            if (fileWriter != null) {
            }
            throw th;
        }
        try {
            fileWriter.close();
        } catch (IOException unused2) {
            Utils.getInstance().log(TAG, "close file failed");
        }
    }
}
