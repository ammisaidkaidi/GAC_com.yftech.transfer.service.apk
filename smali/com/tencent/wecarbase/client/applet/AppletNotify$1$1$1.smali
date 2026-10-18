.class Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;
.super Lcom/tencent/wecarbase/speech/WakeupListener;
.source "AppletNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;->this$2:Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;

    invoke-direct {p0}, Lcom/tencent/wecarbase/speech/WakeupListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onWakeupAsr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;->this$2:Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;

    iget-object v0, v0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    iget-object v0, v0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$000(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeupAsr, keyword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", semanticsTag = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x5a5ad2b4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "positive_semantic"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 189
    :cond_2
    iget-object p1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;->this$2:Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;

    iget-object p1, p1, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    iget-object p1, p1, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->this$0:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-static {p1}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->access$000(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "START_FLIGHT_AI_PUSH"

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u597d\u7684\uff0c\u4e3a\u60a8\u6253\u5f00\u5c0f\u7a0b\u5e8f"

    .line 190
    invoke-static {p1}, Lcom/tencent/wecarbase/common/ReflectUtils;->playTTS(Ljava/lang/String;)V

    .line 191
    new-instance p1, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1$1;

    invoke-direct {p1, p0}, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1$1;-><init>(Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;)V

    invoke-static {p1}, Lcom/tencent/wecarbase/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    iget-object p1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;->this$2:Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;

    iget-object p1, p1, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    iget-object p1, p1, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->val$url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;->this$2:Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;

    iget-object p1, p1, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    iget-object p1, p1, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->val$url:Ljava/lang/String;

    const-string p2, "moss://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 198
    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1$1;->this$2:Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;

    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1$1;->this$1:Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;->val$url:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lcom/tencent/wecarbase/client/applet/TaiAppletEntry;->startAppletService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
