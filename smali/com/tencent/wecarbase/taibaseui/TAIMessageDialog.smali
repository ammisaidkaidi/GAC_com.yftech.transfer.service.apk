.class public Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
.super Landroid/app/Dialog;
.source "TAIMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;,
        Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;
    }
.end annotation


# static fields
.field private static sOnDialogCreateListener:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstBtnLayout:Landroid/view/View;

.field private mFirstBtnTv:Landroid/widget/TextView;

.field private mMessageLayout:Landroid/view/View;

.field private mMessageTv:Landroid/widget/TextView;

.field private mOnClickBtnListener:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSecondBtnLayout:Landroid/view/View;

.field private mSecondBtnTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "WECAR_Dialog"

    const-string v1, "style"

    .line 29
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 171
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$1;-><init>(Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mOnClickBtnListener:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;

    return-object p0
.end method

.method public static createOneBtnDialog(Landroid/content/Context;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
    .locals 4

    .line 35
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-string v1, "tai_sdk_one_btn_message_dialog"

    const-string v2, "layout"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setContentView(Landroid/view/View;)V

    .line 38
    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->initViewsForOneBtnDialog(Landroid/view/View;)V

    .line 39
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setCancelable(Z)V

    .line 40
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    sget-object p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->sOnDialogCreateListener:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;

    if-eqz p0, :cond_0

    .line 42
    sget-object p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->sOnDialogCreateListener:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;

    invoke-interface {p0, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;->onDialogCreate(Landroid/app/Dialog;)V

    :cond_0
    return-object v0
.end method

.method public static createSecondBtnDialog(Landroid/content/Context;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
    .locals 4

    .line 48
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-string v1, "tai_sdk_second_btn_message_dialog"

    const-string v2, "layout"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->initViewsForSecondBtnDialog(Landroid/view/View;)V

    .line 52
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setCancelable(Z)V

    .line 53
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    sget-object p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->sOnDialogCreateListener:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;

    if-eqz p0, :cond_0

    .line 55
    sget-object p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->sOnDialogCreateListener:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;

    invoke-interface {p0, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;->onDialogCreate(Landroid/app/Dialog;)V

    :cond_0
    return-object v0
.end method

.method private initViewsForOneBtnDialog(Landroid/view/View;)V
    .locals 2

    const-string v0, "message_layout"

    const-string v1, "id"

    .line 61
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mMessageLayout:Landroid/view/View;

    const-string v0, "message"

    const-string v1, "id"

    .line 62
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mMessageTv:Landroid/widget/TextView;

    const-string v0, "btn_one_layout"

    const-string v1, "id"

    .line 63
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnLayout:Landroid/view/View;

    const-string v0, "btn_one_tv"

    const-string v1, "id"

    .line 64
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnTv:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mMessageLayout:Landroid/view/View;

    const-string v0, "tai_sdk_bg_dialog_up"

    const-string v1, "drawable"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setBackgroud(Landroid/view/View;I)V

    .line 67
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mMessageTv:Landroid/widget/TextView;

    const-string v0, "tai_sdk_common_text_main_color"

    const-string v1, "color"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setTextColor(Landroid/widget/TextView;I)V

    .line 68
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnLayout:Landroid/view/View;

    const-string v0, "tai_sdk_bg_dialog_first_btn_selector_2"

    const-string v1, "drawable"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setBackgroud(Landroid/view/View;I)V

    .line 69
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnTv:Landroid/widget/TextView;

    const-string v0, "tai_sdk_common_text_main_color"

    const-string v1, "color"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setTextColor(Landroid/widget/TextView;I)V

    .line 71
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "tai_sdk_ok"

    const-string v0, "string"

    .line 72
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setFirstBtnText(I)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    return-void
.end method

.method private initViewsForSecondBtnDialog(Landroid/view/View;)V
    .locals 2

    const-string v0, "message_layout"

    const-string v1, "id"

    .line 94
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mMessageLayout:Landroid/view/View;

    const-string v0, "message"

    const-string v1, "id"

    .line 95
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mMessageTv:Landroid/widget/TextView;

    const-string v0, "btn_one_layout"

    const-string v1, "id"

    .line 96
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnLayout:Landroid/view/View;

    const-string v0, "btn_one_tv"

    const-string v1, "id"

    .line 97
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnTv:Landroid/widget/TextView;

    const-string v0, "btn_second_layout"

    const-string v1, "id"

    .line 99
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mSecondBtnLayout:Landroid/view/View;

    const-string v0, "btn_second_tv"

    const-string v1, "id"

    .line 100
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mSecondBtnTv:Landroid/widget/TextView;

    .line 102
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mMessageLayout:Landroid/view/View;

    const-string v0, "tai_sdk_bg_dialog_up"

    const-string v1, "drawable"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setBackgroud(Landroid/view/View;I)V

    .line 103
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mMessageTv:Landroid/widget/TextView;

    const-string v0, "tai_sdk_common_text_main_color"

    const-string v1, "color"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setTextColor(Landroid/widget/TextView;I)V

    .line 104
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnLayout:Landroid/view/View;

    const-string v0, "tai_sdk_bg_dialog_first_btn_selector_2"

    const-string v1, "drawable"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setBackgroud(Landroid/view/View;I)V

    .line 105
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnTv:Landroid/widget/TextView;

    const-string v0, "tai_sdk_common_text_main_color"

    const-string v1, "color"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setTextColor(Landroid/widget/TextView;I)V

    .line 107
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mSecondBtnLayout:Landroid/view/View;

    const-string v0, "tai_sdk_bg_dialog_second_btn_selector"

    const-string v1, "drawable"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setBackgroud(Landroid/view/View;I)V

    .line 108
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mSecondBtnTv:Landroid/widget/TextView;

    const-string v0, "tai_sdk_common_text_main_color"

    const-string v1, "color"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setTextColor(Landroid/widget/TextView;I)V

    .line 110
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mSecondBtnLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "tai_sdk_cancel"

    const-string v0, "string"

    .line 113
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setFirstBtnText(I)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    const-string p1, "tai_sdk_ok"

    const-string v0, "string"

    .line 114
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setSecondBtnText(I)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    return-void
.end method

.method private setBackgroud(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 80
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static setOnDialogCreateListener(Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;)V
    .locals 0

    .line 186
    sput-object p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->sOnDialogCreateListener:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnDialogCreateListener;

    return-void
.end method

.method private setTextColor(Landroid/widget/TextView;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public clickFirstBtn()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method public clickSecondBtn()V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mSecondBtnLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method public focusFirstBtn()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 142
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mSecondBtnLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public focusSeconBtn()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 147
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mSecondBtnLayout:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public setFirstBtnText(I)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setFirstBtnText(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    move-result-object p0

    return-object p0
.end method

.method public setFirstBtnText(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mFirstBtnTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setMessage(I)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setMessage(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    move-result-object p0

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mMessageTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setOnClickBtnListener(Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mOnClickBtnListener:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;

    return-void
.end method

.method public setSecondBtnText(I)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setSecondBtnText(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    move-result-object p0

    return-object p0
.end method

.method public setSecondBtnText(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->mSecondBtnTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
