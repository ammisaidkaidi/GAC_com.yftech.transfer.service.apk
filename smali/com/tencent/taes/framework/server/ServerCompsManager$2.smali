.class Lcom/tencent/taes/framework/server/ServerCompsManager$2;
.super Ljava/lang/Object;
.source "ServerCompsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/framework/server/ServerCompsManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

.field final synthetic val$moduleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/server/ServerCompsManager;Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    iput-object p2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2;->val$moduleName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    invoke-static {v0}, Lcom/tencent/taes/framework/server/ServerCompsManager;->access$200(Lcom/tencent/taes/framework/server/ServerCompsManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2;->val$moduleName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$2;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    invoke-static {v1}, Lcom/tencent/taes/framework/server/ServerCompsManager;->access$100(Lcom/tencent/taes/framework/server/ServerCompsManager;)Lcom/tencent/taes/framework/remote/IServiceManagerService;

    move-result-object v1

    new-instance v2, Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/taes/framework/server/ServerCompsManager$2$1;-><init>(Lcom/tencent/taes/framework/server/ServerCompsManager$2;Lcom/tencent/taes/framework/parser/ComponentConfigInfo;)V

    invoke-interface {v1, v0, v2}, Lcom/tencent/taes/framework/remote/IServiceManagerService;->loadServiceComponent(Lcom/tencent/taes/framework/parser/ComponentConfigInfo;Lcom/tencent/taes/framework/listener/LoadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 244
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
