.class Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1$1;
.super Ljava/lang/Object;
.source "AppletNotify.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;->onWakeupAsr(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1$1;->this$3:Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 194
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->dismissPopupWindows()V

    return-void
.end method
