.class Lcom/tencent/wecarbase/client/BaseManager$2;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/client/BaseManager;->startKeepLiveThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/client/BaseManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/BaseManager;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager$2;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$2;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/BaseManager;->access$1000(Lcom/tencent/wecarbase/client/BaseManager;)Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$2;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    new-instance v1, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    iget-object v2, p0, Lcom/tencent/wecarbase/client/BaseManager$2;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;-><init>(Lcom/tencent/wecarbase/client/BaseManager;Lcom/tencent/wecarbase/client/BaseManager$1;)V

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/client/BaseManager;->access$1002(Lcom/tencent/wecarbase/client/BaseManager;Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;)Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    .line 184
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager$2;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/BaseManager;->access$1000(Lcom/tencent/wecarbase/client/BaseManager;)Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
