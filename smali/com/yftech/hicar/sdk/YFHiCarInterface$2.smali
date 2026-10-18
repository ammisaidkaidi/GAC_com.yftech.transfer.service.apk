.class Lcom/yftech/hicar/sdk/YFHiCarInterface$2;
.super Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;
.source "YFHiCarInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/hicar/sdk/YFHiCarInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;


# direct methods
.method constructor <init>(Lcom/yftech/hicar/sdk/YFHiCarInterface;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-direct {p0}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callStateChange(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/hicar/sdk/IStateChange;

    const-string v1, "YFHiCarInterface"

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver callStateChange ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-interface {v0, p1}, Lcom/yftech/hicar/sdk/IStateChange;->callStateChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public connectStateChange(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/hicar/sdk/IStateChange;

    const-string v1, "YFHiCarInterface"

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver connectStateChange ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-interface {v0, p1}, Lcom/yftech/hicar/sdk/IStateChange;->connectStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deviceListChange()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/hicar/sdk/IStateChange;

    const-string v1, "YFHiCarInterface"

    const-string v2, "receiver deviceListChange"

    .line 346
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-interface {v0}, Lcom/yftech/hicar/sdk/IStateChange;->deviceListChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/hicar/sdk/IStateChange;

    const-string v1, "YFHiCarInterface"

    const-string v2, "receiver initSuccess"

    .line 306
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-interface {v0}, Lcom/yftech/hicar/sdk/IStateChange;->initSuccess()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reConnectStateChange(ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/hicar/sdk/IStateChange;

    const-string v1, "YFHiCarInterface"

    const-string v2, "receiver deviceListChange"

    .line 356
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-interface {v0, p1, p2}, Lcom/yftech/hicar/sdk/IStateChange;->reConnectStateChange(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public voiceStateChange(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/hicar/sdk/IStateChange;

    const-string v1, "YFHiCarInterface"

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver voiceStateChange ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-interface {v0, p1}, Lcom/yftech/hicar/sdk/IStateChange;->voiceStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
