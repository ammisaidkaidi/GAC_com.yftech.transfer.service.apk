.class Lcom/tencent/taes/framework/server/ServerCompsManager$1;
.super Ljava/lang/Object;
.source "ServerCompsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/framework/server/ServerCompsManager;->loadComponentsInner(Ljava/util/List;Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

.field final synthetic val$configList:Ljava/util/List;

.field final synthetic val$listener:Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/server/ServerCompsManager;Ljava/util/List;Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    iput-object p2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$configList:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$listener:Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 141
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$configList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 142
    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$configList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 145
    iget-object v3, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    invoke-static {v3}, Lcom/tencent/taes/framework/server/ServerCompsManager;->access$000(Lcom/tencent/taes/framework/server/ServerCompsManager;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ServerCompsManager"

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadComponents already load configInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v3, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$listener:Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;

    invoke-virtual {v2}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;->onCompLoadSuccess(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v3, "ServerCompsManager"

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadComponents configInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    invoke-static {v3}, Lcom/tencent/taes/framework/server/ServerCompsManager;->access$100(Lcom/tencent/taes/framework/server/ServerCompsManager;)Lcom/tencent/taes/framework/remote/IServiceManagerService;

    move-result-object v3

    new-instance v4, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;-><init>(Lcom/tencent/taes/framework/server/ServerCompsManager$1;Lcom/tencent/taes/framework/parser/ComponentConfigInfo;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, v2, v4}, Lcom/tencent/taes/framework/remote/IServiceManagerService;->loadServiceComponent(Lcom/tencent/taes/framework/parser/ComponentConfigInfo;Lcom/tencent/taes/framework/listener/LoadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 170
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xa

    .line 175
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$listener:Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;

    invoke-interface {v0}, Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;->onLoadSuccess()V

    goto :goto_2

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 181
    iget-object v2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    invoke-static {v2}, Lcom/tencent/taes/framework/server/ServerCompsManager;->access$000(Lcom/tencent/taes/framework/server/ServerCompsManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 182
    sget-object v2, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_LOAD_OVER_TIME:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 183
    iget-object v3, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$listener:Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;

    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, v2, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->code:I

    invoke-interface {v3, v1, v2}, Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;->onCompLoadFail(Ljava/lang/String;I)V

    goto :goto_1

    .line 188
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$listener:Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;

    invoke-interface {p0}, Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;->onLoadComplete()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    return-void
.end method
