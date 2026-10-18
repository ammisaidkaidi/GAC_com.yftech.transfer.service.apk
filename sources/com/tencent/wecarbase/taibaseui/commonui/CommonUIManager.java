package com.tencent.wecarbase.taibaseui.commonui;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class CommonUIManager {
    public static final String POPWINDOW_PUSH = "popwindow_push";
    public static final String TOAST_PUSH = "toast_push";
    public static final String UI_OP_TYPE_DISMISS = "dismiss";
    public static final String UI_OP_TYPE_DO_ACTION = "doAction";
    public static final String UI_OP_TYPE_SHOW = "show";
    private static CommonUIManager sInstance;
    private final String TAG = getClass().getSimpleName();

    public static CommonUIManager getInstance() {
        if (sInstance == null) {
            synchronized (CommonUIManager.class) {
                if (sInstance == null) {
                    sInstance = new CommonUIManager();
                }
            }
        }
        return sInstance;
    }

    public void showPopupWindow(Context context, JSONObject jSONObject, ICommonUIViewListener iCommonUIViewListener) {
        checkMain();
    }

    public void showPopupWindow(ICommonUIHelper iCommonUIHelper, Context context, View view, JSONObject jSONObject, ICommonUIViewListener iCommonUIViewListener) {
        checkMain();
        if (iCommonUIHelper != null) {
            iCommonUIHelper.bindData(view, jSONObject, iCommonUIViewListener);
            iCommonUIHelper.showLayout(view);
        }
    }

    public void showToast(Context context, JSONObject jSONObject, int i) {
        showToast((ICommonUIHelper) null, context, (View) null, jSONObject, i);
    }

    public void showToast(ICommonUIHelper iCommonUIHelper, Context context, int i, JSONObject jSONObject, int i2) {
        showToast(iCommonUIHelper, context, LayoutInflater.from(context).inflate(i, (ViewGroup) null), jSONObject, i2);
    }

    public void showToast(ICommonUIHelper iCommonUIHelper, Context context, View view, JSONObject jSONObject, int i) {
        checkMain();
        Toast toast = null;
        try {
            if (view != null) {
                Toast toast2 = new Toast(context);
                toast2.setView(view);
                toast2.setDuration(i);
                iCommonUIHelper.bindData(view, jSONObject, null);
                toast = toast2;
            } else {
                String string = jSONObject.getString("text");
                if (!TextUtils.isEmpty(string)) {
                    toast = Toast.makeText(context, string, i);
                }
            }
            if (toast != null) {
                toast.show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void checkMain() {
        if (isMain()) {
            return;
        }
        throw new IllegalStateException(this.TAG + " : Method call should happen from the main thread.");
    }

    private boolean isMain() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
