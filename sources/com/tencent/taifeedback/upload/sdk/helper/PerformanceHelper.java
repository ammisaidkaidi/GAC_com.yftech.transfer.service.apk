package com.tencent.taifeedback.upload.sdk.helper;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.utils.Utils;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.text.DecimalFormat;

/* loaded from: /home/user/work/dex/classes.dex */
public class PerformanceHelper {
    private static String TAG = "PerformanceHelper";
    private static PerformanceHelper helper;
    private long startPidCpu = 0;
    private long startIdleCpu = 0;
    private long startTotalCpu = 0;
    private long endPidCpu = 0;
    private long endIdleCpu = 0;
    private long endTotalCpu = 0;
    private long startPidMem = 0;
    private long endPidMem = 0;
    private long freeMem = 0;
    private long totalMem = 0;

    public static PerformanceHelper getInstance() {
        if (helper == null) {
            helper = new PerformanceHelper();
        }
        return helper;
    }

    public void printInfo() {
        Utils.getInstance().log(TAG, "-----------start-----------");
        DecimalFormat decimalFormat = new DecimalFormat();
        decimalFormat.setMaximumFractionDigits(2);
        decimalFormat.setMinimumFractionDigits(2);
        String format = decimalFormat.format((this.endPidCpu / this.endTotalCpu) * 100.0d);
        String format2 = decimalFormat.format((((this.endTotalCpu - this.endIdleCpu) - (this.startTotalCpu - this.startIdleCpu)) / (this.endTotalCpu - this.startTotalCpu)) * 100.0d);
        Utils.getInstance().log(TAG, "pid cpu: \t" + format + "%");
        Utils.getInstance().log(TAG, "total cpu: \t" + format2 + "%");
        Utils.getInstance().log(TAG, "total mem: \t" + (this.totalMem / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + "MB");
        Utils.getInstance().log(TAG, "free mem: \t" + (this.freeMem / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + "MB");
        Utils.getInstance().log(TAG, "pid mem: \t" + (this.endPidMem - this.startPidMem) + "KB");
        Utils.getInstance().log(TAG, "------------end------------");
    }

    public void getInfoDoBefore(Context context) {
        long[] readCpuStat = readCpuStat(Process.myPid());
        this.startPidCpu = readCpuStat[0];
        this.startIdleCpu = readCpuStat[1];
        this.startTotalCpu = readCpuStat[2];
        this.startPidMem = getPidMemorySize(context, r0);
        this.freeMem = getFreeMemorySize(context);
        this.totalMem = getTotalMemory();
    }

    public void getInfoDoAfter(Context context) {
        long[] readCpuStat = readCpuStat(Process.myPid());
        this.endPidCpu = readCpuStat[0];
        this.endIdleCpu = readCpuStat[1];
        this.endTotalCpu = readCpuStat[2];
        this.endPidMem = getPidMemorySize(context, r0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:108:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long[] readCpuStat(int i) {
        Throwable th;
        RandomAccessFile randomAccessFile;
        IOException iOException;
        String str;
        StringBuilder sb;
        long j;
        long j2;
        Throwable th2;
        RandomAccessFile randomAccessFile2;
        IOException iOException2;
        String str2;
        StringBuilder sb2;
        RandomAccessFile randomAccessFile3;
        RandomAccessFile randomAccessFile4 = 0;
        RandomAccessFile randomAccessFile5 = null;
        RandomAccessFile randomAccessFile6 = null;
        long j3 = 0;
        try {
            try {
                randomAccessFile = new RandomAccessFile("/proc/" + Integer.toString(i) + "/stat", "r");
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.setLength(0);
                    while (true) {
                        String readLine = randomAccessFile.readLine();
                        if (readLine == null) {
                            break;
                        }
                        stringBuffer.append(readLine + "\n");
                    }
                    String[] split = stringBuffer.toString().split(" ");
                    j = Long.parseLong(split[13]) + Long.parseLong(split[14]);
                    try {
                        randomAccessFile.close();
                    } catch (IOException e) {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                    Utils.getInstance().log(TAG, e);
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e3) {
                            iOException = e3;
                            str = TAG;
                            sb = new StringBuilder();
                            sb.append("Exception:");
                            sb.append(Log.getStackTraceString(iOException));
                            Log.e(str, sb.toString());
                            j = 0;
                            randomAccessFile3 = new RandomAccessFile("/proc/stat", "r");
                            try {
                                String[] split2 = randomAccessFile3.readLine().split("\\s+");
                                j2 = Long.parseLong(split2[4]);
                                randomAccessFile4 = 7;
                                j3 = Long.parseLong(split2[1]) + Long.parseLong(split2[2]) + Long.parseLong(split2[3]) + Long.parseLong(split2[4]) + Long.parseLong(split2[6]) + Long.parseLong(split2[5]) + Long.parseLong(split2[7]);
                                try {
                                    randomAccessFile3.close();
                                } catch (IOException e4) {
                                    iOException2 = e4;
                                    str2 = TAG;
                                    sb2 = new StringBuilder();
                                    sb2.append("Exception:");
                                    sb2.append(Log.getStackTraceString(iOException2));
                                    Log.e(str2, sb2.toString());
                                    return new long[]{j, j2, j3};
                                }
                                return new long[]{j, j2, j3};
                            } catch (Throwable th3) {
                                th2 = th3;
                                randomAccessFile2 = randomAccessFile3;
                                if (randomAccessFile2 == null) {
                                    throw th2;
                                }
                                try {
                                    randomAccessFile2.close();
                                    throw th2;
                                } catch (IOException e5) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e5));
                                    throw th2;
                                }
                            }
                        }
                    }
                    j = 0;
                    try {
                        randomAccessFile3 = new RandomAccessFile("/proc/stat", "r");
                        try {
                            String[] split22 = randomAccessFile3.readLine().split("\\s+");
                            j2 = Long.parseLong(split22[4]);
                        } catch (FileNotFoundException e6) {
                            e = e6;
                            j2 = 0;
                        } catch (IOException e7) {
                            e = e7;
                            j2 = 0;
                        }
                        try {
                            randomAccessFile4 = 7;
                            j3 = Long.parseLong(split22[1]) + Long.parseLong(split22[2]) + Long.parseLong(split22[3]) + Long.parseLong(split22[4]) + Long.parseLong(split22[6]) + Long.parseLong(split22[5]) + Long.parseLong(split22[7]);
                            randomAccessFile3.close();
                        } catch (FileNotFoundException e8) {
                            e = e8;
                            randomAccessFile5 = randomAccessFile3;
                            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                            randomAccessFile4 = randomAccessFile5;
                            if (randomAccessFile5 != null) {
                                try {
                                    randomAccessFile5.close();
                                    randomAccessFile4 = randomAccessFile5;
                                } catch (IOException e9) {
                                    iOException2 = e9;
                                    str2 = TAG;
                                    sb2 = new StringBuilder();
                                    sb2.append("Exception:");
                                    sb2.append(Log.getStackTraceString(iOException2));
                                    Log.e(str2, sb2.toString());
                                    return new long[]{j, j2, j3};
                                }
                            }
                            return new long[]{j, j2, j3};
                        } catch (IOException e10) {
                            e = e10;
                            randomAccessFile6 = randomAccessFile3;
                            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                            randomAccessFile4 = randomAccessFile6;
                            if (randomAccessFile6 != null) {
                                try {
                                    randomAccessFile6.close();
                                    randomAccessFile4 = randomAccessFile6;
                                } catch (IOException e11) {
                                    iOException2 = e11;
                                    str2 = TAG;
                                    sb2 = new StringBuilder();
                                    sb2.append("Exception:");
                                    sb2.append(Log.getStackTraceString(iOException2));
                                    Log.e(str2, sb2.toString());
                                    return new long[]{j, j2, j3};
                                }
                            }
                            return new long[]{j, j2, j3};
                        }
                        return new long[]{j, j2, j3};
                    } catch (Throwable th4) {
                        th2 = th4;
                        randomAccessFile2 = randomAccessFile4;
                    }
                } catch (IOException e12) {
                    e = e12;
                    Utils.getInstance().log(TAG, e);
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e13) {
                            iOException = e13;
                            str = TAG;
                            sb = new StringBuilder();
                            sb.append("Exception:");
                            sb.append(Log.getStackTraceString(iOException));
                            Log.e(str, sb.toString());
                            j = 0;
                            randomAccessFile3 = new RandomAccessFile("/proc/stat", "r");
                            String[] split222 = randomAccessFile3.readLine().split("\\s+");
                            j2 = Long.parseLong(split222[4]);
                            randomAccessFile4 = 7;
                            j3 = Long.parseLong(split222[1]) + Long.parseLong(split222[2]) + Long.parseLong(split222[3]) + Long.parseLong(split222[4]) + Long.parseLong(split222[6]) + Long.parseLong(split222[5]) + Long.parseLong(split222[7]);
                            randomAccessFile3.close();
                            return new long[]{j, j2, j3};
                        }
                    }
                    j = 0;
                    randomAccessFile3 = new RandomAccessFile("/proc/stat", "r");
                    String[] split2222 = randomAccessFile3.readLine().split("\\s+");
                    j2 = Long.parseLong(split2222[4]);
                    randomAccessFile4 = 7;
                    j3 = Long.parseLong(split2222[1]) + Long.parseLong(split2222[2]) + Long.parseLong(split2222[3]) + Long.parseLong(split2222[4]) + Long.parseLong(split2222[6]) + Long.parseLong(split2222[5]) + Long.parseLong(split2222[7]);
                    randomAccessFile3.close();
                    return new long[]{j, j2, j3};
                }
            } catch (Throwable th5) {
                th = th5;
                if (0 != 0) {
                    throw th;
                }
                try {
                    randomAccessFile4.close();
                    throw th;
                } catch (IOException e14) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e14));
                    throw th;
                }
            }
        } catch (FileNotFoundException e15) {
            e = e15;
            randomAccessFile = null;
        } catch (IOException e16) {
            e = e16;
            randomAccessFile = null;
        } catch (Throwable th6) {
            th = th6;
            if (0 != 0) {
            }
        }
        try {
            randomAccessFile3 = new RandomAccessFile("/proc/stat", "r");
            String[] split22222 = randomAccessFile3.readLine().split("\\s+");
            j2 = Long.parseLong(split22222[4]);
            randomAccessFile4 = 7;
            j3 = Long.parseLong(split22222[1]) + Long.parseLong(split22222[2]) + Long.parseLong(split22222[3]) + Long.parseLong(split22222[4]) + Long.parseLong(split22222[6]) + Long.parseLong(split22222[5]) + Long.parseLong(split22222[7]);
            randomAccessFile3.close();
        } catch (FileNotFoundException e17) {
            e = e17;
            j2 = 0;
        } catch (IOException e18) {
            e = e18;
            j2 = 0;
        }
        return new long[]{j, j2, j3};
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0102 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long getTotalMemory() {
        BufferedReader bufferedReader;
        FileReader fileReader;
        String str = "";
        FileReader fileReader2 = null;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 8192);
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        if (readLine.contains("MemTotal")) {
                            str = readLine.split(":")[1].trim();
                        }
                    } catch (IOException e) {
                        e = e;
                        fileReader2 = fileReader;
                        try {
                            Utils.getInstance().log(TAG, e);
                            if (fileReader2 != null) {
                                try {
                                    fileReader2.close();
                                } catch (IOException e2) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e2));
                                }
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e3) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e3));
                                }
                            }
                            return 0L;
                        } catch (Throwable th) {
                            th = th;
                            fileReader = fileReader2;
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (IOException e4) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e4));
                                }
                            }
                            if (bufferedReader == null) {
                                try {
                                    bufferedReader.close();
                                    throw th;
                                } catch (IOException e5) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e5));
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileReader != null) {
                        }
                        if (bufferedReader == null) {
                        }
                    }
                }
                long parseLong = Long.parseLong(str.split(" ")[0].trim());
                try {
                    fileReader.close();
                } catch (IOException e6) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e6));
                }
                try {
                    bufferedReader.close();
                    return parseLong;
                } catch (IOException e7) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e7));
                    return parseLong;
                }
            } catch (IOException e8) {
                e = e8;
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (IOException e9) {
            e = e9;
            bufferedReader = null;
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
            fileReader = null;
        }
    }

    public long getFreeMemorySize(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
    }

    public int getPidMemorySize(Context context, int i) {
        Debug.MemoryInfo[] processMemoryInfo = ((ActivityManager) context.getSystemService("activity")).getProcessMemoryInfo(new int[]{i});
        processMemoryInfo[0].getTotalSharedDirty();
        return processMemoryInfo[0].getTotalPss();
    }
}
