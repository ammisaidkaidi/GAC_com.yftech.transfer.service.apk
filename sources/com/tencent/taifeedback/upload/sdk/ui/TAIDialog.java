package com.tencent.taifeedback.upload.sdk.ui;

import android.R;
import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.tencent.taifeedback.upload.sdk.TAIFeedbackConfig;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAIDialog extends AlertDialog.Builder {
    private String COLOR_DIALOG_TITLE;
    private int COLOR_INPUT_BG;
    private int COLOR_SECTION_BG;
    private String COLOR_SECTION_SUBTITLE;
    private String COLOR_SECTION_TITLE;
    private int DIALOG_THEME;
    private CheckBox cbScreenShot;
    private Context context;
    private EditText etAccount;
    private EditText etDesc;
    private TextView textCopyRight;
    private ScrollView viewRoot;

    @TargetApi(11)
    public TAIDialog(Context context, int i) {
        super(context, i);
        if (i == 2) {
            this.context = new ContextThemeWrapper(context, R.style.Theme.Holo);
        } else if (i == 3) {
            this.context = new ContextThemeWrapper(context, R.style.Theme.Holo.Light);
        } else {
            this.context = new ContextThemeWrapper(context, R.style.Theme);
        }
        this.DIALOG_THEME = i;
    }

    public TAIDialog(Context context) {
        super(context);
        this.context = context;
    }

    @Override // android.app.AlertDialog.Builder
    public AlertDialog create() {
        setTheme(this.DIALOG_THEME);
        setTitle("反馈");
        this.viewRoot = new ScrollView(this.context);
        if (this.context.getResources().getConfiguration().orientation == 1) {
            this.viewRoot.addView(getContentView(this.context), getDefaultLayoutParams());
        } else {
            this.viewRoot.addView(getContentViewLandscape(this.context), getDefaultLayoutParams());
        }
        setView(this.viewRoot);
        setCancelable(false);
        this.textCopyRight.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.taifeedback.upload.sdk.ui.TAIDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AlertDialog.Builder builder;
                if (Build.VERSION.SDK_INT >= 11) {
                    builder = new AlertDialog.Builder(TAIDialog.this.context, TAIDialog.this.DIALOG_THEME);
                } else {
                    builder = new AlertDialog.Builder(TAIDialog.this.context);
                }
                builder.setView(TAIDialog.this.getCopyRightView(TAIDialog.this.context));
                builder.setCancelable(true);
                TAIDialog.this.setDialogFillH(builder.create()).show();
            }
        });
        return super.create();
    }

    @Override // android.app.AlertDialog.Builder
    public AlertDialog show() {
        return setDialogFillH(super.show());
    }

    @Override // android.app.AlertDialog.Builder
    public AlertDialog.Builder setTitle(CharSequence charSequence) {
        setCustomTitle(getTitleView(this.context, charSequence));
        return super.setTitle(charSequence);
    }

    private void setTheme(int i) {
        if (i == 2) {
            this.COLOR_DIALOG_TITLE = "#33b5e5";
            this.COLOR_SECTION_TITLE = "#cccccc";
            this.COLOR_SECTION_SUBTITLE = "#888888";
            this.COLOR_SECTION_BG = Color.rgb(40, 40, 40);
            this.COLOR_INPUT_BG = Color.rgb(43, 43, 43);
            return;
        }
        if (i == 3) {
            this.COLOR_DIALOG_TITLE = "#33b5e5";
            this.COLOR_SECTION_TITLE = "#444444";
            this.COLOR_SECTION_SUBTITLE = "#888888";
            this.COLOR_SECTION_BG = Color.rgb(243, 243, 243);
            this.COLOR_INPUT_BG = -1;
            return;
        }
        this.COLOR_DIALOG_TITLE = "#33b5e5";
        this.COLOR_SECTION_TITLE = "#444444";
        this.COLOR_SECTION_SUBTITLE = "#888888";
        this.COLOR_SECTION_BG = Color.rgb(243, 243, 243);
        this.COLOR_INPUT_BG = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AlertDialog setDialogFillH(AlertDialog alertDialog) {
        Window window = alertDialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 7;
        window.setAttributes(attributes);
        return alertDialog;
    }

    private View getTitleView(Context context, CharSequence charSequence) {
        TextView textView = new TextView(context);
        textView.setText(Html.fromHtml(getFormatFont(charSequence.toString(), this.COLOR_DIALOG_TITLE, 2)));
        textView.setPadding(30, 20, 0, 20);
        return textView;
    }

    private View getContentView(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams defaultLayoutParams = getDefaultLayoutParams();
        getDefaultLayoutParams().setMargins(10, 15, 0, 15);
        TextView textView = new TextView(context);
        textView.setText(Html.fromHtml(getFormatFont("描述", this.COLOR_SECTION_TITLE, 1)));
        textView.setBackgroundColor(this.COLOR_SECTION_BG);
        textView.setPadding(30, 30, 0, 10);
        linearLayout.addView(textView, defaultLayoutParams);
        this.etDesc = new EditText(context);
        this.etDesc.setHint("请输入你要反馈的内容...");
        this.etDesc.setMinLines(3);
        this.etDesc.setGravity(51);
        this.etDesc.setBackgroundColor(this.COLOR_INPUT_BG);
        linearLayout.addView(this.etDesc, defaultLayoutParams);
        TextView textView2 = new TextView(context);
        textView2.setText(Html.fromHtml(getFormatFont("截图", this.COLOR_SECTION_TITLE, 1)));
        textView2.setBackgroundColor(this.COLOR_SECTION_BG);
        textView2.setPadding(30, 30, 0, 10);
        linearLayout.addView(textView2, defaultLayoutParams);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setBackgroundColor(this.COLOR_INPUT_BG);
        linearLayout2.setPadding(15, 10, 0, 10);
        this.cbScreenShot = new CheckBox(context);
        this.cbScreenShot.setText(getCheckBoxText("屏幕截图", "最新界面的屏幕截图"));
        this.cbScreenShot.setChecked(true);
        linearLayout2.addView(this.cbScreenShot, defaultLayoutParams);
        linearLayout.addView(linearLayout2, defaultLayoutParams);
        if (!TAIFeedbackConfig.getScreenShotEnable(context)) {
            textView2.setVisibility(8);
            linearLayout2.setVisibility(8);
        }
        TextView textView3 = new TextView(context);
        textView3.setText(Html.fromHtml(getFormatFont("QQ号", this.COLOR_SECTION_TITLE, 1)));
        textView3.setBackgroundColor(this.COLOR_SECTION_BG);
        textView3.setPadding(30, 30, 0, 10);
        linearLayout.addView(textView3, defaultLayoutParams);
        this.etAccount = new EditText(context);
        this.etAccount.setHint("请输入你的QQ号...");
        this.etAccount.setSingleLine(true);
        this.etAccount.setGravity(51);
        this.etAccount.setBackgroundColor(this.COLOR_INPUT_BG);
        linearLayout.addView(this.etAccount, defaultLayoutParams);
        linearLayout.addView(getCopyRight(context), defaultLayoutParams);
        return linearLayout;
    }

    private View getContentViewLandscape(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams defaultLayoutParams = getDefaultLayoutParams();
        this.etDesc = new EditText(context);
        this.etDesc.setHint("请输入你要反馈的内容...");
        this.etDesc.setMinLines(2);
        this.etDesc.setGravity(51);
        this.etDesc.setBackgroundColor(this.COLOR_INPUT_BG);
        linearLayout.addView(this.etDesc, defaultLayoutParams);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setBackgroundColor(this.COLOR_SECTION_BG);
        linearLayout2.setPadding(15, 10, 0, 10);
        this.cbScreenShot = new CheckBox(context);
        this.cbScreenShot.setText(getCheckBoxText("屏幕截图", "最新界面的屏幕截图"));
        this.cbScreenShot.setChecked(true);
        linearLayout2.addView(this.cbScreenShot, defaultLayoutParams);
        linearLayout.addView(linearLayout2, defaultLayoutParams);
        if (!TAIFeedbackConfig.getScreenShotEnable(context)) {
            linearLayout2.setVisibility(8);
        }
        this.etAccount = new EditText(context);
        this.etAccount.setHint("请输入你的QQ号码...");
        this.etAccount.setSingleLine(true);
        this.etAccount.setGravity(51);
        this.etAccount.setBackgroundColor(this.COLOR_INPUT_BG);
        linearLayout.addView(this.etAccount, defaultLayoutParams);
        linearLayout.addView(getCopyRight(context), defaultLayoutParams);
        return linearLayout;
    }

    private LinearLayout getCopyRight(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBackgroundColor(this.COLOR_SECTION_BG);
        this.textCopyRight = new TextView(context);
        this.textCopyRight.setText(Html.fromHtml(getFormatFont("&nbsp;*&nbsp;上报问题会耗费少许流量，建议在wifi环境下使用 <br> © 2015  t.bugly.qq.com &nbsp;&nbsp;<a href=\"#\">隐私声明<a>", this.COLOR_SECTION_SUBTITLE, -1)));
        this.textCopyRight.setPadding(30, 20, 0, 20);
        linearLayout.addView(this.textCopyRight);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinearLayout getCopyRightView(Context context) {
        String formatFont = getFormatFont("隐私声明", this.COLOR_SECTION_TITLE, 1);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(15, 20, 15, 20);
        if (Build.VERSION.SDK_INT < 11) {
            linearLayout.setBackgroundColor(this.COLOR_SECTION_BG);
        }
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(1);
        TextView textView = new TextView(context);
        textView.setText(Html.fromHtml(formatFont));
        textView.setPadding(0, 10, 0, 10);
        linearLayout2.addView(textView);
        linearLayout.addView(linearLayout2, getDefaultLayoutParams());
        TextView textView2 = new TextView(context);
        textView2.setText(Html.fromHtml(getFormatFont(FeedBackConstants.TEXT_COPY_RIGHT, this.COLOR_SECTION_SUBTITLE, 0)));
        textView2.setPadding(0, 10, 0, 10);
        linearLayout.addView(textView2, getDefaultLayoutParams());
        return linearLayout;
    }

    private LinearLayout.LayoutParams getDefaultLayoutParams() {
        return new LinearLayout.LayoutParams(-1, -2);
    }

    private Spanned getCheckBoxText(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getFormatFont(str, this.COLOR_SECTION_TITLE, 0));
        stringBuffer.append("<br>");
        stringBuffer.append(getFormatFont(str2, this.COLOR_SECTION_SUBTITLE, -1));
        return Html.fromHtml(stringBuffer.toString());
    }

    private String getFormatFont(String str, String str2, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<font color=\"");
        stringBuffer.append(str2);
        stringBuffer.append("\">");
        switch (i) {
            case -1:
                stringBuffer.append("<small>");
                stringBuffer.append(str);
                stringBuffer.append("</small>");
                break;
            case 0:
                stringBuffer.append(str);
                break;
            case 1:
                stringBuffer.append("<big>");
                stringBuffer.append(str);
                stringBuffer.append("</big>");
                break;
            case 2:
                stringBuffer.append("<big><big>");
                stringBuffer.append(str);
                stringBuffer.append("</big></big>");
                break;
            default:
                stringBuffer.append(str);
                break;
        }
        stringBuffer.append("</font>");
        return stringBuffer.toString();
    }

    public EditText getEtDesc() {
        return this.etDesc;
    }

    public EditText getEtAccount() {
        return this.etAccount;
    }

    public CheckBox getCbScreenShot() {
        return this.cbScreenShot;
    }
}
