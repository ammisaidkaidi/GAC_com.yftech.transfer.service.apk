package com.tencent.wecarbase.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.Log;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class QRCodeUtil {
    private static final String TAG = "QRCodeUtil";

    public static boolean generateQrCode(String str, int i, int i2, Bitmap bitmap, String str2) {
        try {
            LogUtils.d(TAG, "generateQrCode: " + str);
            if (str != null && !"".equals(str)) {
                HashMap hashMap = new HashMap();
                hashMap.put(EncodeHintType.CHARACTER_SET, "utf-8");
                hashMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
                hashMap.put(EncodeHintType.MARGIN, 1);
                BitMatrix encode = new QRCodeWriter().encode(str, BarcodeFormat.QR_CODE, i, i2, hashMap);
                int[] iArr = new int[i * i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    for (int i4 = 0; i4 < i; i4++) {
                        if (encode.get(i4, i3)) {
                            iArr[(i3 * i) + i4] = -16777216;
                        } else {
                            iArr[(i3 * i) + i4] = -1;
                        }
                    }
                }
                Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                createBitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
                if (bitmap != null) {
                    createBitmap = addLogo(createBitmap, bitmap);
                }
                if (createBitmap != null) {
                    if (createBitmap.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(str2))) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (WriterException | IOException | OutOfMemoryError e) {
            LogUtils.e(TAG, "enerateQrCode生成二维码异常 Exception:" + Log.getStackTraceString(e));
            return false;
        }
    }

    private static Bitmap createRoundConerImage(Bitmap bitmap, int i) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        float f = i;
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight()), f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    private static Bitmap addLogo(Bitmap bitmap, Bitmap bitmap2) {
        if (bitmap == null) {
            return null;
        }
        if (bitmap2 == null) {
            return bitmap;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int width2 = bitmap2.getWidth();
        int height2 = bitmap2.getHeight();
        if (width == 0 || height == 0) {
            return null;
        }
        if (width2 == 0 || height2 == 0) {
            return bitmap;
        }
        float f = ((width * 1.0f) / 4.0f) / width2;
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        try {
            Canvas canvas = new Canvas(createBitmap);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            canvas.scale(f, f, width / 2, height / 2);
            canvas.drawBitmap(bitmap2, (width - width2) / 2, (height - height2) / 2, (Paint) null);
            canvas.save();
            canvas.restore();
            return createBitmap;
        } catch (Exception e) {
            e.getStackTrace();
            LogUtils.d(TAG, "addLogo二维码添加logo异常 : " + e.getMessage());
            return null;
        }
    }
}
