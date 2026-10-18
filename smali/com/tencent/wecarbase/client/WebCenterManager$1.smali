.class Lcom/tencent/wecarbase/client/WebCenterManager$1;
.super Ljava/lang/Object;
.source "WebCenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/client/WebCenterManager;->init(Landroid/content/Context;Lcom/tencent/wecarbase/IX5InitStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/client/WebCenterManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/WebCenterManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/tencent/wecarbase/client/WebCenterManager$1;->this$0:Lcom/tencent/wecarbase/client/WebCenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    :try_start_0
    invoke-static {}, Lcom/tencent/wecarbase/client/WebCenterManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebCenterService init in"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/tencent/wecarbase/h5/core/X5CoreInitializer;->getInstance()Lcom/tencent/wecarbase/h5/core/X5CoreInitializer;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/wecarbase/client/WebCenterManager$1;->this$0:Lcom/tencent/wecarbase/client/WebCenterManager;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/WebCenterManager;->access$100(Lcom/tencent/wecarbase/client/WebCenterManager;)Lcom/tencent/wecarbase/IX5InitStatusListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/h5/core/X5CoreInitializer;->registerListener(Lcom/tencent/wecarbase/IX5InitStatusListener;)V

    .line 66
    invoke-static {}, Lcom/tencent/wecarbase/h5/core/X5CoreInitializer;->getInstance()Lcom/tencent/wecarbase/h5/core/X5CoreInitializer;

    move-result-object p0

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/h5/core/X5CoreInitializer;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-static {}, Lcom/tencent/wecarbase/client/WebCenterManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
