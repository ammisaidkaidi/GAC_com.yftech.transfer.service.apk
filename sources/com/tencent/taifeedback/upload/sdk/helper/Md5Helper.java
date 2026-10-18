package com.tencent.taifeedback.upload.sdk.helper;

import android.text.TextUtils;
import android.util.Log;
import com.yftech.transfer.service.CarAppList;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: /home/user/work/dex/classes.dex */
public class Md5Helper {
    private static String MD5_KEY = "yrn$!k!&9y2$6yhlftn##4fcqf*+kwe==lw!@ncu!_c(w-!4*j";
    private static String MD5_V = "10086";
    private static final String TAG = "Md5Helper";

    public static void setMd5Key(String str) {
        MD5_KEY = str;
    }

    public static void setMd5V(String str) {
        MD5_V = str;
    }

    public static String getMd5(String str) {
        if (str == null || str.trim().equals("")) {
            return null;
        }
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b : digest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append(CarAppList.MediaPage.PAGE_FM);
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Huh, UTF-8 should be supported?", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Huh, MD5 should be supported?", e2);
        }
    }

    public static boolean checkMD5(String str, File file) {
        if (TextUtils.isEmpty(str) || file == null) {
            Log.e(TAG, "MD5 string empty or updateFile null");
            return false;
        }
        String calculateMD5 = calculateMD5(file);
        if (calculateMD5 == null) {
            Log.e(TAG, "calculatedDigest null");
            return false;
        }
        Log.v(TAG, "Calculated digest: " + calculateMD5);
        Log.v(TAG, "Provided digest: " + str);
        return calculateMD5.equalsIgnoreCase(str);
    }

    public static String calculateMD5(File file) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[8192];
                while (true) {
                    try {
                        try {
                            int read = fileInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            messageDigest.update(bArr, 0, read);
                        } catch (IOException e) {
                            throw new RuntimeException("Unable to process file for MD5", e);
                        }
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e2) {
                            Log.e(TAG, "Exception on closing MD5 input stream" + e2.toString());
                        }
                        throw th;
                    }
                }
                String replace = String.format("%32s", new BigInteger(1, messageDigest.digest()).toString(16)).replace(' ', '0');
                try {
                    fileInputStream.close();
                } catch (IOException e3) {
                    Log.e(TAG, "Exception on closing MD5 input stream" + e3.toString());
                }
                return replace;
            } catch (FileNotFoundException e4) {
                Log.e(TAG, "Exception while getting FileInputStream" + e4.toString());
                return null;
            }
        } catch (NoSuchAlgorithmException e5) {
            Log.e(TAG, "Exception while getting digest" + e5.toString());
            return null;
        }
    }
}
