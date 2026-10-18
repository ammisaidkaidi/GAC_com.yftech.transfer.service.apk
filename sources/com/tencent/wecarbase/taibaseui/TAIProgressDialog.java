package com.tencent.wecarbase.taibaseui;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.wecarbase.utils.AppResourcesUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAIProgressDialog extends BaseDialog {
    private ImageView loadingImageView;
    private Animation mCircleAnim;
    private TextView tvMsg;

    public TAIProgressDialog(Context context) {
        super(context);
        init();
    }

    private void init() {
        View inflate = View.inflate(getContext(), AppResourcesUtils.getSdkId("tai_sdk_base_progress_dialog", "layout"), null);
        this.loadingImageView = (ImageView) inflate.findViewById(AppResourcesUtils.getSdkId("loading_iv", "id"));
        this.tvMsg = (TextView) inflate.findViewById(AppResourcesUtils.getSdkId("msg_tv", "id"));
        setContentView(inflate);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    public void show(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.tvMsg.setText(str);
        show();
    }

    @Override // com.tencent.wecarbase.taibaseui.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        if (this.mCircleAnim == null) {
            this.mCircleAnim = AnimationUtils.loadAnimation(this.mContext, AppResourcesUtils.getSdkId("wbsdk_anim_round_rotate", "anim"));
        }
        this.loadingImageView.startAnimation(this.mCircleAnim);
    }

    @Override // com.tencent.wecarbase.taibaseui.BaseDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.loadingImageView.clearAnimation();
    }
}
