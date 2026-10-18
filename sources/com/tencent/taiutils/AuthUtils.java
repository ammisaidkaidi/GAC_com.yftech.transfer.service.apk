package com.tencent.taiutils;

import android.util.Base64;
import java.util.Formatter;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /home/user/work/dex/classes.dex */
public class AuthUtils {
    public static final String ENCODING = "UTF-8";
    public static final String HMAC_MD5_ALGORITHM = "HmacMD5";
    public static final String HMAC_SHA1_ALGORITHM = "HmacSHA1";
    public static final String SIGN_KEY = "";

    public static byte[] base64Decode(String str) {
        return Base64.decode(str, 0);
    }

    public static String base64Encode(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    public static byte[] hexStringToByte(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        char[] charArray = str.toCharArray();
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (toByte(charArray[i2 + 1]) | (toByte(charArray[i2]) << 4));
        }
        return bArr;
    }

    public static String hmacHexString(String str) {
        try {
            return hmacHexString(str, "");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String hmacHexString(String str, String str2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(hexStringToByte(str2), HMAC_SHA1_ALGORITHM);
        Mac mac = Mac.getInstance(HMAC_SHA1_ALGORITHM);
        mac.init(secretKeySpec);
        return toHexString(mac.doFinal(str.getBytes("UTF-8")));
    }

    public static int toByte(char c) {
        return (byte) "0123456789ABCDEF".indexOf(c);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String toHexString(byte[] bArr) {
        Throwable th;
        Formatter formatter = new Formatter();
        try {
            for (byte b : bArr) {
                formatter.format("%02x", Byte.valueOf(b));
            }
            String formatter2 = formatter.toString();
            formatter.close();
            return formatter2;
        } catch (Throwable th2) {
            th = th2;
            try {
                throw th;
            } catch (Throwable th3) {
                th = th3;
                if (th == null) {
                    try {
                        formatter.close();
                    } catch (Throwable th4) {
                        th.addSuppressed(th4);
                    }
                } else {
                    formatter.close();
                }
                throw th;
            }
        }
    }
}
