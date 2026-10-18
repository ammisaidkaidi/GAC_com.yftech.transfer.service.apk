.class public Lcom/tencent/wecarbase/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected isDestroyed:Z

.field protected mProgressDialog:Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/tencent/wecarbase/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/wecarbase/BaseActivity;->isDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/BaseActivity;->mProgressDialog:Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/BaseActivity;->mProgressDialog:Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/tencent/wecarbase/BaseActivity;->mProgressDialog:Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected initViews()V
    .locals 0

    return-void
.end method

.method public isActivityDestroyed()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/tencent/wecarbase/BaseActivity;->isDestroyed:Z

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wecarbase/common/ConfigHolder;->hasInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/tencent/wecarbase/BaseActivity;->finish()V

    return-void

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/tencent/wecarbase/BaseActivity;->isDestroyed:Z

    .line 32
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected registerLinstners()V
    .locals 0

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/tencent/wecarbase/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/wecarbase/BaseActivity;->isDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarbase/BaseActivity;->mProgressDialog:Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/BaseActivity;->mProgressDialog:Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/BaseActivity;->mProgressDialog:Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;

    .line 42
    iget-object p0, p0, Lcom/tencent/wecarbase/BaseActivity;->mProgressDialog:Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->show(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
