package com.tencent.wecarbase.common.tools.network.http;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

/* loaded from: /home/user/work/dex/classes.dex */
public class HttpRequest {
    private static final String DEFAULT_PARAMS_ENCODING = "UTF-8";
    private static final String TAG = "HttpRequest";
    private static final HashMap<String, Integer> sPkgNameMap = new HashMap<>();
    private int method;
    private String url;
    private HashMap<String, String> headers = new HashMap<>();
    private HashMap<String, String> params = new HashMap<>();

    protected String getParamsEncoding() {
        return "UTF-8";
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public final class Method {
        public static final int DELETE = 3;
        public static final int GET = 0;
        public static final int HEAD = 4;
        public static final int OPTIONS = 5;
        public static final int PATCH = 7;
        public static final int POST = 1;
        public static final int PUT = 2;
        public static final int TRACE = 6;

        public Method() {
        }
    }

    public static HttpRequest createGetRequest(String str) {
        return new HttpRequest(0, str);
    }

    public static HttpRequest createPostRequest(String str) {
        return new HttpRequest(1, str);
    }

    public HttpRequest(int i, String str) {
        this.url = null;
        this.method = -1;
        this.url = str;
        this.method = i;
    }

    public int getMethod() {
        return this.method;
    }

    public HttpRequest setHeader(String str, String str2) {
        this.headers.put(str, str2);
        return this;
    }

    public HttpRequest setHeaders(Header... headerArr) {
        for (Header header : headerArr) {
            this.headers.put(header.getName(), header.getValue());
        }
        return this;
    }

    public HashMap<String, String> getHeaders() {
        return this.headers;
    }

    public HttpRequest appendParam(String str, String str2) {
        this.params.put(str, str2);
        return this;
    }

    public HttpRequest appendParam(NameValuePair... nameValuePairArr) {
        for (NameValuePair nameValuePair : nameValuePairArr) {
            this.params.put(nameValuePair.getName(), nameValuePair.getValue());
        }
        return this;
    }

    public byte[] getBody() {
        try {
            return getParamsString().getBytes(getParamsEncoding());
        } catch (UnsupportedEncodingException unused) {
            return getParamsString().getBytes();
        }
    }

    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=" + getParamsEncoding();
    }

    public HttpResult execute() {
        try {
            return execute2();
        } catch (Exception e) {
            Log.e(TAG, "execute failed:", e);
            return null;
        }
    }

    public HttpResult execute2() throws IOException {
        String str = this.url;
        try {
            this.url = createNewUrl(this.url);
            Log.d(TAG, "execute2 : : : url : : : " + this.url);
            return HttpExecutor.execute(this);
        } catch (Exception e) {
            String message = e.getMessage();
            if (!TextUtils.isEmpty(message) && (message.contains("CertPathValidatorException") || message.contains("SSLHandshakeException"))) {
                sPkgNameMap.put(str, 0);
                this.url = createNewUrl(str);
                Log.d(TAG, "execute2  CertException retry: : : url : : : " + this.url);
                return HttpExecutor.execute(this);
            }
            throw e;
        }
    }

    private String createNewUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Uri parse = Uri.parse(str);
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.scheme((sPkgNameMap.containsKey(str) ? sPkgNameMap.get(str).intValue() : 1) == 0 ? "http" : "https").authority(parse.getAuthority());
        return buildUpon.toString();
    }

    private String getParamsString() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : this.params.entrySet()) {
            arrayList.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
        }
        return URLEncodedUtils.format(arrayList, "UTF-8");
    }

    public String getUrl() {
        String paramsString = getParamsString();
        if (!this.url.endsWith("?") && paramsString != null && paramsString.length() > 0) {
            this.url += "?";
        }
        return this.url + paramsString;
    }
}
