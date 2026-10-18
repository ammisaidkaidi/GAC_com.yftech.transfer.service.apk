.class public Lcom/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 2

    .line 11
    sget-object v0, Lcom/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 15
    :cond_0
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 16
    sget-object p0, Lcom/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
