package com.tencent.wecar.tts.client.net;

import android.util.Log;
import com.tencent.wecar.tts.larklite.utils.ContextHolder;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: /home/user/work/dex/classes.dex */
public class HttpConnectionUtil {
    private static final String TAG = "HttpConnectionUtil";

    public static File downloadFile(String str, String str2, DownLoadModlelCallBack downLoadModlelCallBack) {
        int contentLength;
        long j;
        File file;
        File file2 = null;
        try {
            try {
                Log.d(TAG, "responeseCode =  " + getConnection(str).getResponseCode());
                contentLength = getConnection(str).getContentLength();
                String file3 = getConnection(str).getURL().getFile();
                String substring = file3.substring(file3.lastIndexOf(File.separatorChar) + 1);
                Log.d(TAG, "file name =  " + substring + ", file Length " + contentLength);
                j = contentLength;
                downLoadModlelCallBack.onStart(0L, j, 0.0f);
                String str3 = ContextHolder.getContext().getFilesDir() + str2 + File.separatorChar + substring;
                if (str3.indexOf("?") != -1) {
                    str3 = str3.substring(0, str3.indexOf("?"));
                }
                Log.d(TAG, "path =  " + str3);
                file = new File(str3);
            } catch (Throwable unused) {
                return null;
            }
        } catch (MalformedURLException e) {
            e = e;
        } catch (IOException e2) {
            e = e2;
        }
        try {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(getConnection(str).getInputStream());
            byte[] bArr = new byte[1024];
            int i = 0;
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read != -1) {
                    int i2 = i + read;
                    fileOutputStream.write(bArr, 0, read);
                    float f = (i2 * 100) / contentLength;
                    Log.d(TAG, "downloadFile:下载了------->   " + f);
                    downLoadModlelCallBack.onProgress((long) i2, j, f);
                    i = i2;
                } else {
                    bufferedInputStream.close();
                    fileOutputStream.close();
                    downLoadModlelCallBack.onFinish(file);
                    return file;
                }
            }
        } catch (MalformedURLException e3) {
            e = e3;
            file2 = file;
            e.printStackTrace();
            downLoadModlelCallBack.onError(e.toString());
            return file2;
        } catch (IOException e4) {
            e = e4;
            file2 = file;
            e.printStackTrace();
            downLoadModlelCallBack.onError(e.toString());
            return file2;
        } catch (Throwable unused2) {
            return file;
        }
    }

    public static HttpURLConnection getConnection(String str) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        httpURLConnection.connect();
        return httpURLConnection;
    }
}
