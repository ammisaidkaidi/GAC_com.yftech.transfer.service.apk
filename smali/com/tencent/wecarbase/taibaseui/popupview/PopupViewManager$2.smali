.class Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$2;
.super Ljava/lang/Object;
.source "PopupViewManager.java"

# interfaces
.implements Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->createPopupViewWebApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$2;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDown()V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$2;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->dismissPopupWindows()V

    return-void
.end method
