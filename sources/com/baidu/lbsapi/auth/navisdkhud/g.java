package com.baidu.lbsapi.auth.navisdkhud;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: /home/user/work/dex/classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private Context f33a;
    private String b = null;
    private HashMap c = null;
    private String d = null;

    public g(Context context) {
        this.f33a = context;
    }

    private String a(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                String extraInfo = activeNetworkInfo.getExtraInfo();
                return extraInfo != null ? (extraInfo.trim().toLowerCase().equals("cmwap") || extraInfo.trim().toLowerCase().equals("uniwap") || extraInfo.trim().toLowerCase().equals("3gwap") || extraInfo.trim().toLowerCase().equals("ctwap")) ? extraInfo.trim().toLowerCase().equals("ctwap") ? "ctwap" : "cmwap" : "wifi" : "wifi";
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0167 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fc A[Catch: IOException -> 0x0100, TRY_ENTER, TRY_LEAVE, TryCatch #15 {IOException -> 0x0100, blocks: (B:49:0x00fc, B:43:0x0140, B:25:0x0162), top: B:8:0x0029 }] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(HttpsURLConnection httpsURLConnection) {
        OutputStream outputStream;
        InputStream inputStream;
        a.a("httpsPost start,url:" + this.b);
        if (this.c == null) {
            this.d = ErrorMessage.a("httpsPost request paramters is null.");
            return;
        }
        int i = -1;
        boolean z = false;
        ?? r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        try {
            try {
                try {
                    outputStream = httpsURLConnection.getOutputStream();
                    try {
                        try {
                            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                            bufferedWriter.write(b(this.c));
                            a.a(b(this.c));
                            bufferedWriter.flush();
                            bufferedWriter.close();
                            httpsURLConnection.connect();
                            try {
                                inputStream = httpsURLConnection.getInputStream();
                                try {
                                    try {
                                        int responseCode = httpsURLConnection.getResponseCode();
                                        if (200 == responseCode) {
                                            try {
                                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                                                try {
                                                    StringBuffer stringBuffer = new StringBuffer();
                                                    while (true) {
                                                        int read = bufferedReader.read();
                                                        if (read == -1) {
                                                            break;
                                                        } else {
                                                            stringBuffer.append((char) read);
                                                        }
                                                    }
                                                    this.d = stringBuffer.toString();
                                                    r4 = bufferedReader;
                                                } catch (IOException e) {
                                                    e = e;
                                                    i = responseCode;
                                                    r4 = bufferedReader;
                                                    a.a("httpsPost parse failed;" + e.getMessage());
                                                    this.d = ErrorMessage.a("httpsPost failed,Exception:" + e.getMessage());
                                                    if (inputStream != null && r4 != 0) {
                                                        r4.close();
                                                        inputStream.close();
                                                    }
                                                    if (httpsURLConnection != null) {
                                                        httpsURLConnection.disconnect();
                                                    }
                                                    if (outputStream != null) {
                                                    }
                                                    if (z) {
                                                    }
                                                    if (this.d != null) {
                                                    }
                                                } catch (Throwable th) {
                                                    th = th;
                                                    r4 = bufferedReader;
                                                    if (inputStream != null && r4 != 0) {
                                                        r4.close();
                                                        inputStream.close();
                                                    }
                                                    if (httpsURLConnection != null) {
                                                        httpsURLConnection.disconnect();
                                                    }
                                                    throw th;
                                                }
                                            } catch (IOException e2) {
                                                e = e2;
                                                i = responseCode;
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        }
                                        if (inputStream != null && r4 != 0) {
                                            try {
                                                r4.close();
                                                inputStream.close();
                                            } catch (MalformedURLException e3) {
                                                e = e3;
                                                r4 = outputStream;
                                                i = responseCode;
                                                this.d = ErrorMessage.a("httpsPost failed,Exception:" + e.getMessage());
                                                if (r4 != 0) {
                                                    r4.close();
                                                    r4 = r4;
                                                }
                                                if (z) {
                                                }
                                                if (this.d != null) {
                                                }
                                            } catch (IOException e4) {
                                                e = e4;
                                                r4 = outputStream;
                                                i = responseCode;
                                                this.d = ErrorMessage.a("httpsPost failed,Exception:" + e.getMessage());
                                                if (r4 != 0) {
                                                    r4.close();
                                                    r4 = r4;
                                                }
                                                if (z) {
                                                }
                                                if (this.d != null) {
                                                }
                                            }
                                        }
                                        if (httpsURLConnection != null) {
                                            httpsURLConnection.disconnect();
                                        }
                                        z = true;
                                        i = responseCode;
                                    } catch (IOException e5) {
                                        e = e5;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (IOException e6) {
                                e = e6;
                                inputStream = null;
                            } catch (Throwable th4) {
                                th = th4;
                                inputStream = null;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (IOException e7) {
                                    e7.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (MalformedURLException e8) {
                        e = e8;
                        r4 = outputStream;
                    } catch (IOException e9) {
                        e = e9;
                        r4 = outputStream;
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            } catch (MalformedURLException e11) {
                e = e11;
            } catch (IOException e12) {
                e = e12;
            }
            if (outputStream != null) {
                outputStream.close();
                r4 = r4;
            }
            if (z || 200 == i) {
                if (this.d != null) {
                    a.a("httpsPost failed,mResult is null");
                    this.d = ErrorMessage.a("httpsPost failed,internal error");
                    return;
                } else {
                    a.a("httpsPost success end,parse result = " + this.d);
                    return;
                }
            }
            a.a("httpsPost failed,statusCode:" + i);
            this.d = ErrorMessage.a("httpsPost failed,statusCode:" + i);
        } catch (Throwable th6) {
            th = th6;
            outputStream = r4;
        }
    }

    private static String b(HashMap hashMap) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z) {
                z = false;
            } else {
                sb.append("&");
            }
            sb.append(URLEncoder.encode((String) entry.getKey(), "UTF-8"));
            sb.append("=");
            sb.append(URLEncoder.encode((String) entry.getValue(), "UTF-8"));
        }
        return sb.toString();
    }

    private HttpsURLConnection b() {
        String str;
        try {
            URL url = new URL(this.b);
            String a2 = a(this.f33a);
            if (a2 != null && !a2.equals("")) {
                a.a("checkNetwork = " + a2);
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) (a2.equals("cmwap") ? url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.172", 80))) : a2.equals("ctwap") ? url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80))) : url.openConnection());
                httpsURLConnection.setDoInput(true);
                httpsURLConnection.setDoOutput(true);
                httpsURLConnection.setRequestMethod("POST");
                httpsURLConnection.setConnectTimeout(50000);
                httpsURLConnection.setReadTimeout(50000);
                return httpsURLConnection;
            }
            a.b("Current network is not available.");
            this.d = ErrorMessage.a("Current network is not available.");
            return null;
        } catch (MalformedURLException e) {
            a.a(e.getMessage());
            str = "Auth server could not be parsed as a URL.";
            this.d = ErrorMessage.a(str);
            return null;
        } catch (Exception e2) {
            a.a(e2.getMessage());
            str = "Init httpsurlconnection failed.";
            this.d = ErrorMessage.a(str);
            return null;
        }
    }

    private HashMap c(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        Iterator it = hashMap.keySet().iterator();
        while (it.hasNext()) {
            String str = ((String) it.next()).toString();
            hashMap2.put(str, hashMap.get(str));
        }
        return hashMap2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(HashMap hashMap) {
        this.c = c(hashMap);
        this.b = (String) this.c.get("url");
        HttpsURLConnection b = b();
        if (b == null) {
            a.b("syncConnect failed,httpsURLConnection is null");
        } else {
            a(b);
        }
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a() {
        NetworkInfo activeNetworkInfo;
        a.a("checkNetwork start");
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f33a.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                if (activeNetworkInfo.isAvailable()) {
                    a.a("checkNetwork end");
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
