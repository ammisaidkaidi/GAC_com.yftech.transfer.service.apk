package com.tencent.taes.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.text.format.Formatter;
import android.util.Log;
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
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class FileUtils {
    public static final String FILE_EXTENSION_SEPARATOR = ".";

    private FileUtils() {
        throw new AssertionError();
    }

    public static void saveObject(String str, Object obj) {
        FileOutputStream fileOutputStream;
        ObjectOutputStream objectOutputStream;
        File file = new File(str);
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    objectOutputStream = new ObjectOutputStream(fileOutputStream);
                } catch (IOException unused) {
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException unused2) {
                return;
            }
        } catch (IOException unused3) {
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        try {
            objectOutputStream.writeObject(obj);
            objectOutputStream.close();
        } catch (IOException unused4) {
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                objectOutputStream2.close();
            }
            if (fileOutputStream == null) {
                return;
            }
            fileOutputStream.close();
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException unused5) {
                    throw th;
                }
            }
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw th;
        }
        fileOutputStream.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.io.FileInputStream, java.io.InputStream] */
    public static Object restoreObject(String str) {
        ObjectInputStream objectInputStream;
        ?? file = new File(str);
        ?? exists = file.exists();
        try {
            if (exists == 0) {
                return null;
            }
            try {
                exists = new FileInputStream((File) file);
                try {
                    objectInputStream = new ObjectInputStream(exists);
                    try {
                        Object readObject = objectInputStream.readObject();
                        try {
                            objectInputStream.close();
                            exists.close();
                        } catch (IOException unused) {
                        }
                        return readObject;
                    } catch (IOException | ClassNotFoundException | IllegalArgumentException e) {
                        e = e;
                        Log.e("FileUtils", "restoreObject : " + e.getMessage());
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException unused2) {
                                return null;
                            }
                        }
                        if (exists != 0) {
                            exists.close();
                        }
                        return null;
                    }
                } catch (IOException | ClassNotFoundException | IllegalArgumentException e2) {
                    e = e2;
                    objectInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    file = 0;
                    if (file != 0) {
                        try {
                            file.close();
                        } catch (IOException unused3) {
                            throw th;
                        }
                    }
                    if (exists != 0) {
                        exists.close();
                    }
                    throw th;
                }
            } catch (IOException | ClassNotFoundException | IllegalArgumentException e3) {
                e = e3;
                exists = 0;
                objectInputStream = null;
            } catch (Throwable th2) {
                file = 0;
                th = th2;
                exists = 0;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static StringBuilder readFile(String str, String str2) {
        File file = new File(str);
        StringBuilder sb = new StringBuilder("");
        BufferedReader bufferedReader = null;
        try {
            if (!file.isFile()) {
                return null;
            }
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), str2));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine != null) {
                            if (!sb.toString().equals("")) {
                                sb.append("\r\n");
                            }
                            sb.append(readLine);
                        } else {
                            bufferedReader2.close();
                            try {
                                bufferedReader2.close();
                                return sb;
                            } catch (IOException e) {
                                throw new RuntimeException("IOException occurred. ", e);
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        throw new RuntimeException("IOException occurred. ", e);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                                throw new RuntimeException("IOException occurred. ", e3);
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
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
            fileWriter = fileWriter2;
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
            if (fileWriter != null) {
                try {
                    fileWriter.close();
                } catch (IOException e4) {
                    throw new RuntimeException("IOException occurred. ", e4);
                }
            }
            throw th;
        }
    }

    public static boolean writeFile(String str, String str2) {
        return writeFile(str, str2, false);
    }

    public static boolean writeFile(String str, List<String> list) {
        return writeFile(str, list, false);
    }

    public static boolean writeFile(String str, InputStream inputStream) {
        return writeFile(str, inputStream, false);
    }

    public static boolean writeFile(String str, InputStream inputStream, boolean z) {
        return writeFile(str != null ? new File(str) : null, inputStream, z);
    }

    public static boolean writeFile(File file, InputStream inputStream) {
        return writeFile(file, inputStream, false);
    }

    public static boolean writeFile(File file, InputStream inputStream, boolean z) {
        FileOutputStream fileOutputStream;
        if (file == null) {
            return false;
        }
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
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.flush();
                    try {
                        fileOutputStream.close();
                        inputStream.close();
                        return true;
                    } catch (IOException e3) {
                        throw new RuntimeException("IOException occurred. ", e3);
                    }
                }
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

    public static void copyFile(File file, File file2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[2048];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    fileOutputStream.close();
                    return;
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean copyFile(String str, String str2) {
        try {
            return writeFile(str2, new FileInputStream(str));
        } catch (FileNotFoundException e) {
            throw new RuntimeException("FileNotFoundException occurred. ", e);
        }
    }

    public static List<String> readFileToList(String str, String str2) {
        File file = new File(str);
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            if (!file.isFile()) {
                return null;
            }
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), str2));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine != null) {
                            arrayList.add(readLine);
                        } else {
                            bufferedReader2.close();
                            try {
                                bufferedReader2.close();
                                return arrayList;
                            } catch (IOException e) {
                                throw new RuntimeException("IOException occurred. ", e);
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        throw new RuntimeException("IOException occurred. ", e);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                                throw new RuntimeException("IOException occurred. ", e3);
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String getFileName(String str) {
        int lastIndexOf;
        return (StringUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(File.separator)) == -1) ? str : str.substring(lastIndexOf + 1);
    }

    public static String getFolderName(String str) {
        if (StringUtils.isEmpty(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(File.separator);
        return lastIndexOf == -1 ? "" : str.substring(0, lastIndexOf);
    }

    public static String getFileExtension(String str) {
        if (StringUtils.isBlank(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(".");
        return (lastIndexOf != -1 && str.lastIndexOf(File.separator) < lastIndexOf) ? str.substring(lastIndexOf + 1) : "";
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

    public static void deleteFile(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    deleteFile(file2);
                }
                return;
            }
            file.delete();
        }
    }

    public static boolean hasSDCard() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static File sdcard() {
        return Environment.getExternalStorageDirectory();
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

    public static String formateFileSize(Context context, long j) {
        return Formatter.formatFileSize(context, j);
    }

    public static boolean isVideoFile(String str) {
        String lowerCase = str.toLowerCase();
        return lowerCase.endsWith(".mp4") || lowerCase.endsWith(".3gp") || lowerCase.endsWith(".mkv") || lowerCase.endsWith(".avi") || lowerCase.endsWith(".mpeg") || lowerCase.endsWith(".rmvb") || lowerCase.endsWith(".mov");
    }

    public static boolean isTheSameFile(String str, int i) {
        File file = new File(str);
        return file.exists() && file.length() == ((long) i);
    }

    private static void moveFile(File file, File file2) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        fileOutputStream = new FileOutputStream(file2);
                        try {
                            byte[] bArr = new byte[2048];
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read <= 0) {
                                    file.delete();
                                    fileInputStream.close();
                                    fileOutputStream.close();
                                    return;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                        } catch (FileNotFoundException e) {
                            e = e;
                            fileInputStream2 = fileInputStream;
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                        } catch (IOException e2) {
                            e = e2;
                            fileInputStream2 = fileInputStream;
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                    throw th;
                                }
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                    } catch (FileNotFoundException e4) {
                        e = e4;
                        fileOutputStream = null;
                    } catch (IOException e5) {
                        e = e5;
                        fileOutputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = fileInputStream2;
                }
            } catch (FileNotFoundException e6) {
                e = e6;
                fileOutputStream = null;
            } catch (IOException e7) {
                e = e7;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
                fileOutputStream = null;
            }
        } catch (IOException e8) {
            e8.printStackTrace();
        }
    }

    public static String readInputStream(InputStream inputStream) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    inputStream.close();
                    byteArrayOutputStream.close();
                    return new String(byteArrayOutputStream.toByteArray());
                }
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
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    inputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
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
                    if (bufferedInputStream2 != null) {
                        try {
                            bufferedInputStream2.close();
                            throw th;
                        } catch (IOException unused7) {
                            throw th;
                        }
                    }
                    throw th;
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

    public static String readAssets(Context context, String str) throws Exception {
        StringBuffer stringBuffer = new StringBuffer();
        InputStream open = context.getResources().getAssets().open(str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open, "utf8"));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                stringBuffer.append(readLine + "\n");
            } else {
                open.close();
                bufferedReader.close();
                return stringBuffer.toString();
            }
        }
    }

    public static Bitmap getImageFromAssetsFile(Context context, String str) {
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

    public static boolean saveImageFile(Bitmap bitmap, File file) {
        if (bitmap == null || file == null) {
            return false;
        }
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
            return false;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
