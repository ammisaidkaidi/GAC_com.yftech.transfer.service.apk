package com.tencent.taiutils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.text.format.Formatter;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class FileUtils {
    public static final String FILE_EXTENSION_SEPARATOR = ".";

    public FileUtils() {
        throw new AssertionError();
    }

    public static Uri copyAssetsUri(Context context, String str) {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        File file = new File(context.getApplicationContext().getExternalCacheDir().getAbsolutePath() + File.separator + str);
        if (file.exists()) {
            return Uri.fromFile(file);
        }
        BufferedInputStream bufferedInputStream2 = null;
        try {
            file.createNewFile();
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            try {
                bufferedInputStream = new BufferedInputStream(context.getAssets().open(str));
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (-1 == read) {
                            break;
                        }
                        bufferedOutputStream.write(bArr, 0, read);
                    }
                    bufferedOutputStream.flush();
                    Uri fromFile = Uri.fromFile(file);
                    try {
                        bufferedOutputStream.close();
                    } catch (IOException unused) {
                    }
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused2) {
                    }
                    return fromFile;
                } catch (Exception unused3) {
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused5) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream2 = bufferedInputStream;
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (bufferedInputStream2 == null) {
                        throw th;
                    }
                    try {
                        bufferedInputStream2.close();
                        throw th;
                    } catch (IOException unused7) {
                        throw th;
                    }
                }
            } catch (Exception unused8) {
                bufferedInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused9) {
            bufferedOutputStream = null;
            bufferedInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }

    public static void copyFile(File file, File file2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[2048];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    fileInputStream.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean copyFile(String str, String str2) {
        try {
            writeFile(str2, new FileInputStream(str));
            return true;
        } catch (FileNotFoundException e) {
            throw new RuntimeException("FileNotFoundException occurred. ", e);
        }
    }

    public static File createFile(File file, String str) {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file2;
    }

    public static void deleteFile(File file) {
        if (file.exists()) {
            if (!file.isDirectory()) {
                file.delete();
                return;
            }
            for (File file2 : file.listFiles()) {
                deleteFile(file2);
            }
        }
    }

    public static boolean deleteFile(String str) {
        if (StringUtils.isBlank(str)) {
            return true;
        }
        File file = new File(str);
        if (!file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        if (!file.isDirectory()) {
            return false;
        }
        for (File file2 : file.listFiles()) {
            if (file2.isFile()) {
                file2.delete();
            } else if (file2.isDirectory()) {
                deleteFile(file2.getAbsolutePath());
            }
        }
        return file.delete();
    }

    public static String formateFileSize(Context context, long j) {
        return Formatter.formatFileSize(context, j);
    }

    public static String getFileExtension(String str) {
        if (StringUtils.isBlank(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(".");
        return (lastIndexOf != -1 && str.lastIndexOf(File.separator) < lastIndexOf) ? str.substring(lastIndexOf + 1) : "";
    }

    public static String getFileName(String str) {
        int lastIndexOf;
        return (StringUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(File.separator)) == -1) ? str : str.substring(lastIndexOf + 1);
    }

    public static long getFileSize(String str) {
        if (StringUtils.isBlank(str)) {
            return -1L;
        }
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            return file.length();
        }
        return -1L;
    }

    public static String getFolderName(String str) {
        if (StringUtils.isEmpty(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(File.separator);
        return lastIndexOf == -1 ? "" : str.substring(0, lastIndexOf);
    }

    public static boolean hasSDCard() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static boolean isFileExist(String str) {
        if (StringUtils.isBlank(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public static boolean isFolderExist(String str) {
        if (StringUtils.isBlank(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isDirectory();
    }

    public static boolean isTheSameFile(String str, int i) {
        File file = new File(str);
        return file.exists() && file.length() == ((long) i);
    }

    public static boolean isVideoFile(String str) {
        String lowerCase = str.toLowerCase();
        return lowerCase.endsWith(".mp4") || lowerCase.endsWith(".3gp") || lowerCase.endsWith(".mkv") || lowerCase.endsWith(".avi") || lowerCase.endsWith(".mpeg") || lowerCase.endsWith(".rmvb") || lowerCase.endsWith(".mov");
    }

    public static boolean makeDirs(String str) {
        String folderName = getFolderName(str);
        if (StringUtils.isEmpty(folderName)) {
            return false;
        }
        File file = new File(folderName);
        if (file.exists() && file.isDirectory()) {
            return true;
        }
        return file.mkdirs();
    }

    public static boolean makeFolders(String str) {
        return makeDirs(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0069 A[Catch: IOException -> 0x0065, TRY_LEAVE, TryCatch #2 {IOException -> 0x0065, blocks: (B:46:0x0061, B:39:0x0069), top: B:45:0x0061 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void moveFile(File file, File file2) {
        ?? r2;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        ?? r0 = 0;
        r0 = 0;
        r0 = 0;
        r0 = 0;
        r0 = 0;
        r0 = 0;
        FileInputStream fileInputStream2 = null;
        try {
        } catch (Throwable th) {
            th = th;
            r2 = r0;
        }
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    r2 = new FileOutputStream(file2);
                } catch (FileNotFoundException e) {
                    e = e;
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    r0 = fileInputStream.read(bArr);
                    if (r0 <= 0) {
                        break;
                    } else {
                        r2.write(bArr, 0, r0);
                    }
                }
                file.delete();
                fileInputStream.close();
                r2.close();
            } catch (FileNotFoundException e4) {
                e = e4;
                r0 = r2;
                e.printStackTrace();
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                if (r0 != 0) {
                    r0.close();
                }
            } catch (IOException e5) {
                e = e5;
                r0 = r2;
                e.printStackTrace();
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                if (r0 != 0) {
                    r0.close();
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                fileOutputStream = r2;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                        throw th;
                    }
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw th;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            fileInputStream = null;
        } catch (IOException e8) {
            e = e8;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            if (fileInputStream2 != null) {
            }
            if (fileOutputStream != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.BufferedReader] */
    public static StringBuilder readFile(String str, String str2) {
        File file = new File(str);
        StringBuilder sb = new StringBuilder("");
        ?? r2 = 0;
        try {
            if (!file.isFile()) {
                return null;
            }
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), str2));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            bufferedReader.close();
                            try {
                                bufferedReader.close();
                                return sb;
                            } catch (IOException e) {
                                throw new RuntimeException("IOException occurred. ", e);
                            }
                        }
                        if (!sb.toString().equals("")) {
                            sb.append("\r\n");
                        }
                        sb.append(readLine);
                    } catch (IOException e2) {
                        e = e2;
                        throw new RuntimeException("IOException occurred. ", e);
                    }
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Throwable th) {
                th = th;
                if (r2 != 0) {
                    try {
                        r2.close();
                    } catch (IOException e4) {
                        throw new RuntimeException("IOException occurred. ", e4);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            r2 = str2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.BufferedReader] */
    public static List<String> readFileToList(String str, String str2) {
        File file = new File(str);
        ArrayList arrayList = new ArrayList();
        ?? r2 = 0;
        try {
            if (!file.isFile()) {
                return null;
            }
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), str2));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            bufferedReader.close();
                            try {
                                bufferedReader.close();
                                return arrayList;
                            } catch (IOException e) {
                                throw new RuntimeException("IOException occurred. ", e);
                            }
                        }
                        arrayList.add(readLine);
                    } catch (IOException e2) {
                        e = e2;
                        throw new RuntimeException("IOException occurred. ", e);
                    }
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Throwable th) {
                th = th;
                if (r2 != 0) {
                    try {
                        r2.close();
                    } catch (IOException e4) {
                        throw new RuntimeException("IOException occurred. ", e4);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            r2 = str2;
        }
    }

    public static String readInputStream(InputStream inputStream) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    inputStream.close();
                    byteArrayOutputStream.close();
                    return new String(byteArrayOutputStream.toByteArray());
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] readInputStreamBytes(InputStream inputStream) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    inputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean saveImageFile(Bitmap bitmap, File file) {
        if (bitmap != null && file != null) {
            try {
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                return true;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static File sdcard() {
        return Environment.getExternalStorageDirectory();
    }

    public static boolean writeFile(File file, InputStream inputStream) {
        writeFile(file, inputStream, false);
        return true;
    }

    public static boolean writeFile(File file, InputStream inputStream, boolean z) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                makeDirs(file.getAbsolutePath());
                fileOutputStream = new FileOutputStream(file, z);
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException e) {
            e = e;
        } catch (IOException e2) {
            e = e2;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    fileOutputStream.flush();
                    try {
                        fileOutputStream.close();
                        inputStream.close();
                        return true;
                    } catch (IOException e3) {
                        throw new RuntimeException("IOException occurred. ", e3);
                    }
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            throw new RuntimeException("FileNotFoundException occurred. ", e);
        } catch (IOException e5) {
            e = e5;
            throw new RuntimeException("IOException occurred. ", e);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                    inputStream.close();
                } catch (IOException e6) {
                    throw new RuntimeException("IOException occurred. ", e6);
                }
            }
            throw th;
        }
    }

    public static boolean writeFile(String str, InputStream inputStream) {
        writeFile(str, inputStream, false);
        return true;
    }

    public static boolean writeFile(String str, InputStream inputStream, boolean z) {
        writeFile(str != null ? new File(str) : null, inputStream, z);
        return true;
    }

    public static boolean writeFile(String str, String str2) {
        return writeFile(str, str2, false);
    }

    public static boolean writeFile(String str, String str2, boolean z) {
        FileWriter fileWriter;
        if (StringUtils.isEmpty(str2)) {
            return false;
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                makeDirs(str);
                fileWriter = new FileWriter(str, z);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            fileWriter.write(str2);
            fileWriter.close();
            try {
                fileWriter.close();
                return true;
            } catch (IOException e2) {
                throw new RuntimeException("IOException occurred. ", e2);
            }
        } catch (IOException e3) {
            e = e3;
            throw new RuntimeException("IOException occurred. ", e);
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            if (fileWriter2 != null) {
                try {
                    fileWriter2.close();
                } catch (IOException e4) {
                    throw new RuntimeException("IOException occurred. ", e4);
                }
            }
            throw th;
        }
    }

    public static boolean writeFile(String str, List<String> list) {
        return writeFile(str, list, false);
    }

    public static boolean writeFile(String str, List<String> list, boolean z) {
        FileWriter fileWriter;
        int i = 0;
        if (ListUtils.isEmpty(list)) {
            return false;
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                makeDirs(str);
                fileWriter = new FileWriter(str, z);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            for (String str2 : list) {
                int i2 = i + 1;
                if (i > 0) {
                    fileWriter.write("\r\n");
                }
                fileWriter.write(str2);
                i = i2;
            }
            fileWriter.close();
            try {
                fileWriter.close();
                return true;
            } catch (IOException e2) {
                throw new RuntimeException("IOException occurred. ", e2);
            }
        } catch (IOException e3) {
            e = e3;
            fileWriter2 = fileWriter;
            throw new RuntimeException("IOException occurred. ", e);
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            if (fileWriter2 != null) {
                try {
                    fileWriter2.close();
                } catch (IOException e4) {
                    throw new RuntimeException("IOException occurred. ", e4);
                }
            }
            throw th;
        }
    }

    public Bitmap getImageFromAssetsFile(Context context, String str) {
        Bitmap bitmap;
        InputStream open;
        try {
            open = context.getResources().getAssets().open(str);
            bitmap = BitmapFactory.decodeStream(open);
        } catch (IOException e) {
            e = e;
            bitmap = null;
        }
        try {
            open.close();
        } catch (IOException e2) {
            e = e2;
            e.printStackTrace();
            return bitmap;
        }
        return bitmap;
    }

    public String readAssets(Context context, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        InputStream open = context.getResources().getAssets().open(str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open, "utf8"));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                open.close();
                bufferedReader.close();
                return stringBuffer.toString();
            }
            stringBuffer.append(readLine + "\n");
        }
    }
}
