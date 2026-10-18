.class public Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;
.super Ljava/lang/Object;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taibaseui/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected cancelable:Z

.field protected canceledOnTouchOutside:Z

.field protected leftListener:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;

.field protected leftStr:Ljava/lang/String;

.field protected msg:Ljava/lang/String;

.field protected rightListener:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;

.field protected rightStr:Ljava/lang/String;

.field protected subMsg:Ljava/lang/String;

.field protected type:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->canceledOnTouchOutside:Z

    .line 164
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->cancelable:Z

    .line 165
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->DIFF:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->type:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    .line 168
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Dialog;
    .locals 12

    .line 214
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->createDialog(Landroid/app/Activity;)Lcom/tencent/wecarbase/taibaseui/BaseDialog;

    move-result-object v0

    .line 215
    iget-object v2, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->msg:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->subMsg:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->leftStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->rightStr:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->leftListener:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;

    iget-object v8, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->rightListener:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;

    iget-boolean v9, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->canceledOnTouchOutside:Z

    iget-boolean v10, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->cancelable:Z

    iget-object v11, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->type:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    move-object v1, v0

    invoke-virtual/range {v1 .. v11}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->config(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;ZZLcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;)V

    return-object v0
.end method

.method public cancelable(Z)Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->cancelable:Z

    return-object p0
.end method

.method public canceledOnTouchOutside(Z)Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->canceledOnTouchOutside:Z

    return-object p0
.end method

.method protected createDialog(Landroid/app/Activity;)Lcom/tencent/wecarbase/taibaseui/BaseDialog;
    .locals 0

    .line 210
    new-instance p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog;

    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public leftBtn(Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;)Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->leftStr:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->leftListener:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;

    return-object p0
.end method

.method public msg(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public rightBtn(Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;)Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->rightStr:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->rightListener:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;

    return-object p0
.end method

.method public subMsg(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->subMsg:Ljava/lang/String;

    return-object p0
.end method

.method public type(Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;)Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$Builder;->type:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    return-object p0
.end method
