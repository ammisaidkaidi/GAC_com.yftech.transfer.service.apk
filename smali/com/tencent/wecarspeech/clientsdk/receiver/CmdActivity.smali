.class public Lcom/tencent/wecarspeech/clientsdk/receiver/CmdActivity;
.super Landroid/app/Activity;
.source "CmdActivity.java"


# static fields
.field private static final FROM_PKG_NAME:Ljava/lang/String; = "com.tencent.wecar"

.field private static final FROM_PKG_NAME_SYSTEM:Ljava/lang/String; = "com.tencent.wecarspeech"

.field private static final KEY_FROM_PKG_NAME:Ljava/lang/String; = "fromPkgName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleCmd(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "fromPkgName"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.wecarspeech"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.wecar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/receiver/CmdParser;->cmdExecute(Landroid/content/Intent;)V

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/receiver/CmdActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/receiver/CmdActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 28
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/receiver/CmdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/receiver/CmdActivity;->handleCmd(Landroid/content/Intent;)V

    return-void
.end method
