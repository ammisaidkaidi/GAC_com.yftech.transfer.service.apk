package com.tencent.wecarbase.utils;

import android.os.Environment;
import android.os.Process;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogUtils {
    private static final long ALLOW_WRITE_LIMIT = 104857600;
    private static final int ALLOW_WRITE_LIMIT_M = 100;
    public static final int MAX_KEEP_LOG_DAY = 5;
    private static final String TAG = "_AccountSDK_";
    private static final String TAI_LOG_MIDDLE_PATH = "/tencent/wecarbase/log";
    private static final String TAI_SERVICE_LOG_NAME_HEAD = "WeCarBaseLog-";
    private static String mDate = null;
    private static ArrayList<String> mFFilePathList = null;
    private static FileWriter mForceFileWriter = null;
    private static boolean mSaveCloudLog = false;
    private static boolean sOpenLog = false;
    private static boolean sOpenLogToFile = false;

    public static boolean issOpenLogToFile() {
        return sOpenLogToFile;
    }

    public static void setsOpenLogToFile(boolean z) {
        sOpenLogToFile = z;
    }

    public static void setLogEnable(boolean z) {
        sOpenLog = z;
    }

    public static boolean isLogEnable() {
        return sOpenLog;
    }

    public static void stopLogToFile() {
        sOpenLog = false;
        sOpenLogToFile = false;
    }

    public static void resetFileWrite() {
        try {
            if (mForceFileWriter != null) {
                mForceFileWriter.close();
                mForceFileWriter = null;
            }
        } catch (Exception e) {
            mForceFileWriter = null;
            e.printStackTrace();
        }
    }

    public static void d(String str, String str2) {
        if (sOpenLog) {
            String str3 = "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]);
            Log.d(TAG, str3);
            writeToFile(str3);
        }
    }

    public static void d(String str) {
        if (sOpenLog) {
            Log.d(TAG, build(str, new Throwable().getStackTrace()[1]));
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (sOpenLog) {
            String str3 = "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]);
            Log.d(TAG, str3, th);
            writeToFile(str3);
        }
    }

    public static void i(String str, String str2) {
        if (sOpenLog) {
            Log.i(TAG, "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (sOpenLog) {
            Log.i(TAG, "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]), th);
        }
    }

    public static void v(String str, String str2) {
        if (sOpenLog) {
            Log.v(TAG, "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (sOpenLog) {
            Log.v(TAG, "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]), th);
        }
    }

    public static void w(String str, String str2) {
        if (sOpenLog) {
            String build = build(str, str2, new Throwable().getStackTrace()[1]);
            Log.w(TAG, build);
            writeToFile(build);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (sOpenLog) {
            String build = build(str, str2, new Throwable().getStackTrace()[1]);
            Log.w(TAG, build, th);
            writeToFile(build);
        }
    }

    public static void e(String str, String str2) {
        if (sOpenLog) {
            String build = build(str, str2, new Throwable().getStackTrace()[1]);
            Log.e(TAG, build);
            writeToFile(build);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (sOpenLog) {
            String build = build(str, str2, new Throwable().getStackTrace()[1]);
            Log.e(TAG, build, th);
            writeToFile(build);
        }
    }

    public static void fe(String str, String str2, Throwable th) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        Log.e(TAG, build(str, str2, stackTraceElement), th);
        writeToFile(build(str, str2, stackTraceElement, th));
    }

    public static void fe(String str, String str2) {
        String build = build(str, str2, new Throwable().getStackTrace()[1]);
        Log.e(TAG, build);
        writeToFile(build);
    }

    public static void fd(String str, String str2) {
        String str3 = "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]);
        Log.d(TAG, str3);
        writeToFile(str3);
    }

    public static void fi(String str, String str2) {
        String build = build(str2, new Throwable().getStackTrace()[1]);
        Log.i(TAG, "[" + str + "]" + build);
        writeToFile(build);
    }

    public static ArrayList<String> getFFilePathList() {
        return mFFilePathList;
    }

    public static void ff(String str, String str2) {
        String buildWithPid = buildWithPid(str, str2, new Throwable().getStackTrace()[1]);
        Log.i(TAG, "[" + str + "]" + buildWithPid);
        forceWriteToFile(buildWithPid);
    }

    private static void forceWriteToFile(String str) {
        if (shouldNotWriteLogToPath()) {
            try {
                if (mForceFileWriter != null) {
                    mForceFileWriter.close();
                    mForceFileWriter = null;
                    return;
                }
                return;
            } catch (Exception e) {
                mForceFileWriter = null;
                Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                return;
            }
        }
        if (mForceFileWriter != null && mDate != null) {
            String format = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date());
            if (!mDate.equals(format)) {
                mDate = format;
                try {
                    mForceFileWriter.close();
                    mForceFileWriter = null;
                } catch (Exception e2) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e2));
                }
            }
        }
        if (mForceFileWriter == null) {
            mDate = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date());
            String str2 = Environment.getExternalStorageDirectory().toString() + TAI_LOG_MIDDLE_PATH;
            File file = new File(str2);
            if (!file.exists() && !file.mkdir()) {
                return;
            }
            if (mFFilePathList == null) {
                mFFilePathList = new ArrayList<>();
            }
            String str3 = str2 + "/WeCarBaseLog-" + mDate + ".txt";
            if (mFFilePathList.size() > 3) {
                mFFilePathList.clear();
            }
            mFFilePathList.add(str3);
            try {
                mForceFileWriter = new FileWriter(str3, true);
            } catch (FileNotFoundException e3) {
                Log.e(TAG, "FileNotFoundException error:" + e3.getMessage());
                mForceFileWriter = null;
                return;
            } catch (IOException e4) {
                Log.e(TAG, "create file writer fail!" + e4.getMessage());
            }
        }
        try {
            if (mForceFileWriter != null) {
                mForceFileWriter.write(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(System.currentTimeMillis())));
                mForceFileWriter.write(":");
                mForceFileWriter.write(str);
                mForceFileWriter.write("\r\n");
                mForceFileWriter.flush();
                return;
            }
            Log.e(TAG, "mForceFileWriter is null!");
        } catch (Exception e5) {
            Log.e(TAG, "write file fail", e5);
        }
    }

    public static boolean shouldNotWriteLogToPath() {
        long j;
        try {
            j = CommonFileUtils.getAvailableSize(Environment.getExternalStorageDirectory().toString());
        } catch (Exception e) {
            Log.e(TAG, "shouldNotWriteLogToPath getAvailableSize ERROR" + e.getMessage());
            j = 0L;
        }
        return ALLOW_WRITE_LIMIT > j;
    }

    public static void keepLogFilesByDays(int i) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        keepLogFilesByDays(externalStorageDirectory.getAbsolutePath() + TAI_LOG_MIDDLE_PATH, i);
    }

    private static void keepLogFilesByDays(String str, int i) {
        File[] listFiles;
        File file = new File(str);
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            int intValue = Integer.valueOf(new SimpleDateFormat("yyyyMMdd", Locale.getDefault()).format(new Date())).intValue();
            int i2 = 0;
            for (File file2 : listFiles) {
                String absolutePath = file2.getAbsolutePath();
                if (absolutePath.contains(TAI_SERVICE_LOG_NAME_HEAD) && absolutePath.endsWith(".txt")) {
                    try {
                        if (intValue - Integer.valueOf(absolutePath.replaceAll(file.toString() + "/" + TAI_SERVICE_LOG_NAME_HEAD, "").replaceAll("-", "").replace(".txt", "")).intValue() >= i && new File(absolutePath).delete()) {
                            i2++;
                        }
                    } catch (NumberFormatException unused) {
                        Log.e(TAG, "Format file:" + absolutePath + " failed!");
                    }
                }
            }
            Log.i(TAG, "keepLogFilesByDays end delete files number :" + i2);
        }
    }

    private static void writeToFile(String str) {
        if (sOpenLogToFile) {
            forceWriteToFile(str);
        }
    }

    private static void logToFile(String str, String str2, String str3) {
        FileWriter fileWriter;
        String str4;
        StringBuilder sb;
        Log.d(str, str2);
        String str5 = Environment.getExternalStorageDirectory().getAbsolutePath() + TAI_LOG_MIDDLE_PATH;
        File file = new File(str5);
        if (!file.exists()) {
            file.mkdirs();
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                fileWriter = new FileWriter(str5 + "/" + str3, true);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            fileWriter = fileWriter2;
        }
        try {
            fileWriter.write(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(System.currentTimeMillis())));
            fileWriter.write(": ");
            fileWriter.write(str2);
            fileWriter.write("\r\n");
            fileWriter.flush();
            fileWriter.close();
            try {
                fileWriter.close();
            } catch (IOException e2) {
                e = e2;
                str4 = TAG;
                sb = new StringBuilder();
                sb.append("Exception:");
                sb.append(Log.getStackTraceString(e));
                Log.e(str4, sb.toString());
            }
        } catch (IOException e3) {
            e = e3;
            fileWriter2 = fileWriter;
            Log.e(str, "create file writer fail", e);
            if (fileWriter2 != null) {
                try {
                    fileWriter2.close();
                } catch (IOException e4) {
                    e = e4;
                    str4 = TAG;
                    sb = new StringBuilder();
                    sb.append("Exception:");
                    sb.append(Log.getStackTraceString(e));
                    Log.e(str4, sb.toString());
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (fileWriter != null) {
                try {
                    fileWriter.close();
                } catch (IOException e5) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e5));
                }
            }
            throw th;
        }
    }

    public static boolean isSaveCloudLog() {
        return mSaveCloudLog;
    }

    public static void setSaveCloudLog(boolean z) {
        mSaveCloudLog = z;
    }

    public static void logConnection(String str) {
        FileWriter fileWriter;
        String str2;
        StringBuilder sb;
        String str3 = "(" + Thread.currentThread() + "): " + build(str, new Throwable().getStackTrace()[1]);
        if (sOpenLog) {
            Log.d("mqtt_connection", str3);
        }
        if (mSaveCloudLog) {
            String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault()).format(new Date());
            String str4 = Environment.getExternalStorageDirectory().getAbsolutePath() + TAI_LOG_MIDDLE_PATH;
            File file = new File(str4);
            if (!file.exists()) {
                file.mkdirs();
            }
            FileWriter fileWriter2 = null;
            try {
                try {
                    fileWriter = new FileWriter(str4 + "/connect.log", true);
                } catch (IOException e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
                fileWriter = fileWriter2;
            }
            try {
                fileWriter.write(format);
                fileWriter.write(":");
                fileWriter.write(str3);
                fileWriter.write("\r\n");
                fileWriter.flush();
                fileWriter.close();
                try {
                    fileWriter.close();
                } catch (IOException e2) {
                    e = e2;
                    str2 = TAG;
                    sb = new StringBuilder();
                    sb.append("Exception:");
                    sb.append(Log.getStackTraceString(e));
                    Log.e(str2, sb.toString());
                }
            } catch (IOException e3) {
                e = e3;
                fileWriter2 = fileWriter;
                Log.e(TAG, "create file writer fail", e);
                if (fileWriter2 != null) {
                    try {
                        fileWriter2.close();
                    } catch (IOException e4) {
                        e = e4;
                        str2 = TAG;
                        sb = new StringBuilder();
                        sb.append("Exception:");
                        sb.append(Log.getStackTraceString(e));
                        Log.e(str2, sb.toString());
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileWriter != null) {
                    try {
                        fileWriter.close();
                    } catch (IOException e5) {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e5));
                    }
                }
                throw th;
            }
        }
    }

    private static String build(String str, StackTraceElement stackTraceElement) {
        StringBuilder sb = new StringBuilder();
        if (stackTraceElement.isNativeMethod()) {
            sb.append("(Native Method)");
        } else {
            String fileName = stackTraceElement.getFileName();
            if (fileName == null) {
                sb.append("(Unknown Source)");
            } else {
                int lineNumber = stackTraceElement.getLineNumber();
                sb.append('(');
                sb.append(fileName);
                if (lineNumber >= 0) {
                    sb.append(':');
                    sb.append(lineNumber);
                }
                sb.append("):");
            }
        }
        sb.append(str);
        return sb.toString();
    }

    private static String buildWithPid(String str, String str2, StackTraceElement stackTraceElement) {
        return "Pid:" + Process.myPid() + ":[" + str + "]" + build(str2, stackTraceElement);
    }

    private static String build(String str, String str2, StackTraceElement stackTraceElement) {
        return "[" + str + "]" + build(str2, stackTraceElement);
    }

    private static String build(String str, String str2, StackTraceElement stackTraceElement, Throwable th) {
        return "[" + str + "]" + stackTraceElement.toString() + ":" + str2 + "\r\ne:" + th.getMessage();
    }
}
