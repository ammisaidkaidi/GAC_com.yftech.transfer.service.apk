package com.tencent.wecarbase.common.tools.network.http;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

/* loaded from: /home/user/work/dex/classes.dex */
public class HttpResult {
    private static final String TAG = "HttpResult";
    private HttpResponse response = null;

    public void setResponse(HttpResponse httpResponse) {
        this.response = httpResponse;
    }

    public HttpResponse getResponse() {
        return this.response;
    }

    public boolean isSucceeded() {
        if (this.response == null) {
            return false;
        }
        return getStatusCode() == 200 || getStatusCode() == 206;
    }

    public int getStatusCode() {
        if (this.response == null) {
            return -1;
        }
        return this.response.getStatusLine().getStatusCode();
    }

    public Header[] getAllHeaders() {
        if (this.response == null) {
            return null;
        }
        return this.response.getAllHeaders();
    }

    public String getHeader(String str) {
        Header firstHeader;
        if (this.response == null || (firstHeader = this.response.getFirstHeader(str)) == null) {
            return null;
        }
        return firstHeader.getValue();
    }

    public HttpEntity getEntity() {
        if (this.response == null) {
            return null;
        }
        HttpEntity entity = this.response.getEntity();
        try {
            Log.d(TAG, "entity is ziped: " + EntityUtil.isGziped(entity));
        } catch (IOException e) {
            Log.e(TAG, Log.getStackTraceString(e));
        } catch (IllegalStateException e2) {
            Log.e(TAG, Log.getStackTraceString(e2));
        }
        return entity;
    }

    public long getContentLength() {
        if (isSucceeded()) {
            return this.response.getEntity().getContentLength();
        }
        return 0L;
    }

    public void comsumeContent() {
        if (this.response == null) {
            return;
        }
        try {
            HttpEntity entity = getEntity();
            if (entity != null) {
                entity.consumeContent();
            }
        } catch (Exception e) {
            Log.e(TAG, Log.getStackTraceString(e));
        }
    }

    public String getStringBody(String str) {
        if (!isSucceeded()) {
            return null;
        }
        try {
            return EntityUtil.toString(getEntity(), str);
        } catch (IOException e) {
            Log.e(TAG, Log.getStackTraceString(e));
            return null;
        }
    }

    public String getStringBody() {
        return getStringBody("UTF-8");
    }

    public InputStream getStreamBody() {
        InputStream inputStream = null;
        if (!isSucceeded()) {
            return null;
        }
        try {
            HttpEntity entity = getEntity();
            if (EntityUtil.isGziped(entity)) {
                Log.d(TAG, "stream is ziped");
                inputStream = new GZIPInputStream(entity.getContent());
            } else {
                inputStream = entity.getContent();
            }
        } catch (IOException e) {
            Log.e(TAG, Log.getStackTraceString(e));
        }
        return inputStream;
    }
}
