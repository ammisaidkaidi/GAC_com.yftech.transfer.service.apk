package com.tencent.wecarbase.common.tools.network.http;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.util.EntityUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class EntityUtil {
    private static final String TAG = "EntityUtil";

    public static String toString(HttpEntity httpEntity) throws ParseException, IOException {
        if (httpEntity == null) {
            return null;
        }
        if (isGziped(httpEntity)) {
            return gzipToString(httpEntity);
        }
        return EntityUtils.toString(httpEntity, "UTF-8");
    }

    public static String toString(HttpEntity httpEntity, String str) throws ParseException, IOException {
        if (httpEntity == null) {
            return null;
        }
        if (isGziped(httpEntity)) {
            return gzipToString(httpEntity);
        }
        return EntityUtils.toString(httpEntity, str);
    }

    public static String gzipToString(HttpEntity httpEntity) throws IllegalStateException, IOException {
        InputStreamReader inputStreamReader;
        if (httpEntity == null) {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
        GZIPInputStream gZIPInputStream = new GZIPInputStream(httpEntity.getContent());
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[1024];
        BufferedReader bufferedReader = null;
        try {
            inputStreamReader = new InputStreamReader(gZIPInputStream, "UTF-8");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                while (true) {
                    try {
                        int read = bufferedReader2.read(cArr);
                        if (read != -1) {
                            stringWriter.write(cArr, 0, read);
                        } else {
                            try {
                                break;
                            } catch (IOException e) {
                                Log.e(TAG, Log.getStackTraceString(e));
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (inputStreamReader != null) {
                            try {
                                inputStreamReader.close();
                            } catch (IOException e2) {
                                Log.e(TAG, Log.getStackTraceString(e2));
                            }
                        }
                        try {
                            gZIPInputStream.close();
                        } catch (IOException e3) {
                            Log.e(TAG, Log.getStackTraceString(e3));
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                                throw th;
                            } catch (IOException e4) {
                                Log.e(TAG, Log.getStackTraceString(e4));
                                throw th;
                            }
                        }
                        throw th;
                    }
                }
                inputStreamReader.close();
                try {
                    gZIPInputStream.close();
                } catch (IOException e5) {
                    Log.e(TAG, Log.getStackTraceString(e5));
                }
                try {
                    bufferedReader2.close();
                } catch (IOException e6) {
                    Log.e(TAG, Log.getStackTraceString(e6));
                }
                return stringWriter.toString();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
    }

    public static boolean isGziped(HttpEntity httpEntity) throws IllegalStateException, IOException {
        Header contentEncoding;
        String value;
        return (httpEntity == null || (contentEncoding = httpEntity.getContentEncoding()) == null || (value = contentEncoding.getValue()) == null || !value.contains("gzip")) ? false : true;
    }
}
