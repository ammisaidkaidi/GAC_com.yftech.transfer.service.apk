package com.tencent.wecarbase.taibaseui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.tencent.wecarbase.BaseActivity;
import com.tencent.wecarbase.utils.AppResourcesUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseDialog extends Dialog {
    public static final String DEFAULT_BUTTON_TEXT = "好的";
    protected Context mContext;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BtnType {
        SAME,
        DIFF
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnClickDialogButton {
        void onClickButton(Dialog dialog);
    }

    public BaseDialog(Context context) {
        super(context, AppResourcesUtils.getSdkId("tai_sdk_base_dialog", "style"));
        this.mContext = context;
    }

    @Override // android.app.Dialog
    public void show() {
        if (this.mContext != null) {
            if ((this.mContext instanceof Activity) && ((Activity) this.mContext).isFinishing()) {
                return;
            }
            if (((this.mContext instanceof BaseActivity) && ((BaseActivity) this.mContext).isActivityDestroyed()) || isShowing()) {
                return;
            }
            super.show();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.mContext != null) {
            if ((this.mContext instanceof Activity) && ((Activity) this.mContext).isFinishing()) {
                return;
            }
            if (!((this.mContext instanceof BaseActivity) && ((BaseActivity) this.mContext).isActivityDestroyed()) && isShowing()) {
                super.dismiss();
            }
        }
    }

    protected void config(Activity activity, String str, String str2, String str3, String str4, final OnClickDialogButton onClickDialogButton, final OnClickDialogButton onClickDialogButton2, boolean z, boolean z2, BtnType btnType) {
        View inflate = View.inflate(getContext(), AppResourcesUtils.getSdkId("tai_sdk_base_dialog", "layout"), null);
        TextView textView = (TextView) inflate.findViewById(AppResourcesUtils.getSdkId("tv_message", "id"));
        TextView textView2 = (TextView) inflate.findViewById(AppResourcesUtils.getSdkId("tv_sub_message", "id"));
        TextView textView3 = (TextView) inflate.findViewById(AppResourcesUtils.getSdkId("btn_left", "id"));
        TextView textView4 = (TextView) inflate.findViewById(AppResourcesUtils.getSdkId("btn_right", "id"));
        View findViewById = inflate.findViewById(AppResourcesUtils.getSdkId("divider_v", "id"));
        if (!TextUtils.isEmpty(str)) {
            textView.setText(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            textView2.setText(str2);
        } else {
            textView2.setVisibility(8);
        }
        if (!TextUtils.isEmpty(str3)) {
            textView3.setText(str3);
            if (btnType == BtnType.SAME) {
                textView3.setTextColor(getContext().getResources().getColor(AppResourcesUtils.getSdkId("tai_sdk_base_dialog_white_btn_text_color", AppResourcesUtils.RS_COLOR)));
            } else {
                textView3.setTextColor(getContext().getResources().getColor(AppResourcesUtils.getSdkId("tai_sdk_base_dialog_blue_btn_text_color", AppResourcesUtils.RS_COLOR)));
            }
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.BaseDialog.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (onClickDialogButton != null) {
                        onClickDialogButton.onClickButton(BaseDialog.this);
                    }
                    if (BaseDialog.this.isShowing()) {
                        BaseDialog.this.dismiss();
                    }
                }
            });
        } else {
            textView3.setVisibility(8);
        }
        if (!TextUtils.isEmpty(str4)) {
            textView4.setText(str4);
            if (btnType == BtnType.SAME) {
                textView4.setTextColor(getContext().getResources().getColor(AppResourcesUtils.getSdkId("tai_sdk_base_dialog_white_btn_text_color", AppResourcesUtils.RS_COLOR)));
            } else {
                textView4.setTextColor(getContext().getResources().getColor(AppResourcesUtils.getSdkId("tai_sdk_base_dialog_grey_btn_text_color", AppResourcesUtils.RS_COLOR)));
            }
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.BaseDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (onClickDialogButton2 != null) {
                        onClickDialogButton2.onClickButton(BaseDialog.this);
                    }
                    if (BaseDialog.this.isShowing()) {
                        BaseDialog.this.dismiss();
                    }
                }
            });
        } else {
            textView4.setVisibility(8);
        }
        if (TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4)) {
            textView3.setTextColor(getContext().getResources().getColor(AppResourcesUtils.getSdkId("tai_sdk_base_dialog_blue_btn_text_color", AppResourcesUtils.RS_COLOR)));
            textView3.setText(DEFAULT_BUTTON_TEXT);
            textView3.setVisibility(0);
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.BaseDialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseDialog.this.dismiss();
                }
            });
        }
        if (textView3.getVisibility() == 8 || textView4.getVisibility() == 8) {
            findViewById.setVisibility(8);
        }
        setContentView(inflate);
        setCanceledOnTouchOutside(z);
        setCancelable(z2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Builder {
        protected Activity activity;
        protected OnClickDialogButton leftListener;
        protected String leftStr;
        protected String msg;
        protected OnClickDialogButton rightListener;
        protected String rightStr;
        protected String subMsg;
        protected boolean canceledOnTouchOutside = false;
        protected boolean cancelable = false;
        protected BtnType type = BtnType.DIFF;

        public Builder(Activity activity) {
            this.activity = activity;
        }

        public Builder msg(String str) {
            this.msg = str;
            return this;
        }

        public Builder subMsg(String str) {
            this.subMsg = str;
            return this;
        }

        public Builder leftBtn(String str, OnClickDialogButton onClickDialogButton) {
            this.leftStr = str;
            this.leftListener = onClickDialogButton;
            return this;
        }

        public Builder rightBtn(String str, OnClickDialogButton onClickDialogButton) {
            this.rightStr = str;
            this.rightListener = onClickDialogButton;
            return this;
        }

        public Builder canceledOnTouchOutside(boolean z) {
            this.canceledOnTouchOutside = z;
            return this;
        }

        public Builder cancelable(boolean z) {
            this.cancelable = z;
            return this;
        }

        public Builder type(BtnType btnType) {
            this.type = btnType;
            return this;
        }

        protected BaseDialog createDialog(Activity activity) {
            return new BaseDialog(activity);
        }

        public Dialog build() {
            BaseDialog createDialog = createDialog(this.activity);
            createDialog.config(this.activity, this.msg, this.subMsg, this.leftStr, this.rightStr, this.leftListener, this.rightListener, this.canceledOnTouchOutside, this.cancelable, this.type);
            return createDialog;
        }
    }
}
