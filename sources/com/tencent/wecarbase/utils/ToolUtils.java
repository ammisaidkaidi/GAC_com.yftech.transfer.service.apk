package com.tencent.wecarbase.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import android.view.View;
import com.tencent.taifeedback.upload.sdk.utils.FileUtils;
import com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory;
import java.io.FileOutputStream;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class ToolUtils {
    public static boolean isNetWorkAvailable(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }

    public static ArrayList<String> getIssueIdListFromPref(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        String string = context.getSharedPreferences("issueId_pref", 0).getString("issueIds", null);
        if (string != null) {
            for (String str : string.split(FileUtils.EXT_INTERVAL)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static void setIssueIdList2Pref(Context context, ArrayList<String> arrayList) {
        SharedPreferences.Editor edit = context.getSharedPreferences("issueId_pref", 0).edit();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < arrayList.size(); i++) {
            stringBuffer.append(arrayList.get(i));
            stringBuffer.append(FileUtils.EXT_INTERVAL);
        }
        edit.putString("issueIds", stringBuffer.toString());
        edit.apply();
    }

    public static void mergeBitmap(final Activity activity, final String str, final Bitmap bitmap) {
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.utils.ToolUtils.1
            @Override // java.lang.Runnable
            public void run() {
                View decorView = activity.getWindow().getDecorView();
                decorView.setDrawingCacheEnabled(true);
                decorView.buildDrawingCache();
                Bitmap drawingCache = decorView.getDrawingCache();
                Bitmap createBitmap = Bitmap.createBitmap(drawingCache.getWidth(), drawingCache.getHeight(), drawingCache.getConfig());
                Canvas canvas = new Canvas(createBitmap);
                canvas.drawBitmap(bitmap, new Matrix(), null);
                canvas.drawBitmap(drawingCache, 0.0f, 0.0f, (Paint) null);
                ToolUtils.saveBitmapAsPng(str, createBitmap);
                if (drawingCache != null && !drawingCache.isRecycled()) {
                    drawingCache.recycle();
                }
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                bitmap.recycle();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void saveBitmapAsPng(String str, Bitmap bitmap) {
        try {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(str);
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
            } catch (Exception e) {
                Log.e("ToolUtils", Log.getStackTraceString(e));
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
            }
            bitmap.recycle();
        } catch (Throwable th) {
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
            throw th;
        }
    }

    public static int getPlatformAudioStream() {
        if (Platform.getPlatform() == Platform.YUANTE || Platform.getPlatform() == Platform.CHANGAN_HAOBANGSHOU) {
            return 1;
        }
        return Platform.getPlatform() == Platform.CHANGAN_S311 ? 4 : 3;
    }
}
