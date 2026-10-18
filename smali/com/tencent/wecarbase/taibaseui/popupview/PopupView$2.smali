.class Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$2;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$2;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$2;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    invoke-static {p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->access$000(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "click positive btn"

    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$2;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    invoke-static {p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->access$100(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$2;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    invoke-static {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->access$100(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;->onPositiveSelection(Z)V

    :cond_0
    return-void
.end method
