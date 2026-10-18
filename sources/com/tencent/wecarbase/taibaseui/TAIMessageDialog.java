package com.tencent.wecarbase.taibaseui;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.wecarbase.utils.AppResourcesUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAIMessageDialog extends Dialog {
    private static OnDialogCreateListener sOnDialogCreateListener;
    private Context mContext;
    private View mFirstBtnLayout;
    private TextView mFirstBtnTv;
    private View mMessageLayout;
    private TextView mMessageTv;
    private OnClickBtnListener mOnClickBtnListener;
    private View.OnClickListener mOnClickListener;
    private View mSecondBtnLayout;
    private TextView mSecondBtnTv;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnClickBtnListener {
        void onClickFirstBtn(View view);

        void onClickSecondBtn(View view);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDialogCreateListener {
        void onDialogCreate(Dialog dialog);
    }

    public TAIMessageDialog(Context context) {
        super(context, AppResourcesUtils.getSdkId("WECAR_Dialog", "style"));
        this.mOnClickListener = new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.TAIMessageDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TAIMessageDialog.this.mOnClickBtnListener != null) {
                    if (view.getId() == AppResourcesUtils.getSdkId("btn_one_layout", "id")) {
                        TAIMessageDialog.this.mOnClickBtnListener.onClickFirstBtn(view);
                    } else {
                        TAIMessageDialog.this.mOnClickBtnListener.onClickSecondBtn(view);
                    }
                }
                TAIMessageDialog.this.dismiss();
            }
        };
        this.mContext = context;
    }

    public static TAIMessageDialog createOneBtnDialog(Context context) {
        TAIMessageDialog tAIMessageDialog = new TAIMessageDialog(context);
        View inflate = LayoutInflater.from(context).inflate(AppResourcesUtils.getSdkId("tai_sdk_one_btn_message_dialog", "layout"), (ViewGroup) null, false);
        tAIMessageDialog.setContentView(inflate);
        tAIMessageDialog.initViewsForOneBtnDialog(inflate);
        tAIMessageDialog.setCancelable(false);
        tAIMessageDialog.setCanceledOnTouchOutside(false);
        if (sOnDialogCreateListener != null) {
            sOnDialogCreateListener.onDialogCreate(tAIMessageDialog);
        }
        return tAIMessageDialog;
    }

    public static TAIMessageDialog createSecondBtnDialog(Context context) {
        TAIMessageDialog tAIMessageDialog = new TAIMessageDialog(context);
        View inflate = LayoutInflater.from(context).inflate(AppResourcesUtils.getSdkId("tai_sdk_second_btn_message_dialog", "layout"), (ViewGroup) null, false);
        tAIMessageDialog.setContentView(inflate);
        tAIMessageDialog.initViewsForSecondBtnDialog(inflate);
        tAIMessageDialog.setCancelable(false);
        tAIMessageDialog.setCanceledOnTouchOutside(false);
        if (sOnDialogCreateListener != null) {
            sOnDialogCreateListener.onDialogCreate(tAIMessageDialog);
        }
        return tAIMessageDialog;
    }

    private void initViewsForOneBtnDialog(View view) {
        this.mMessageLayout = view.findViewById(AppResourcesUtils.getSdkId("message_layout", "id"));
        this.mMessageTv = (TextView) view.findViewById(AppResourcesUtils.getSdkId("message", "id"));
        this.mFirstBtnLayout = view.findViewById(AppResourcesUtils.getSdkId("btn_one_layout", "id"));
        this.mFirstBtnTv = (TextView) view.findViewById(AppResourcesUtils.getSdkId("btn_one_tv", "id"));
        setBackgroud(this.mMessageLayout, AppResourcesUtils.getSdkId("tai_sdk_bg_dialog_up", AppResourcesUtils.RS_DRAWABLE));
        setTextColor(this.mMessageTv, AppResourcesUtils.getSdkId("tai_sdk_common_text_main_color", AppResourcesUtils.RS_COLOR));
        setBackgroud(this.mFirstBtnLayout, AppResourcesUtils.getSdkId("tai_sdk_bg_dialog_first_btn_selector_2", AppResourcesUtils.RS_DRAWABLE));
        setTextColor(this.mFirstBtnTv, AppResourcesUtils.getSdkId("tai_sdk_common_text_main_color", AppResourcesUtils.RS_COLOR));
        this.mFirstBtnLayout.setOnClickListener(this.mOnClickListener);
        setFirstBtnText(AppResourcesUtils.getSdkId("tai_sdk_ok", AppResourcesUtils.RS_STRING));
    }

    private void setBackgroud(View view, int i) {
        if (view == null) {
            return;
        }
        if (Build.VERSION.SDK_INT > 16) {
            view.setBackground(this.mContext.getResources().getDrawable(i));
        } else {
            view.setBackgroundDrawable(this.mContext.getResources().getDrawable(i));
        }
    }

    private void setTextColor(TextView textView, int i) {
        if (textView == null) {
            return;
        }
        textView.setTextColor(this.mContext.getResources().getColor(i));
    }

    private void initViewsForSecondBtnDialog(View view) {
        this.mMessageLayout = view.findViewById(AppResourcesUtils.getSdkId("message_layout", "id"));
        this.mMessageTv = (TextView) view.findViewById(AppResourcesUtils.getSdkId("message", "id"));
        this.mFirstBtnLayout = view.findViewById(AppResourcesUtils.getSdkId("btn_one_layout", "id"));
        this.mFirstBtnTv = (TextView) view.findViewById(AppResourcesUtils.getSdkId("btn_one_tv", "id"));
        this.mSecondBtnLayout = view.findViewById(AppResourcesUtils.getSdkId("btn_second_layout", "id"));
        this.mSecondBtnTv = (TextView) view.findViewById(AppResourcesUtils.getSdkId("btn_second_tv", "id"));
        setBackgroud(this.mMessageLayout, AppResourcesUtils.getSdkId("tai_sdk_bg_dialog_up", AppResourcesUtils.RS_DRAWABLE));
        setTextColor(this.mMessageTv, AppResourcesUtils.getSdkId("tai_sdk_common_text_main_color", AppResourcesUtils.RS_COLOR));
        setBackgroud(this.mFirstBtnLayout, AppResourcesUtils.getSdkId("tai_sdk_bg_dialog_first_btn_selector_2", AppResourcesUtils.RS_DRAWABLE));
        setTextColor(this.mFirstBtnTv, AppResourcesUtils.getSdkId("tai_sdk_common_text_main_color", AppResourcesUtils.RS_COLOR));
        setBackgroud(this.mSecondBtnLayout, AppResourcesUtils.getSdkId("tai_sdk_bg_dialog_second_btn_selector", AppResourcesUtils.RS_DRAWABLE));
        setTextColor(this.mSecondBtnTv, AppResourcesUtils.getSdkId("tai_sdk_common_text_main_color", AppResourcesUtils.RS_COLOR));
        this.mFirstBtnLayout.setOnClickListener(this.mOnClickListener);
        this.mSecondBtnLayout.setOnClickListener(this.mOnClickListener);
        setFirstBtnText(AppResourcesUtils.getSdkId("tai_sdk_cancel", AppResourcesUtils.RS_STRING));
        setSecondBtnText(AppResourcesUtils.getSdkId("tai_sdk_ok", AppResourcesUtils.RS_STRING));
    }

    public TAIMessageDialog setMessage(String str) {
        this.mMessageTv.setText(str);
        return this;
    }

    public TAIMessageDialog setMessage(int i) {
        return setMessage(this.mContext.getResources().getString(i));
    }

    public TAIMessageDialog setFirstBtnText(String str) {
        this.mFirstBtnTv.setText(str);
        return this;
    }

    public TAIMessageDialog setFirstBtnText(int i) {
        return setFirstBtnText(this.mContext.getResources().getString(i));
    }

    public TAIMessageDialog setSecondBtnText(String str) {
        this.mSecondBtnTv.setText(str);
        return this;
    }

    public void focusFirstBtn() {
        this.mFirstBtnLayout.setSelected(true);
        this.mSecondBtnLayout.setSelected(false);
    }

    public void focusSeconBtn() {
        this.mFirstBtnLayout.setSelected(false);
        this.mSecondBtnLayout.setSelected(true);
    }

    public void clickFirstBtn() {
        this.mFirstBtnLayout.callOnClick();
    }

    public void clickSecondBtn() {
        this.mSecondBtnLayout.callOnClick();
    }

    public TAIMessageDialog setSecondBtnText(int i) {
        return setSecondBtnText(this.mContext.getResources().getString(i));
    }

    public void setOnClickBtnListener(OnClickBtnListener onClickBtnListener) {
        this.mOnClickBtnListener = onClickBtnListener;
    }

    public static void setOnDialogCreateListener(OnDialogCreateListener onDialogCreateListener) {
        sOnDialogCreateListener = onDialogCreateListener;
    }
}
