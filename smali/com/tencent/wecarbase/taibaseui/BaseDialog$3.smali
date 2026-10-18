.class Lcom/tencent/wecarbase/taibaseui/BaseDialog$3;
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


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/BaseDialog;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$3;->this$0:Lcom/tencent/wecarbase/taibaseui/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$3;->this$0:Lcom/tencent/wecarbase/taibaseui/BaseDialog;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->dismiss()V

    return-void
.end method
