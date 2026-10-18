package com.tencent.wecarbase.utils;

import com.yftech.transfer.service.CarAppList;

/* loaded from: /home/user/work/dex/classes.dex */
public class ByteUtil {
    public static int byteToInt(byte b) {
        return b & 255;
    }

    public static int bytesToInt(byte[] bArr, int i) {
        if (bArr.length - i < 4) {
            throw new RuntimeException();
        }
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static byte[] intToBytes(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static long bytesToLong(byte[] bArr, int i) {
        if (bArr.length - i < 8) {
            throw new RuntimeException();
        }
        return (bArr[i + 7] & 255) | ((bArr[i + 6] & 255) << 8) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16);
    }

    public static byte[] longToBytes(long j) {
        byte[] bArr = new byte[8];
        for (int i = 7; i >= 0; i--) {
            bArr[i] = (byte) (255 & j);
            j >>= 8;
        }
        return bArr;
    }

    public static String toHexString(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 < i + i2; i3++) {
            String hexString = Integer.toHexString(bArr[i3] & 255);
            if (hexString.length() == 1) {
                stringBuffer.append(CarAppList.MediaPage.PAGE_FM);
                stringBuffer.append(hexString);
            } else {
                stringBuffer.append(hexString);
            }
        }
        return stringBuffer.toString();
    }
}
