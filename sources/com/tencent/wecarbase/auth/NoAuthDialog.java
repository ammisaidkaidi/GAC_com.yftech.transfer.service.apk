package com.tencent.wecarbase.auth;

import android.os.Build;
import android.view.View;
import android.view.Window;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.taibaseui.TAIMessageDialog;

/* loaded from: /home/user/work/dex/classes.dex */
public class NoAuthDialog {
    private static final String TAG = "NoAuthDialog";
    private static volatile NoAuthDialog sInstance = new NoAuthDialog();
    private TAIMessageDialog dialog;

    private NoAuthDialog() {
    }

    public static NoAuthDialog getInstance() {
        return sInstance;
    }

    public void show(final View.OnClickListener onClickListener) {
        if (this.dialog == null) {
            this.dialog = TAIMessageDialog.createOneBtnDialog(ContextHolder.getContext());
        }
        if (this.dialog.isShowing()) {
            return;
        }
        this.dialog.setMessage("当前车辆未经授权，无法使用该应用").setFirstBtnText("退出应用");
        this.dialog.setOnClickBtnListener(new TAIMessageDialog.OnClickBtnListener() { // from class: com.tencent.wecarbase.auth.NoAuthDialog.1
            @Override // com.tencent.wecarbase.taibaseui.TAIMessageDialog.OnClickBtnListener
            public void onClickSecondBtn(View view) {
            }

            @Override // com.tencent.wecarbase.taibaseui.TAIMessageDialog.OnClickBtnListener
            public void onClickFirstBtn(View view) {
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
            }
        });
        Window window = this.dialog.getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 26) {
                window.setType(2038);
            } else {
                window.setType(2003);
            }
            this.dialog.show();
        }
    }
}
