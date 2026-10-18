.class Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$1;
.super Ljava/lang/Object;
.source "TAIMessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$1;->this$0:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$1;->this$0:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->access$000(Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "btn_one_layout"

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$1;->this$0:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->access$000(Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;->onClickFirstBtn(Landroid/view/View;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$1;->this$0:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->access$000(Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;->onClickSecondBtn(Landroid/view/View;)V

    .line 181
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$1;->this$0:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->dismiss()V

    return-void
.end method
