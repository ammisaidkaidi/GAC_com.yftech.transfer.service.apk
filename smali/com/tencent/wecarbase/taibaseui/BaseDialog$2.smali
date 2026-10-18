.class Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/BaseDialog;->config(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;ZZLcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/BaseDialog;

.field final synthetic val$onClickDialogRightBtn:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/BaseDialog;Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;->this$0:Lcom/tencent/wecarbase/taibaseui/BaseDialog;

    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;->val$onClickDialogRightBtn:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;->val$onClickDialogRightBtn:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;->val$onClickDialogRightBtn:Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;->this$0:Lcom/tencent/wecarbase/taibaseui/BaseDialog;

    invoke-interface {p1, v0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog$OnClickDialogButton;->onClickButton(Landroid/app/Dialog;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;->this$0:Lcom/tencent/wecarbase/taibaseui/BaseDialog;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$2;->this$0:Lcom/tencent/wecarbase/taibaseui/BaseDialog;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->dismiss()V

    :cond_1
    return-void
.end method
