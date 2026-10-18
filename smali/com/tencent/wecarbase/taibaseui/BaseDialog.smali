.class public Lcom/tencent/wecarbase/taibaseui/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;,
        Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;,
        Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUTTON_TEXT:Ljava/lang/String; = "\u597d\u7684"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "tai_sdk_base_dialog"

    const-string v1, "style"

    .line 32
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected config(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;ZZLcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p10

    .line 61
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tai_sdk_base_dialog"

    const-string v4, "layout"

    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v3, "tv_message"

    const-string v4, "id"

    .line 62
    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "tv_sub_message"

    const-string v5, "id"

    .line 63
    invoke-static {v4, v5}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "btn_left"

    const-string v6, "id"

    .line 64
    invoke-static {v5, v6}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "btn_right"

    const-string v7, "id"

    .line 65
    invoke-static {v6, v7}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "divider_v"

    const-string v8, "id"

    .line 66
    invoke-static {v7, v8}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, p2

    .line 69
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v8, 0x8

    if-nez v3, :cond_1

    move-object v3, p3

    .line 73
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, p4

    .line 80
    invoke-virtual {v5, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget-object v4, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->SAME:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    if-ne v1, v4, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v9, "tai_sdk_base_dialog_white_btn_text_color"

    const-string v10, "color"

    invoke-static {v9, v10}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v9, "tai_sdk_base_dialog_blue_btn_text_color"

    const-string v10, "color"

    invoke-static {v9, v10}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :goto_1
    new-instance v4, Lcom/tencent/wecarbase/taibaseui/BaseDialog$1;

    move-object/from16 v9, p6

    invoke-direct {v4, p0, v9}, Lcom/tencent/wecarbase/taibaseui/BaseDialog$1;-><init>(Lcom/tencent/wecarbase/taibaseui/BaseDialog;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    move-object v3, p4

    .line 98
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v4, p5

    .line 102
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget-object v9, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->SAME:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    if-ne v1, v9, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v9, "tai_sdk_base_dialog_white_btn_text_color"

    const-string v10, "color"

    invoke-static {v9, v10}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v9, "tai_sdk_base_dialog_grey_btn_text_color"

    const-string v10, "color"

    invoke-static {v9, v10}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    :goto_3
    new-instance v1, Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;

    move-object/from16 v9, p7

    invoke-direct {v1, p0, v9}, Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;-><init>(Lcom/tencent/wecarbase/taibaseui/BaseDialog;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_5
    move-object/from16 v4, p5

    .line 120
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "tai_sdk_base_dialog_blue_btn_text_color"

    const-string v4, "color"

    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "\u597d\u7684"

    .line 126
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    new-instance v1, Lcom/tencent/wecarbase/taibaseui/BaseDialog$3;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog$3;-><init>(Lcom/tencent/wecarbase/taibaseui/BaseDialog;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_6
    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v8, :cond_7

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 137
    :cond_7
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_8
    invoke-virtual {p0, v2}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->setContentView(Landroid/view/View;)V

    move/from16 v1, p8

    .line 141
    invoke-virtual {p0, v1}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->setCanceledOnTouchOutside(Z)V

    move/from16 v1, p9

    .line 142
    invoke-virtual {p0, v1}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->setCancelable(Z)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 49
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/tencent/wecarbase/BaseActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tencent/wecarbase/BaseActivity;

    .line 50
    invoke-virtual {v0}, Lcom/tencent/wecarbase/BaseActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/tencent/wecarbase/BaseActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tencent/wecarbase/BaseActivity;

    .line 40
    invoke-virtual {v0}, Lcom/tencent/wecarbase/BaseActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 43
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method
