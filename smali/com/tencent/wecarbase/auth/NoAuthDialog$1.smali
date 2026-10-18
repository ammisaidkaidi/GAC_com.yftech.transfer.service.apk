.class Lcom/tencent/wecarbase/auth/NoAuthDialog$1;
.super Ljava/lang/Object;
.source "NoAuthDialog.java"

# interfaces
.implements Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/auth/NoAuthDialog;->show(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/auth/NoAuthDialog;

.field final synthetic val$clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/auth/NoAuthDialog;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog$1;->this$0:Lcom/tencent/wecarbase/auth/NoAuthDialog;

    iput-object p2, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog$1;->val$clickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickFirstBtn(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog$1;->val$clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog$1;->val$clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onClickSecondBtn(Landroid/view/View;)V
    .locals 0

    return-void
.end method
