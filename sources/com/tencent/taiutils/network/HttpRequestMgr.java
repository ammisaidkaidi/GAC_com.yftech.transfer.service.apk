package com.tencent.taiutils.network;

import a.a.a.a.a;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.taiutils.log.LogUtils;
import com.tencent.wecarbase.wecarnavi.ExternalDefaultBroadcastKey;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.security.KeyStore;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class HttpRequestMgr {
    public static final String TAG = "HttpRequestMgr";
    public static volatile HttpRequestMgr mInstance;
    public static OkHttpClient mOkHttpClient;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface DownloadListener {
        void onDownloadFailed(Exception exc);

        void onDownloadSuccess(File file);

        void onDownloading(int i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface DownloadRangeListener {
        void onDownloadFailed(String str, Exception exc);

        void onDownloadSuccess(String str, RandomAccessFile randomAccessFile);

        void onDownloading(String str, long j);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ICallback<T> {
        void onFailure(int i, String str);

        void onResponse(int i, T t);
    }

    public HttpRequestMgr() {
        OkHttpClient.Builder okHttpClientBuilder = getOkHttpClientBuilder();
        okHttpClientBuilder.connectTimeout(10L, TimeUnit.SECONDS);
        okHttpClientBuilder.readTimeout(15L, TimeUnit.SECONDS);
        mOkHttpClient = okHttpClientBuilder.build();
    }

    private HttpUrl buildUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return HttpUrl.parse(str);
    }

    private <T> void enqueue(HttpRequest<T> httpRequest, final ICallback<T> iCallback) {
        Request.Builder okHttpRequestBuilder = httpRequest.getOkHttpRequestBuilder();
        final HttpResponseConverter<T> responseConverter = httpRequest.getResponseConverter();
        mOkHttpClient.newCall(okHttpRequestBuilder.build()).enqueue(new Callback() { // from class: com.tencent.taiutils.network.HttpRequestMgr.1
            public void onFailure(Call call, IOException iOException) {
                ICallback iCallback2 = iCallback;
                if (iCallback2 != null) {
                    iCallback2.onFailure(-1, iOException.getMessage());
                }
            }

            public void onResponse(Call call, Response response) {
                Object obj;
                try {
                    obj = responseConverter.convert(response);
                } catch (Exception e) {
                    LogUtils.e(HttpRequestMgr.TAG, "onResponse", e);
                    obj = null;
                }
                ICallback iCallback2 = iCallback;
                if (iCallback2 != null) {
                    iCallback2.onResponse(response.code(), obj);
                }
            }
        });
    }

    public static HttpRequestMgr getInstance() {
        if (mInstance == null) {
            synchronized (HttpRequestMgr.class) {
                if (mInstance == null) {
                    mInstance = new HttpRequestMgr();
                }
            }
        }
        return mInstance;
    }

    private OkHttpClient.Builder getOkHttpClientBuilder() {
        final X509TrustManager x509TrustManager;
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            int length = trustManagers.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    x509TrustManager = null;
                    break;
                }
                TrustManager trustManager = trustManagers[i];
                if (trustManager instanceof X509TrustManager) {
                    x509TrustManager = (X509TrustManager) trustManager;
                    break;
                }
                i++;
            }
            X509TrustManager x509TrustManager2 = new X509TrustManager() { // from class: com.tencent.taiutils.network.HttpRequestMgr.2
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                    x509TrustManager.checkClientTrusted(x509CertificateArr, str);
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                    for (X509Certificate x509Certificate : x509CertificateArr) {
                        try {
                            x509Certificate.checkValidity();
                        } catch (CertificateExpiredException e) {
                            String str2 = HttpRequestMgr.TAG;
                            StringBuilder a2 = a.a("checkServerTrusted: CertificateExpiredException:");
                            a2.append(e.getLocalizedMessage());
                            LogUtils.e(str2, a2.toString());
                            return;
                        } catch (CertificateNotYetValidException e2) {
                            String str3 = HttpRequestMgr.TAG;
                            StringBuilder a3 = a.a("checkServerTrusted: CertificateNotYetValidException:");
                            a3.append(e2.getLocalizedMessage());
                            LogUtils.e(str3, a3.toString());
                            return;
                        }
                    }
                    x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return x509TrustManager.getAcceptedIssuers();
                }
            };
            SSLContext sSLContext = SSLContext.getInstance("TLSv1.2");
            sSLContext.init(null, new TrustManager[]{x509TrustManager2}, null);
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.sslSocketFactory(sSLContext.getSocketFactory(), x509TrustManager2);
            return builder;
        } catch (Exception unused) {
            LogUtils.d(TAG, "create OkHttpClientBuilder failed, create a default one instead");
            return new OkHttpClient.Builder();
        }
    }

    public void download(String str, final String str2, final String str3, final DownloadListener downloadListener) {
        LogUtils.d(TAG, "download  url = " + str);
        HttpUrl buildUrl = buildUrl(str);
        if (buildUrl != null) {
            mOkHttpClient.newCall(new Request.Builder().url(buildUrl).build()).enqueue(new Callback() { // from class: com.tencent.taiutils.network.HttpRequestMgr.3
                public void onFailure(Call call, IOException iOException) {
                    LogUtils.e(HttpRequestMgr.TAG, "download  onFailure ", iOException);
                    DownloadListener downloadListener2 = downloadListener;
                    if (downloadListener2 != null) {
                        downloadListener2.onDownloadFailed(iOException);
                    }
                }

                public void onResponse(Call call, Response response) {
                    InputStream inputStream;
                    String str4 = HttpRequestMgr.TAG;
                    StringBuilder a2 = a.a("download  onResponse thread = ");
                    a2.append(Thread.currentThread().getName());
                    LogUtils.d(str4, a2.toString());
                    byte[] bArr = new byte[2048];
                    File file = new File(str2);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    File file2 = new File(file, str3);
                    FileOutputStream fileOutputStream = null;
                    try {
                        try {
                            inputStream = response.body().byteStream();
                            try {
                                try {
                                    long contentLength = response.body().contentLength();
                                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                                    long j = 0;
                                    while (true) {
                                        try {
                                            int read = inputStream.read(bArr);
                                            if (read == -1) {
                                                fileOutputStream2.flush();
                                                downloadListener.onDownloadSuccess(file2);
                                                inputStream.close();
                                                fileOutputStream2.close();
                                                return;
                                            }
                                            fileOutputStream2.write(bArr, 0, read);
                                            j += read;
                                            downloadListener.onDownloading((int) (((((float) j) * 1.0f) / ((float) contentLength)) * 100.0f));
                                        } catch (Exception e) {
                                            e = e;
                                            fileOutputStream = fileOutputStream2;
                                            downloadListener.onDownloadFailed(e);
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                                return;
                                            }
                                            return;
                                        } catch (Throwable th) {
                                            th = th;
                                            fileOutputStream = fileOutputStream2;
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (IOException unused) {
                                                    throw th;
                                                }
                                            }
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            throw th;
                                        }
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (IOException unused2) {
                        }
                    } catch (Exception e3) {
                        e = e3;
                        inputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = null;
                    }
                }
            });
        } else if (downloadListener != null) {
            downloadListener.onDownloadFailed(new Exception("invalid url"));
        }
    }

    public void downloadRange(String str, final int i, final String str2, final String str3, final DownloadRangeListener downloadRangeListener) {
        Log.d(TAG, "download  url = " + str);
        HttpUrl buildUrl = buildUrl(str);
        if (buildUrl == null) {
            if (downloadRangeListener != null) {
                downloadRangeListener.onDownloadFailed(str3, new Exception("invalid url"));
                return;
            }
            return;
        }
        mOkHttpClient.newCall(new Request.Builder().url(buildUrl).header(ExternalDefaultBroadcastKey.KEY.SEARCH_RANGE, "bytes=" + i + "-").build()).enqueue(new Callback() { // from class: com.tencent.taiutils.network.HttpRequestMgr.4
            public void onFailure(Call call, IOException iOException) {
                Log.e(HttpRequestMgr.TAG, "download  onFailure ", iOException);
                DownloadRangeListener downloadRangeListener2 = downloadRangeListener;
                if (downloadRangeListener2 != null) {
                    downloadRangeListener2.onDownloadFailed(str3, iOException);
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:58:0x00e8 A[Catch: IOException -> 0x00eb, TRY_LEAVE, TryCatch #7 {IOException -> 0x00eb, blocks: (B:63:0x00e3, B:58:0x00e8), top: B:62:0x00e3 }] */
            /* JADX WARN: Removed duplicated region for block: B:62:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onResponse(Call call, Response response) {
                BufferedInputStream bufferedInputStream;
                InputStream inputStream;
                ResponseBody body;
                RandomAccessFile randomAccessFile;
                String str4 = HttpRequestMgr.TAG;
                StringBuilder a2 = a.a("download  onResponse thread = ");
                a2.append(Thread.currentThread().getName());
                Log.d(str4, a2.toString());
                byte[] bArr = new byte[2048];
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                InputStream inputStream2 = null;
                try {
                    try {
                        body = response.body();
                    } catch (IOException unused) {
                        return;
                    }
                } catch (Exception e) {
                    e = e;
                    bufferedInputStream = null;
                    inputStream = null;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = null;
                    if (inputStream2 != null) {
                    }
                    if (bufferedInputStream != null) {
                    }
                    throw th;
                }
                if (body == null) {
                    if (downloadRangeListener != null) {
                        downloadRangeListener.onDownloadFailed(str3, new Exception("response null"));
                        return;
                    }
                    return;
                }
                inputStream = body.byteStream();
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(file);
                    sb.append("/");
                    sb.append(str3);
                    randomAccessFile = new RandomAccessFile(sb.toString(), "rwd");
                } catch (Exception e2) {
                    e = e2;
                    bufferedInputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = null;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                    }
                    if (bufferedInputStream != null) {
                    }
                    throw th;
                }
                if (response.body().contentLength() == 0) {
                    downloadRangeListener.onDownloading(str3, i);
                    downloadRangeListener.onDownloadSuccess(str3, randomAccessFile);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                            return;
                        } catch (IOException unused2) {
                            return;
                        }
                    }
                    return;
                }
                bufferedInputStream = new BufferedInputStream(inputStream);
                try {
                    try {
                        randomAccessFile.seek(i);
                        long j = i;
                        while (true) {
                            int read = bufferedInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            randomAccessFile.write(bArr, 0, read);
                            j += read;
                            downloadRangeListener.onDownloading(str3, j);
                        }
                        downloadRangeListener.onDownloadSuccess(str3, randomAccessFile);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (Exception e3) {
                        e = e3;
                        downloadRangeListener.onDownloadFailed(str3, e);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (bufferedInputStream == null) {
                            return;
                        }
                        bufferedInputStream.close();
                    }
                    bufferedInputStream.close();
                } catch (Throwable th3) {
                    th = th3;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException unused3) {
                            throw th;
                        }
                    }
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    throw th;
                }
            }
        });
    }

    public void get(String str, Map<String, String> map, Map<String, String> map2, ICallback<String> iCallback) {
        HttpUrl buildUrl = buildUrl(str);
        if (buildUrl == null) {
            if (iCallback != null) {
                iCallback.onFailure(-1, "url is invalid");
                return;
            }
            return;
        }
        Request.Builder builder = new Request.Builder();
        HttpUrl.Builder newBuilder = buildUrl.newBuilder();
        if (map2 != null && map2.size() > 0) {
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                newBuilder.addQueryParameter(entry.getKey(), entry.getValue());
            }
        }
        builder.url(newBuilder.build());
        builder.get();
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                builder.header(entry2.getKey(), entry2.getValue());
            }
        }
        HttpRequest httpRequest = new HttpRequest();
        httpRequest.setOkHttpRequestBuilder(builder);
        httpRequest.setResponseConverter(HttpResponseConverter.STRING);
        enqueue(httpRequest, iCallback);
    }

    public void post(String str, Map<String, String> map, String str2, ICallback<String> iCallback) {
        if (buildUrl(str) == null) {
            if (iCallback != null) {
                iCallback.onFailure(-1, "url is invalid");
                return;
            }
            return;
        }
        RequestBody create = RequestBody.create(MediaType.parse("application/json"), str2);
        Request.Builder builder = new Request.Builder();
        builder.url(str);
        builder.post(create);
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                builder.header(entry.getKey(), entry.getValue());
            }
        }
        HttpRequest httpRequest = new HttpRequest();
        httpRequest.setOkHttpRequestBuilder(builder);
        httpRequest.setResponseConverter(HttpResponseConverter.STRING);
        enqueue(httpRequest, iCallback);
    }

    public void post(String str, Map<String, String> map, JSONObject jSONObject, ICallback<String> iCallback) {
        HttpUrl buildUrl = buildUrl(str);
        if (buildUrl == null) {
            if (iCallback != null) {
                iCallback.onFailure(-1, "url is invalid");
                return;
            }
            return;
        }
        RequestBody create = RequestBody.create(MediaType.parse("application/json"), jSONObject.toString());
        Request.Builder builder = new Request.Builder();
        builder.url(buildUrl);
        builder.post(create);
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                builder.header(entry.getKey(), entry.getValue());
            }
        }
        HttpRequest httpRequest = new HttpRequest();
        httpRequest.setOkHttpRequestBuilder(builder);
        httpRequest.setResponseConverter(HttpResponseConverter.STRING);
        enqueue(httpRequest, iCallback);
    }
}
