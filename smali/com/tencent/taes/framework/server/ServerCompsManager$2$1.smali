.class Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;
.super Lcom/tencent/taes/framework/listener/LoadListener$Stub;
.source "ServerCompsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/framework/server/ServerCompsManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/taes/framework/server/ServerCompsManager$2;

.field final synthetic val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/server/ServerCompsManager$2;Lcom/tencent/taes/framework/parser/ComponentConfigInfo;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;->this$1:Lcom/tencent/taes/framework/server/ServerCompsManager$2;

    iput-object p2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-direct {p0}, Lcom/tencent/taes/framework/listener/LoadListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "ServerCompsManager"

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getApi loadServiceComponent fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-virtual {p0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;->this$1:Lcom/tencent/taes/framework/server/ServerCompsManager$2;

    iget-object v0, v0, Lcom/tencent/taes/framework/server/ServerCompsManager$2;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    invoke-static {v0}, Lcom/tencent/taes/framework/server/ServerCompsManager;->access$000(Lcom/tencent/taes/framework/server/ServerCompsManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ServerCompsManager"

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApi loadServiceComponent success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;->val$configInfo:Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-virtual {p0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
