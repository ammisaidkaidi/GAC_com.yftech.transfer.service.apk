.class Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;
.super Ljava/lang/Object;
.source "AppletNotify.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/applet/AppletNotify$1;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    iget-object v0, v0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$100(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Lcom/tencent/wecarbase/helper/AsrHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    iget-object v0, v0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$100(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Lcom/tencent/wecarbase/helper/AsrHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    iget-object v1, v1, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->val$fMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/helper/AsrHelper;->setWakeupGroup(Ljava/util/HashMap;)V

    .line 183
    iget-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    iget-object v0, v0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$100(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Lcom/tencent/wecarbase/helper/AsrHelper;

    move-result-object v0

    const-string v1, "scene_popup_view"

    new-instance v2, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;-><init>(Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarbase/helper/AsrHelper;->startWakeupScene(Ljava/lang/String;Lcom/tencent/wecarbase/speech/WakeupListener;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 207
    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

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
