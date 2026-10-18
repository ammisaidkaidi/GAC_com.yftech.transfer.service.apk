package com.tencent.wecarspeech.clientsdk.utils;

import android.util.Base64;
import java.util.Formatter;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /home/user/work/dex/classes.dex */
public class AuthUtils {
    private static final String ENCODING = "UTF-8";
    private static final String HMAC_MD5_ALGORITHM = "HmacMD5";
    private static final String HMAC_SHA1_ALGORITHM = "HmacSHA1";

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

    private static int toByte(char c) {
        return (byte) "0123456789ABCDEF".indexOf(c);
    }

    private static String toHexString(byte[] bArr) {
        Formatter formatter = new Formatter();
        Throwable th = null;
        try {
            for (byte b : bArr) {
                formatter.format("%02x", Byte.valueOf(b));
            }
            String formatter2 = formatter.toString();
            formatter.close();
            return formatter2;
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    formatter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
            } else {
                formatter.close();
            }
            throw th2;
        }
    }

    public static String hmacHexString(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(hexStringToByte(str2), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            return toHexString(mac.doFinal(str.getBytes("UTF-8")));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
