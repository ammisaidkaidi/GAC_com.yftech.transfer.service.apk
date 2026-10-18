.class public Lcom/yftech/transfer/service/MainActivity;
.super Lcom/yftech/transfer/service/CheckPermissionsActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/yftech/transfer/service/CheckPermissionsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 11
    invoke-super {p0, p1}, Lcom/yftech/transfer/service/CheckPermissionsActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001b

    .line 12
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/service/MainActivity;->setContentView(I)V

    .line 13
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/yftech/transfer/service/CarTransferService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/service/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/yftech/transfer/service/CheckPermissionsActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 18
    invoke-super {p0}, Lcom/yftech/transfer/service/CheckPermissionsActivity;->onResume()V

    return-void
.end method
