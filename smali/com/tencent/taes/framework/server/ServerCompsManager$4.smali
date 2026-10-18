.class Lcom/tencent/taes/framework/server/ServerCompsManager$4;
.super Lcom/tencent/taes/framework/auth/IClientVerifyResult$Stub;
.source "ServerCompsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/framework/server/ServerCompsManager;->verifyAppId(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/server/ServerCompsManager;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$4;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    invoke-direct {p0}, Lcom/tencent/taes/framework/auth/IClientVerifyResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerifyResult(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "ServerCompsManager"

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$4;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    iget-object v1, v1, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Kill, AppId verify Fail!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager$4;->this$0:Lcom/tencent/taes/framework/server/ServerCompsManager;

    invoke-static {p0}, Lcom/tencent/taes/framework/server/ServerCompsManager;->access$300(Lcom/tencent/taes/framework/server/ServerCompsManager;)V

    :cond_0
    return-void
.end method
