package com.tencent.taifeedback.upload.sdk.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.internal.view.SupportMenu;
import android.util.DisplayMetrics;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.IntBuffer;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: /home/user/work/dex/classes.dex */
public class GLSurfaceUtils {
    private static String TAG = "GLSurfaceUtils";
    private static GLSurfaceUtils glSurfaceUtils;
    private Context context;
    private boolean isScreenShot = false;
    private int retryCount = 0;

    public static GLSurfaceUtils getInstance() {
        if (glSurfaceUtils == null) {
            glSurfaceUtils = new GLSurfaceUtils();
        }
        return glSurfaceUtils;
    }

    public void destroy() {
        glSurfaceUtils = null;
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public void setScreenShot(boolean z) {
        this.isScreenShot = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.tencent.taifeedback.upload.sdk.utils.GLSurfaceUtils] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String takeScreenShot(GL10 gl10) {
        Throwable th;
        FileOutputStream fileOutputStream;
        Exception e;
        IOException e2;
        FileNotFoundException e3;
        if (!this.isScreenShot) {
            return null;
        }
        this.isScreenShot = false;
        if (this.context == null) {
            return null;
        }
        String storePicFile = FileUtils.getInstance().getStorePicFile(this.context);
        DisplayMetrics displayMetrics = DeviceHelper.getDisplayMetrics(this.context);
        Bitmap bitmapFromGL = getBitmapFromGL(displayMetrics.widthPixels, displayMetrics.heightPixels, gl10);
        ?? r4 = 20000;
        if (sizeOf(bitmapFromGL) < 20000) {
            int i = this.retryCount;
            this.retryCount = i + 1;
            if (i >= 5) {
                return null;
            }
            this.isScreenShot = true;
            return null;
        }
        try {
            try {
                fileOutputStream = new FileOutputStream(new File(storePicFile));
                try {
                    bitmapFromGL.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    try {
                        fileOutputStream.close();
                        bitmapFromGL.recycle();
                        r4 = fileOutputStream;
                    } catch (IOException e4) {
                        e = e4;
                        Utils.getInstance().log(TAG, e);
                        this.retryCount = 0;
                        return storePicFile;
                    } catch (Exception e5) {
                        e = e5;
                        Utils.getInstance().log(TAG, e);
                        this.retryCount = 0;
                        return storePicFile;
                    }
                } catch (FileNotFoundException e6) {
                    e3 = e6;
                    Utils.getInstance().log(TAG, e3);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e7) {
                            e = e7;
                            Utils.getInstance().log(TAG, e);
                            this.retryCount = 0;
                            return storePicFile;
                        } catch (Exception e8) {
                            e = e8;
                            Utils.getInstance().log(TAG, e);
                            this.retryCount = 0;
                            return storePicFile;
                        }
                    }
                    bitmapFromGL.recycle();
                    r4 = fileOutputStream;
                    this.retryCount = 0;
                    return storePicFile;
                } catch (IOException e9) {
                    e2 = e9;
                    Utils.getInstance().log(TAG, e2);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e10) {
                            e = e10;
                            Utils.getInstance().log(TAG, e);
                            this.retryCount = 0;
                            return storePicFile;
                        } catch (Exception e11) {
                            e = e11;
                            Utils.getInstance().log(TAG, e);
                            this.retryCount = 0;
                            return storePicFile;
                        }
                    }
                    bitmapFromGL.recycle();
                    r4 = fileOutputStream;
                    this.retryCount = 0;
                    return storePicFile;
                } catch (Exception e12) {
                    e = e12;
                    Utils.getInstance().log(TAG, e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e13) {
                            e = e13;
                            Utils.getInstance().log(TAG, e);
                            this.retryCount = 0;
                            return storePicFile;
                        } catch (Exception e14) {
                            e = e14;
                            Utils.getInstance().log(TAG, e);
                            this.retryCount = 0;
                            return storePicFile;
                        }
                    }
                    bitmapFromGL.recycle();
                    r4 = fileOutputStream;
                    this.retryCount = 0;
                    return storePicFile;
                }
            } catch (Throwable th2) {
                th = th2;
                if (r4 != 0) {
                    try {
                        r4.close();
                    } catch (IOException e15) {
                        Utils.getInstance().log(TAG, e15);
                        this.retryCount = 0;
                        throw th;
                    } catch (Exception e16) {
                        Utils.getInstance().log(TAG, e16);
                        this.retryCount = 0;
                        throw th;
                    }
                }
                bitmapFromGL.recycle();
                this.retryCount = 0;
                throw th;
            }
        } catch (FileNotFoundException e17) {
            fileOutputStream = null;
            e3 = e17;
        } catch (IOException e18) {
            fileOutputStream = null;
            e2 = e18;
        } catch (Exception e19) {
            fileOutputStream = null;
            e = e19;
        } catch (Throwable th3) {
            r4 = 0;
            th = th3;
            if (r4 != 0) {
            }
            bitmapFromGL.recycle();
            this.retryCount = 0;
            throw th;
        }
        this.retryCount = 0;
        return storePicFile;
    }

    private Bitmap getBitmapFromGL(int i, int i2, GL10 gl10) {
        int i3 = i * i2;
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        IntBuffer wrap = IntBuffer.wrap(iArr);
        wrap.position(0);
        gl10.glReadPixels(0, 0, i, i2, 6408, 5121, wrap);
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            for (int i6 = 0; i6 < i; i6++) {
                int i7 = iArr[(i4 * i) + i6];
                iArr2[(((i2 - i5) - 1) * i) + i6] = (i7 & (-16711936)) | ((i7 << 16) & SupportMenu.CATEGORY_MASK) | ((i7 >> 16) & 255);
            }
            i4++;
            i5++;
        }
        return Bitmap.createBitmap(iArr2, i, i2, Bitmap.Config.ARGB_8888);
    }

    private int sizeOf(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT < 12) {
            return bitmap.getRowBytes() * bitmap.getHeight();
        }
        return bitmap.getByteCount();
    }
}
