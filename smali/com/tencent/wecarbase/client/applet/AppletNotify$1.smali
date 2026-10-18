.class Lcom/tencent/wecarbase/client/applet/AppletNotify$1;
.super Ljava/lang/Object;
.source "AppletNotify.java"

# interfaces
.implements Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/client/applet/AppletNotify;->handleMessage(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

.field final synthetic val$fMap:Ljava/util/HashMap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/applet/AppletNotify;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    iput-object p2, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->val$fMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 177
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;-><init>(Lcom/tencent/wecarbase/client/applet/AppletNotify$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 212
    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$000(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "onAttachedToWindow "

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$000(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDetachedFromWindow "

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$100(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Lcom/tencent/wecarbase/helper/AsrHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$100(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Lcom/tencent/wecarbase/helper/AsrHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/helper/AsrHelper;->stopWakeupScene()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$000(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoClassDefFoundError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onNegativeSelection(Z)V
    .locals 2

    .line 166
    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$000(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNegativeSelection isTouch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->dismissPopupWindows()V

    return-void
.end method

.method public onPopupViewDismiss()V
    .locals 1

    .line 172
    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$000(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "onPopupViewDismiss"

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveSelection(Z)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$000(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositiveSelection isTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->dismissPopupWindows()V

    .line 159
    iget-object p1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->val$url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->val$url:Ljava/lang/String;

    const-string v0, "moss://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->val$url:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lcom/tencent/wecarbase/client/applet/TaiAppletEntry;->startAppletService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
