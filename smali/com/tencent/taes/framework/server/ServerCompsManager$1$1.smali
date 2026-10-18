.class Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;
.super Lcom/tencent/taes/framework/listener/LoadListener$Stub;
.source "ServerCompsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/framework/server/ServerCompsManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/taes/framework/server/ServerCompsManager$1;

.field final synthetic val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/server/ServerCompsManager$1;Lcom/tencent/taes/framework/parser/ComponentConfigInfo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->this$1:Lcom/tencent/taes/framework/server/ServerCompsManager$1;

    iput-object p2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    iput-object p3, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/tencent/taes/framework/listener/LoadListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ServerCompsManager"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadComponents configInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-virtual {v2}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->this$1:Lcom/tencent/taes/framework/server/ServerCompsManager$1;

    iget-object p2, p2, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$listener:Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;

    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;->onCompLoadFail(Ljava/lang/String;I)V

    .line 166
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->this$1:Lcom/tencent/taes/framework/server/ServerCompsManager$1;

    iget-object v0, v0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    invoke-static {v0}, Lcom/tencent/taes/framework/server/ServerCompsManager;->access$000(Lcom/tencent/taes/framework/server/ServerCompsManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->this$1:Lcom/tencent/taes/framework/server/ServerCompsManager$1;

    iget-object v0, v0, Lcom/tencent/taes/framework/server/ServerCompsManager$1;->val$listener:Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;->onCompLoadSuccess(Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$1$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
