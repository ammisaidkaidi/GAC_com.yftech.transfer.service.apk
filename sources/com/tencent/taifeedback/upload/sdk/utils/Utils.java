package com.tencent.taifeedback.upload.sdk.utils;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.tencent.taifeedback.upload.sdk.TAIFeedbackConfig;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* loaded from: /home/user/work/dex/classes.dex */
public class Utils {
    private static final String LOGCAT_CMD_DEFAULT = "logcat -v time -d";
    private static String TAG = "Utils";
    private static Utils utils;

    public static Utils getInstance() {
        if (utils == null) {
            utils = new Utils();
        }
        return utils;
    }

    public void destroy() {
        utils = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    public String takeScreenShot(Activity activity) {
        FileOutputStream fileOutputStream;
        String storePicFile = FileUtils.getInstance().getStorePicFile(activity);
        View decorView = activity.getWindow().getDecorView();
        decorView.setDrawingCacheEnabled(true);
        decorView.buildDrawingCache();
        Bitmap drawingCache = decorView.getDrawingCache();
        ?? r3 = 0;
        FileOutputStream fileOutputStream2 = null;
        FileOutputStream fileOutputStream3 = null;
        FileOutputStream fileOutputStream4 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(new File(storePicFile));
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException e) {
            e = e;
        } catch (IOException e2) {
            e = e2;
        } catch (Exception e3) {
            e = e3;
        }
        try {
            r3 = 100;
            drawingCache.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            try {
                fileOutputStream.close();
                drawingCache.recycle();
            } catch (IOException e4) {
                e = e4;
                getInstance().log(TAG, e);
                decorView.destroyDrawingCache();
                decorView.setDrawingCacheEnabled(false);
                return storePicFile;
            } catch (Exception e5) {
                e = e5;
                getInstance().log(TAG, e);
                decorView.destroyDrawingCache();
                decorView.setDrawingCacheEnabled(false);
                return storePicFile;
            }
        } catch (FileNotFoundException e6) {
            e = e6;
            fileOutputStream2 = fileOutputStream;
            getInstance().log(TAG, e);
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e7) {
                    e = e7;
                    getInstance().log(TAG, e);
                    decorView.destroyDrawingCache();
                    decorView.setDrawingCacheEnabled(false);
                    return storePicFile;
                } catch (Exception e8) {
                    e = e8;
                    getInstance().log(TAG, e);
                    decorView.destroyDrawingCache();
                    decorView.setDrawingCacheEnabled(false);
                    return storePicFile;
                }
            }
            drawingCache.recycle();
            r3 = fileOutputStream2;
            decorView.destroyDrawingCache();
            decorView.setDrawingCacheEnabled(false);
            return storePicFile;
        } catch (IOException e9) {
            e = e9;
            fileOutputStream3 = fileOutputStream;
            getInstance().log(TAG, e);
            if (fileOutputStream3 != null) {
                try {
                    fileOutputStream3.close();
                } catch (IOException e10) {
                    e = e10;
                    getInstance().log(TAG, e);
                    decorView.destroyDrawingCache();
                    decorView.setDrawingCacheEnabled(false);
                    return storePicFile;
                } catch (Exception e11) {
                    e = e11;
                    getInstance().log(TAG, e);
                    decorView.destroyDrawingCache();
                    decorView.setDrawingCacheEnabled(false);
                    return storePicFile;
                }
            }
            drawingCache.recycle();
            r3 = fileOutputStream3;
            decorView.destroyDrawingCache();
            decorView.setDrawingCacheEnabled(false);
            return storePicFile;
        } catch (Exception e12) {
            e = e12;
            fileOutputStream4 = fileOutputStream;
            getInstance().log(TAG, e);
            if (fileOutputStream4 != null) {
                try {
                    fileOutputStream4.close();
                } catch (IOException e13) {
                    e = e13;
                    getInstance().log(TAG, e);
                    decorView.destroyDrawingCache();
                    decorView.setDrawingCacheEnabled(false);
                    return storePicFile;
                } catch (Exception e14) {
                    e = e14;
                    getInstance().log(TAG, e);
                    decorView.destroyDrawingCache();
                    decorView.setDrawingCacheEnabled(false);
                    return storePicFile;
                }
            }
            drawingCache.recycle();
            r3 = fileOutputStream4;
            decorView.destroyDrawingCache();
            decorView.setDrawingCacheEnabled(false);
            return storePicFile;
        } catch (Throwable th2) {
            th = th2;
            r3 = fileOutputStream;
            if (r3 != 0) {
                try {
                    r3.close();
                } catch (IOException e15) {
                    getInstance().log(TAG, e15);
                    decorView.destroyDrawingCache();
                    decorView.setDrawingCacheEnabled(false);
                    throw th;
                } catch (Exception e16) {
                    getInstance().log(TAG, e16);
                    decorView.destroyDrawingCache();
                    decorView.setDrawingCacheEnabled(false);
                    throw th;
                }
            }
            drawingCache.recycle();
            decorView.destroyDrawingCache();
            decorView.setDrawingCacheEnabled(false);
            throw th;
        }
        decorView.destroyDrawingCache();
        decorView.setDrawingCacheEnabled(false);
        return storePicFile;
    }

    public String seekLogcat(Context context) {
        return seekLogcat(context, LOGCAT_CMD_DEFAULT, FileUtils.getInstance().getStoreLogFile(context));
    }

    public String seekLogcat(Context context, String str) {
        return seekLogcat(context, str, FileUtils.getInstance().getStoreLogFile(context));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:(1:186)|4|5|(5:6|7|(6:95|96|98|99|(3:100|101|(1:103)(1:104))|105)(1:9)|(2:93|94)|(1:12))|(2:21|22)|24|(14:74|75|(1:77)|29|(1:31)|35|36|37|38|39|40|41|(2:43|44)|33)|28|29|(0)|35|36|37|38|39|40|41|(0)|33|(3:(0)|(0)|(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(24:(1:186)|4|5|6|7|(6:95|96|98|99|(3:100|101|(1:103)(1:104))|105)(1:9)|(2:93|94)|(1:12)|(2:21|22)|24|(14:74|75|(1:77)|29|(1:31)|35|36|37|38|39|40|41|(2:43|44)|33)|28|29|(0)|35|36|37|38|39|40|41|(0)|33|(3:(0)|(0)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x016a, code lost:
    
        if (r10 < 0) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01b3, code lost:
    
        r9 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01b4, code lost:
    
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01cf, code lost:
    
        getInstance().log(com.tencent.taifeedback.upload.sdk.utils.Utils.TAG, r9);
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01d8, code lost:
    
        if (r10 != null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01b1, code lost:
    
        r9 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01b2, code lost:
    
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01bf, code lost:
    
        getInstance().log(com.tencent.taifeedback.upload.sdk.utils.Utils.TAG, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01c8, code lost:
    
        if (r10 != null) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01ca, code lost:
    
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01cb, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01cc, code lost:
    
        r10 = r9;
        r9 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01bb, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01bc, code lost:
    
        r10 = r9;
        r9 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01b6, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01b7, code lost:
    
        r10 = r9;
        r9 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0150, code lost:
    
        if (r2 == null) goto L169;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00e4 A[Catch: Exception -> 0x00de, IOException -> 0x00e0, TRY_LEAVE, TryCatch #29 {IOException -> 0x00e0, Exception -> 0x00de, blocks: (B:122:0x00da, B:111:0x00e4), top: B:121:0x00da }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x00fd A[Catch: Exception -> 0x0083, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x0083, blocks: (B:21:0x007e, B:136:0x00c7, B:120:0x00fd), top: B:5:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00ae A[Catch: Exception -> 0x00a8, IOException -> 0x00aa, TRY_LEAVE, TryCatch #26 {IOException -> 0x00aa, Exception -> 0x00a8, blocks: (B:138:0x00a4, B:127:0x00ae), top: B:137:0x00a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x00c7 A[Catch: Exception -> 0x0083, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x0083, blocks: (B:21:0x007e, B:136:0x00c7, B:120:0x00fd), top: B:5:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01f8 A[Catch: Exception -> 0x01f2, IOException -> 0x01f4, TRY_LEAVE, TryCatch #32 {IOException -> 0x01f4, Exception -> 0x01f2, blocks: (B:166:0x01ee, B:148:0x01f8), top: B:165:0x01ee }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0211 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:164:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String seekLogcat(Context context, String str, String str2) {
        Process process;
        Process exec;
        boolean exists;
        Process process2;
        Process exec2;
        PrintStream printStream;
        BufferedReader bufferedReader;
        FileWriter fileWriter;
        FileWriter fileWriter2;
        FileWriter fileWriter3;
        if (str == null || "".equals(str)) {
            str = LOGCAT_CMD_DEFAULT;
        }
        try {
            try {
                try {
                    process = exec(context, str);
                    if (process != null) {
                        try {
                            bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()), 8192);
                        } catch (IOException e) {
                            e = e;
                            bufferedReader = null;
                            fileWriter2 = bufferedReader;
                            getInstance().log(TAG, e);
                            if (bufferedReader != null) {
                            }
                            if (process != null) {
                            }
                            if (fileWriter2 != 0) {
                            }
                            if (FileUtils.getInstance().exists(str2)) {
                            }
                            try {
                                try {
                                    try {
                                        try {
                                            exec = exec(context, str + " > " + str2);
                                            if (exec != null) {
                                            }
                                        } catch (Throwable th) {
                                            if (process != null) {
                                                process.destroy();
                                            }
                                            throw th;
                                        }
                                    } catch (IOException e2) {
                                        getInstance().log(TAG, e2);
                                    } catch (Exception e3) {
                                        getInstance().log(TAG, e3);
                                        if (process != null) {
                                            process.destroy();
                                        }
                                        exec = process;
                                        exists = FileUtils.getInstance().exists(str2);
                                        process2 = exists;
                                        if (exists != 0) {
                                        }
                                        exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                                        printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                                        printStream.println(str + " > " + str2);
                                        printStream.flush();
                                        printStream.close();
                                        exec2.waitFor();
                                        if (exec2 != null) {
                                        }
                                        return str2;
                                    }
                                    printStream.println(str + " > " + str2);
                                    printStream.flush();
                                    printStream.close();
                                    exec2.waitFor();
                                    if (exec2 != null) {
                                    }
                                    return str2;
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (printStream != null) {
                                        printStream.close();
                                    }
                                    throw th;
                                }
                                printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                            } catch (Throwable th3) {
                                th = th3;
                                printStream = null;
                            }
                            exists = FileUtils.getInstance().exists(str2);
                            process2 = exists;
                            if (exists != 0) {
                            }
                            exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                        } catch (Exception e4) {
                            e = e4;
                            bufferedReader = null;
                            fileWriter2 = bufferedReader;
                            getInstance().log(TAG, e);
                            if (bufferedReader != null) {
                            }
                            if (process != null) {
                            }
                            if (fileWriter2 != 0) {
                            }
                            if (FileUtils.getInstance().exists(str2)) {
                            }
                            exec = exec(context, str + " > " + str2);
                            if (exec != null) {
                            }
                            exists = FileUtils.getInstance().exists(str2);
                            process2 = exists;
                            if (exists != 0) {
                            }
                            exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                            printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                            printStream.println(str + " > " + str2);
                            printStream.flush();
                            printStream.close();
                            exec2.waitFor();
                            if (exec2 != null) {
                            }
                            return str2;
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedReader = null;
                            fileWriter = bufferedReader;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e5) {
                                    getInstance().log(TAG, e5);
                                    if (fileWriter != 0) {
                                        throw th;
                                    }
                                    try {
                                        fileWriter.close();
                                        throw th;
                                    } catch (Exception e6) {
                                        getInstance().log(TAG, e6);
                                        throw th;
                                    }
                                } catch (Exception e7) {
                                    getInstance().log(TAG, e7);
                                    if (fileWriter != 0) {
                                    }
                                }
                            }
                            if (process != null) {
                                process.destroy();
                            }
                            if (fileWriter != 0) {
                            }
                        }
                        try {
                            fileWriter2 = new FileWriter(str2);
                            while (true) {
                                try {
                                    String readLine = bufferedReader.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    fileWriter2.write(readLine);
                                    fileWriter2.write("\n");
                                } catch (IOException e8) {
                                    e = e8;
                                    getInstance().log(TAG, e);
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (IOException e9) {
                                            getInstance().log(TAG, e9);
                                            if (fileWriter2 != 0) {
                                                fileWriter2.close();
                                            }
                                            if (FileUtils.getInstance().exists(str2)) {
                                            }
                                            exec = exec(context, str + " > " + str2);
                                            if (exec != null) {
                                            }
                                            exists = FileUtils.getInstance().exists(str2);
                                            process2 = exists;
                                            if (exists != 0) {
                                            }
                                            exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                                            printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                                            printStream.println(str + " > " + str2);
                                            printStream.flush();
                                            printStream.close();
                                            exec2.waitFor();
                                            if (exec2 != null) {
                                            }
                                            return str2;
                                        } catch (Exception e10) {
                                            getInstance().log(TAG, e10);
                                            if (fileWriter2 != 0) {
                                            }
                                            if (FileUtils.getInstance().exists(str2)) {
                                            }
                                            exec = exec(context, str + " > " + str2);
                                            if (exec != null) {
                                            }
                                            exists = FileUtils.getInstance().exists(str2);
                                            process2 = exists;
                                            if (exists != 0) {
                                            }
                                            exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                                            printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                                            printStream.println(str + " > " + str2);
                                            printStream.flush();
                                            printStream.close();
                                            exec2.waitFor();
                                            if (exec2 != null) {
                                            }
                                            return str2;
                                        }
                                    }
                                    if (process != null) {
                                        process.destroy();
                                    }
                                    if (fileWriter2 != 0) {
                                    }
                                    if (FileUtils.getInstance().exists(str2)) {
                                    }
                                    exec = exec(context, str + " > " + str2);
                                    if (exec != null) {
                                    }
                                    exists = FileUtils.getInstance().exists(str2);
                                    process2 = exists;
                                    if (exists != 0) {
                                    }
                                    exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                                    printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                                    printStream.println(str + " > " + str2);
                                    printStream.flush();
                                    printStream.close();
                                    exec2.waitFor();
                                    if (exec2 != null) {
                                    }
                                    return str2;
                                } catch (Exception e11) {
                                    e = e11;
                                    getInstance().log(TAG, e);
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (IOException e12) {
                                            getInstance().log(TAG, e12);
                                            if (fileWriter2 != 0) {
                                                fileWriter2.close();
                                            }
                                            if (FileUtils.getInstance().exists(str2)) {
                                            }
                                            exec = exec(context, str + " > " + str2);
                                            if (exec != null) {
                                            }
                                            exists = FileUtils.getInstance().exists(str2);
                                            process2 = exists;
                                            if (exists != 0) {
                                            }
                                            exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                                            printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                                            printStream.println(str + " > " + str2);
                                            printStream.flush();
                                            printStream.close();
                                            exec2.waitFor();
                                            if (exec2 != null) {
                                            }
                                            return str2;
                                        } catch (Exception e13) {
                                            getInstance().log(TAG, e13);
                                            if (fileWriter2 != 0) {
                                            }
                                            if (FileUtils.getInstance().exists(str2)) {
                                            }
                                            exec = exec(context, str + " > " + str2);
                                            if (exec != null) {
                                            }
                                            exists = FileUtils.getInstance().exists(str2);
                                            process2 = exists;
                                            if (exists != 0) {
                                            }
                                            exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                                            printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                                            printStream.println(str + " > " + str2);
                                            printStream.flush();
                                            printStream.close();
                                            exec2.waitFor();
                                            if (exec2 != null) {
                                            }
                                            return str2;
                                        }
                                    }
                                    if (process != null) {
                                        process.destroy();
                                    }
                                    if (fileWriter2 != 0) {
                                    }
                                    if (FileUtils.getInstance().exists(str2)) {
                                    }
                                    exec = exec(context, str + " > " + str2);
                                    if (exec != null) {
                                    }
                                    exists = FileUtils.getInstance().exists(str2);
                                    process2 = exists;
                                    if (exists != 0) {
                                    }
                                    exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                                    printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                                    printStream.println(str + " > " + str2);
                                    printStream.flush();
                                    printStream.close();
                                    exec2.waitFor();
                                    if (exec2 != null) {
                                    }
                                    return str2;
                                }
                            }
                            fileWriter2.flush();
                            fileWriter3 = fileWriter2;
                        } catch (IOException e14) {
                            e = e14;
                            fileWriter2 = 0;
                        } catch (Exception e15) {
                            e = e15;
                            fileWriter2 = 0;
                        } catch (Throwable th5) {
                            th = th5;
                            fileWriter = 0;
                            if (bufferedReader != null) {
                            }
                            if (process != null) {
                            }
                            if (fileWriter != 0) {
                            }
                        }
                    } else {
                        bufferedReader = null;
                        fileWriter3 = null;
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e16) {
                            getInstance().log(TAG, e16);
                        } catch (Exception e17) {
                            getInstance().log(TAG, e17);
                        }
                    }
                    if (process != null) {
                        process.destroy();
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (IOException e18) {
                e = e18;
                process = null;
                bufferedReader = null;
            } catch (Exception e19) {
                e = e19;
                process = null;
                bufferedReader = null;
            } catch (Throwable th7) {
                th = th7;
                process = null;
                bufferedReader = null;
            }
            if (fileWriter3 != null) {
                fileWriter3.close();
            }
        } catch (Exception e20) {
            getInstance().log(TAG, e20);
        }
        try {
            if (FileUtils.getInstance().exists(str2) || FileUtils.getInstance().size(str2) < 1000) {
                exec = exec(context, str + " > " + str2);
                if (exec != null) {
                    exec.destroy();
                }
                exists = FileUtils.getInstance().exists(str2);
                process2 = exists;
                if (exists != 0) {
                    int i = (FileUtils.getInstance().size(str2) > 1000L ? 1 : (FileUtils.getInstance().size(str2) == 1000L ? 0 : -1));
                    process2 = i;
                }
                exec2 = Runtime.getRuntime().exec("/system/bin/sh");
                printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
                printStream.println(str + " > " + str2);
                printStream.flush();
                printStream.close();
                exec2.waitFor();
                if (exec2 != null) {
                    Process process3 = exec2;
                    process3.destroy();
                }
                return str2;
            }
            exec2 = Runtime.getRuntime().exec("/system/bin/sh");
            printStream = new PrintStream(new BufferedOutputStream(exec2.getOutputStream(), 8192));
            printStream.println(str + " > " + str2);
            printStream.flush();
            printStream.close();
            exec2.waitFor();
            if (exec2 != null) {
            }
            return str2;
        } catch (Throwable th8) {
            Throwable th9 = th8;
            if (process2 != null) {
                process2.destroy();
            }
            throw th9;
        }
        exec = process;
        exists = FileUtils.getInstance().exists(str2);
        process2 = exists;
        if (exists != 0) {
        }
    }

    public Process exec(Context context, String str) throws IOException {
        PrintStream printStream;
        try {
            if (SettingsUtils.getInstance().getIsCheckRooted(context) && isRooted()) {
                Process exec = Runtime.getRuntime().exec("su");
                try {
                    printStream = new PrintStream(new BufferedOutputStream(exec.getOutputStream(), 8192));
                    try {
                        printStream.println(str);
                        printStream.flush();
                        printStream.close();
                        return exec;
                    } catch (Throwable th) {
                        th = th;
                        if (printStream != null) {
                            printStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    printStream = null;
                }
            } else {
                return Runtime.getRuntime().exec(str);
            }
        } catch (Throwable th3) {
            th3.printStackTrace();
            return null;
        }
    }

    public boolean isRooted() {
        return RootUtils.isDeviceRooted();
    }

    public String formatSize(long j) {
        float f;
        String str = "B";
        if (j >= 1000) {
            str = "KB";
            f = ((float) j) / 1000.0f;
            if (f >= 1000.0f) {
                str = "MB";
                f /= 1000.0f;
            }
            if (f >= 1000.0f) {
                str = "GB";
                f /= 1000.0f;
            }
        } else {
            f = (float) j;
        }
        return new DecimalFormat("#0.0").format(f) + str;
    }

    public String formatCpuSize(long j) {
        float f;
        String str = "KHz";
        if (j >= 1000) {
            str = "MHz";
            f = (float) (j / 1000.0d);
            if (f >= 1000.0f) {
                str = "GHz";
                f /= 1000.0f;
            }
            if (f >= 1000.0f) {
                str = "THz";
                f /= 1000.0f;
            }
        } else {
            f = (float) j;
        }
        return new DecimalFormat("#0.0").format(f) + str;
    }

    public boolean checkPermission(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Exception e) {
            getInstance().log(TAG, e);
            return false;
        }
    }

    public void log(String str, Exception exc) {
        Log.e(str, Log.getStackTraceString(exc));
    }

    public void log(String str, String str2) {
        Log.e(str, str2);
    }

    public void saveExtraFile(Context context, List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        boolean isDeleteExtraFile = TAIFeedbackConfig.getIsDeleteExtraFile(context);
        for (String str : list) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    File file = new File(str);
                    if (file.exists()) {
                        String str2 = FileUtils.getInstance().getStorePath(context) + File.separator + file.getName();
                        FileUtils.getInstance().getClass();
                        if (str2.endsWith(".dat")) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(str2);
                            FileUtils.getInstance().getClass();
                            sb.append(".txt");
                            str2 = sb.toString();
                        }
                        if (FileUtils.getInstance().copy(file.getAbsolutePath(), str2) && isDeleteExtraFile && !file.delete()) {
                            Log.e(TAG, file.getPath() + " delete  failed");
                        }
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                }
            }
        }
    }

    public String getPackageName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
            return null;
        }
    }

    public String getLogPath(Context context, String str) {
        String packageName;
        String sDPath = FileUtils.getInstance().getSDPath();
        if (sDPath == null || (packageName = getPackageName(context)) == null) {
            return null;
        }
        return sDPath + File.separator + FeedBackConstants.LOG_PRIFIX + File.separator + packageName + File.separator + (new SimpleDateFormat("yyyyMMddHHmmss", Locale.US).format(new Date()) + str);
    }

    public static String encodeBase64File(File file) {
        String str;
        StringBuilder sb;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (OutOfMemoryError e) {
            e = e;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[((int) file.length()) + 100];
            String encodeToString = Base64.encodeToString(bArr, 0, fileInputStream.read(bArr), 0);
            try {
                fileInputStream.close();
                return encodeToString;
            } catch (IOException e2) {
                Log.e(TAG, "Exception:" + Log.getStackTraceString(e2));
                return encodeToString;
            }
        } catch (OutOfMemoryError e3) {
            e = e3;
            fileInputStream2 = fileInputStream;
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e4) {
                    e = e4;
                    str = TAG;
                    sb = new StringBuilder();
                    sb.append("Exception:");
                    sb.append(Log.getStackTraceString(e));
                    Log.e(str, sb.toString());
                    return "";
                }
            }
            return "";
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e5) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e5));
                }
            }
            throw th;
        }
    }

    public static String getUuid() {
        return UUID.randomUUID().toString();
    }
}
