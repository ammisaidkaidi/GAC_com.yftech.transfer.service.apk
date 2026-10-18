.class public Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;
.super Landroid/app/AlertDialog$Builder;
.source "TAIDialog.java"


# instance fields
.field private COLOR_DIALOG_TITLE:Ljava/lang/String;

.field private COLOR_INPUT_BG:I

.field private COLOR_SECTION_BG:I

.field private COLOR_SECTION_SUBTITLE:Ljava/lang/String;

.field private COLOR_SECTION_TITLE:Ljava/lang/String;

.field private DIALOG_THEME:I

.field private cbScreenShot:Landroid/widget/CheckBox;

.field private context:Landroid/content/Context;

.field private etAccount:Landroid/widget/EditText;

.field private etDesc:Landroid/widget/EditText;

.field private textCopyRight:Landroid/widget/TextView;

.field private viewRoot:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 41
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103006b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 43
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103006e

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030005

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    .line 47
    :goto_0
    iput p2, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->DIALOG_THEME:I

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->DIALOG_THEME:I

    return p0
.end method

.method static synthetic access$200(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getCopyRightView(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->setDialogFillH(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private getCheckBoxText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 3

    .line 377
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_TITLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "<br>"

    .line 379
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    iget-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_SUBTITLE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-direct {p0, p2, p1, v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private getContentView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .line 162
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 169
    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/16 v6, 0xa

    .line 170
    invoke-virtual {v3, v6, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 175
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u63cf\u8ff0"

    .line 176
    iget-object v8, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_TITLE:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget v7, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_BG:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v7, 0x1e

    .line 178
    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 179
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    .line 182
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    const-string v8, "\u8bf7\u8f93\u5165\u4f60\u8981\u53cd\u9988\u7684\u5185\u5bb9..."

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setMinLines(I)V

    .line 184
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    const/16 v8, 0x33

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 185
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    iget v9, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_INPUT_BG:I

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 186
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "\u622a\u56fe"

    .line 193
    iget-object v10, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_TITLE:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget v9, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_BG:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 195
    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    iget v10, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_INPUT_BG:I

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 201
    invoke-virtual {v9, v4, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 202
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->cbScreenShot:Landroid/widget/CheckBox;

    .line 203
    iget-object v4, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->cbScreenShot:Landroid/widget/CheckBox;

    const-string v10, "\u5c4f\u5e55\u622a\u56fe"

    const-string v11, "\u6700\u65b0\u754c\u9762\u7684\u5c4f\u5e55\u622a\u56fe"

    invoke-direct {p0, v10, v11}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getCheckBoxText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v4, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->cbScreenShot:Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    iget-object v4, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->cbScreenShot:Landroid/widget/CheckBox;

    invoke-virtual {v9, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {v0, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-static {p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackConfig;->getScreenShotEnable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x8

    .line 208
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "QQ\u53f7"

    .line 216
    iget-object v9, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_TITLE:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget v4, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_BG:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 218
    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 219
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    .line 222
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    const-string v4, "\u8bf7\u8f93\u5165\u4f60\u7684QQ\u53f7..."

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 224
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 225
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    iget v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_INPUT_BG:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 226
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getCopyRight(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getContentViewLandscape(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    .line 244
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 248
    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 253
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    .line 254
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    const-string v4, "\u8bf7\u8f93\u5165\u4f60\u8981\u53cd\u9988\u7684\u5185\u5bb9..."

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMinLines(I)V

    .line 256
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    const/16 v4, 0x33

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 257
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    iget v5, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_INPUT_BG:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 258
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 264
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 265
    iget v6, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_BG:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v6, 0xa

    const/16 v7, 0xf

    .line 266
    invoke-virtual {v3, v7, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 267
    new-instance v5, Landroid/widget/CheckBox;

    invoke-direct {v5, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->cbScreenShot:Landroid/widget/CheckBox;

    .line 268
    iget-object v5, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->cbScreenShot:Landroid/widget/CheckBox;

    const-string v6, "\u5c4f\u5e55\u622a\u56fe"

    const-string v7, "\u6700\u65b0\u754c\u9762\u7684\u5c4f\u5e55\u622a\u56fe"

    invoke-direct {p0, v6, v7}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getCheckBoxText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v5, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->cbScreenShot:Landroid/widget/CheckBox;

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 270
    iget-object v5, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->cbScreenShot:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    invoke-static {p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackConfig;->getScreenShotEnable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x8

    .line 273
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    :cond_0
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    .line 279
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    const-string v5, "\u8bf7\u8f93\u5165\u4f60\u7684QQ\u53f7\u7801..."

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 281
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 282
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    iget v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_INPUT_BG:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 283
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-direct {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getCopyRight(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getCopyRight(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 4

    .line 300
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 301
    iget v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_BG:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 302
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->textCopyRight:Landroid/widget/TextView;

    .line 303
    iget-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->textCopyRight:Landroid/widget/TextView;

    const-string v1, "&nbsp;*&nbsp;\u4e0a\u62a5\u95ee\u9898\u4f1a\u8017\u8d39\u5c11\u8bb8\u6d41\u91cf\uff0c\u5efa\u8bae\u5728wifi\u73af\u5883\u4e0b\u4f7f\u7528 <br> \u00a9 2015  t.bugly.qq.com &nbsp;&nbsp;<a href=\"#\">\u9690\u79c1\u58f0\u660e<a>"

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_SUBTITLE:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->textCopyRight:Landroid/widget/TextView;

    const/16 v1, 0x14

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 305
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->textCopyRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getCopyRightView(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 5

    const-string v0, "\u9690\u79c1\u58f0\u660e"

    .line 316
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_TITLE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x14

    const/16 v4, 0xf

    .line 321
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 322
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 323
    iget v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_BG:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 327
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 328
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 329
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 331
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xa

    .line 333
    invoke-virtual {v2, v4, v0, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 334
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, "&nbsp;&nbsp;&nbsp;&nbsp;\u9009\u62e9[\u63d0\u4ea4]\u5373\u8868\u793a\u60a8\u627f\u8ba4\u5e76\u540c\u610fBugly\u4f7f\u7528\u5728\u53cd\u9988\u62a5\u544a\u4e2d\u7684\u4efb\u4f55\u4fe1\u606f\uff0c\u4f46Bugly\u5c06\u9075\u5faa\u60a8\u5728\u62a5\u544a\u4e2d\u6240\u6d89\u53ca\u7684\u5e94\u7528\u76f8\u5173\u7684\u9690\u79c1\u6743\u653f\u7b56\u6765\u4f7f\u7528\u8fd9\u4e9b\u4fe1\u606f\u3002\u60a8\u8fd8\u540c\u610fBugly\u53ef\u4ee5\u4f7f\u7528\u60a8\u63d0\u4f9b\u7684\u4efb\u4f55\u53cd\u9988\uff0c\u4ee5\u4fbf\u6539\u8fdb\u6211\u4eec\u7684\u4ea7\u54c1\u6216\u670d\u52a1\u3002<br>&nbsp;&nbsp;&nbsp;&nbsp;Bugly\u662f\u4e00\u4e2a\u5e2e\u52a9\u7528\u6237\u5feb\u901f\u63d0\u4ea4\u53cd\u9988\u7684\u7ec4\u4ef6\u3002\u60a8\u53ef\u4ee5\u767b\u9646Bugly\u4e3b\u9875 http://t.bugly.qq.com \u6765\u67e5\u770b\u60a8\u7684\u53cd\u9988\u3002"

    .line 339
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_SUBTITLE:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v2, v4, v0, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 341
    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private getDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 366
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 393
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "<font color=\""

    .line 394
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\">"

    .line 396
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    packed-switch p3, :pswitch_data_0

    .line 421
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_0
    const-string p2, "<big><big>"

    .line 415
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</big></big>"

    .line 417
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string p2, "<big>"

    .line 409
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</big>"

    .line 411
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 405
    :pswitch_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string p2, "<small>"

    .line 399
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</small>"

    .line 401
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string p1, "</font>"

    .line 425
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTitleView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2

    .line 147
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_DIALOG_TITLE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getFormatFont(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0x14

    const/16 p1, 0x1e

    const/4 p2, 0x0

    .line 149
    invoke-virtual {v0, p1, p0, p2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private setDialogFillH(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x7

    .line 136
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object p1
.end method

.method private setTheme(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "#33b5e5"

    .line 107
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_DIALOG_TITLE:Ljava/lang/String;

    const-string p1, "#cccccc"

    .line 108
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_TITLE:Ljava/lang/String;

    const-string p1, "#888888"

    .line 109
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_SUBTITLE:Ljava/lang/String;

    const/16 p1, 0x28

    .line 110
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_BG:I

    const/16 p1, 0x2b

    .line 111
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_INPUT_BG:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, -0x1

    const/16 v2, 0xf3

    if-ne p1, v0, :cond_1

    const-string p1, "#33b5e5"

    .line 113
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_DIALOG_TITLE:Ljava/lang/String;

    const-string p1, "#444444"

    .line 114
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_TITLE:Ljava/lang/String;

    const-string p1, "#888888"

    .line 115
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_SUBTITLE:Ljava/lang/String;

    .line 116
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_BG:I

    .line 117
    iput v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_INPUT_BG:I

    goto :goto_0

    :cond_1
    const-string p1, "#33b5e5"

    .line 119
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_DIALOG_TITLE:Ljava/lang/String;

    const-string p1, "#444444"

    .line 120
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_TITLE:Ljava/lang/String;

    const-string p1, "#888888"

    .line 121
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_SUBTITLE:Ljava/lang/String;

    .line 122
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_SECTION_BG:I

    .line 123
    iput v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->COLOR_INPUT_BG:I

    :goto_0
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 3

    .line 57
    iget v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->DIALOG_THEME:I

    invoke-direct {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->setTheme(I)V

    const-string v0, "\u53cd\u9988"

    .line 58
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->viewRoot:Landroid/widget/ScrollView;

    .line 61
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 62
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->viewRoot:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->viewRoot:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getContentViewLandscape(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->viewRoot:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->textCopyRight:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;

    invoke-direct {v1, p0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;-><init>(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public getCbScreenShot()Landroid/widget/CheckBox;
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->cbScreenShot:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getEtAccount()Landroid/widget/EditText;
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etAccount:Landroid/widget/EditText;

    return-object p0
.end method

.method public getEtDesc()Landroid/widget/EditText;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->etDesc:Landroid/widget/EditText;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->getTitleView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->setDialogFillH(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
