package com.tencent.wecarflow.contentsdk.utils;

import android.util.Base64;
import com.baidu.android.common.security.RSAUtil;
import java.io.ByteArrayOutputStream;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* loaded from: /home/user/work/dex/classes.dex */
public class RSAEncrypt {
    private static final int MAX_DECRYPT_BLOCK = 128;
    private static final int MAX_ENCRYPT_BLOCK = 117;
    private static final String PRIVATE_KEY = "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAJs218ub7kYV7jiw/rki/TGJtpXJvlko3NTNYnfA1C+Y5rdqXHML1UfdTSvTFgtTZDR6D0wjf9VLDCs9514ZtqUjfNq1REdHQEjZDW80fIuqvmjZx46V3H8XO5F1Hw9PxLVfWz/HB2prI5GAIBLAlU3NM5C5e+jFE5o71i+G3+RxAgMBAAECgYAPZFHkBBON6bDU+GBaNakMF47+raHtr4quo6tnGr0v9yax+58tXXgKB10WwnkGKH/gYFZSA5cyrJ2JUDs4bq5Y60meM+VE0n8lUe1pYWK035Wy3mzpeD1oszf8RAWxNZ9jqZ9a37+17cx9C8Z+HUB833QqDewNyGXT3fYzOxxrwQJBAP3Ev0j29APIXzLVg1EIUvMK3zIeDYvq8I2L9k1YmgODPjCNGqfESA2BlLZXP+dtXpkC6bxbRdH32a7zg5PsAOkCQQCclD4G+H0lI4uKxhH8vUfzRuFfgc1pUCzxQaXKYbAObZx8PyMmA7BFMbDVJav6z7HBuCLeei7jDWdMovgoYVJJAkBGQ427RDV4PqitSJUdgLKG/QGjvNJ/ZUPJzXEbJWcvhc1YYBl7TkutAa4NdscI6y2ALGBPeO4yHvA1EtPhxzzRAkARTMvBp2jkVpYPYi0QmLU/auBx1fylGyesDE3OG5cBMRkuHSe8BoJOUtwv4Laswo/oUHkBzcwqaAu2yvbSN1aJAkBTX03mMHQYYR33hDmX2vZ9X+za+rExmQsEj4WX1u6bvToTUnIMbIaDgN1KerCX7u8z4q2trSHScD4ywXtPOctL";
    private static final String PUBLIC_KEY = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCbNtfLm+5GFe44sP65Iv0xibaVyb5ZKNzUzWJ3wNQvmOa3alxzC9VH3U0r0xYLU2Q0eg9MI3/VSwwrPedeGbalI3zatURHR0BI2Q1vNHyLqr5o2ceOldx/FzuRdR8PT8S1X1s/xwdqayORgCASwJVNzTOQuXvoxROaO9Yvht/kcQIDAQAB";

    private RSAEncrypt() {
    }

    public static void genKeyPair() throws NoSuchAlgorithmException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(RSAUtil.ALGORITHM_RSA);
        keyPairGenerator.initialize(1024, new SecureRandom());
        KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
        RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) generateKeyPair.getPrivate();
        new String(Base64.encode(((RSAPublicKey) generateKeyPair.getPublic()).getEncoded(), 0));
        new String(Base64.encode(rSAPrivateKey.getEncoded(), 0));
    }

    public static String encrypt(String str) throws Exception {
        byte[] doFinal;
        RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance(RSAUtil.ALGORITHM_RSA).generatePublic(new X509EncodedKeySpec(Base64.decode(PUBLIC_KEY, 0)));
        Cipher cipher = Cipher.getInstance(RSAUtil.ALGORITHM_RSA);
        cipher.init(1, rSAPublicKey);
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = length - i;
            if (i3 > 0) {
                if (i3 > 117) {
                    doFinal = cipher.doFinal(bytes, i, 117);
                } else {
                    doFinal = cipher.doFinal(bytes, i, i3);
                }
                byteArrayOutputStream.write(doFinal);
                i2++;
                i = i2 * 117;
            } else {
                byteArrayOutputStream.close();
                return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            }
        }
    }
}
