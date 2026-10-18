package com.tencent.wecarbase.utils;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;

/* loaded from: /home/user/work/dex/classes.dex */
public class SSLUtils {
    private static final String TAG = "SSLUtils";

    public static SSLSocketFactory getSSLSocketFactory(InputStream inputStream) throws SecurityException {
        try {
            try {
                Certificate generateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(inputStream);
                LogUtils.d(TAG, "ca=" + ((X509Certificate) generateCertificate).getSubjectDN());
                inputStream.close();
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null, null);
                keyStore.setCertificateEntry("ca", generateCertificate);
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                SSLContext sSLContext = SSLContext.getInstance("TLSv1.2");
                sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
                return sSLContext.getSocketFactory();
            } catch (Throwable th) {
                inputStream.close();
                throw th;
            }
        } catch (IOException | KeyManagementException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            throw new SecurityException(e);
        }
    }
}
