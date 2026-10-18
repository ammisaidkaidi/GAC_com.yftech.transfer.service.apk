.class Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$3;
.super Lcom/tencent/wecarspeech/vframework/IWakeupCallback$Stub;
.source "MessageListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$3;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/IWakeupCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWakeup(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MessageListener"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeup session id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sceneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " word = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$3;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 92
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$3;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchWakeup(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onWakeupWithDoa(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MessageListener"

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeup session id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sceneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", doaDirection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " word = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$3;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 100
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$3;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchWakeup(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
