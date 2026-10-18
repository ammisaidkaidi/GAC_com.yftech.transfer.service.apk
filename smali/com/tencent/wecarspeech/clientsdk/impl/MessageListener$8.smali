.class Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$8;
.super Lcom/tencent/wecarspeech/vframework/ISSRCallback$Stub;
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

    .line 173
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$8;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/ISSRCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSSREvent(JLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MessageListener"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSTTEvent taskId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", doaDirection =  semantic= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;

    invoke-static {p3, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;

    .line 178
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$8;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 179
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$8;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchSTTEvent(JLcom/tencent/wecarspeech/clientsdk/model/SSRResult;)V

    return-void
.end method

.method public onSSREventWithDoa(JLjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MessageListener"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSTTEvent taskId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", doaDirection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " semantic= "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-class p4, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;

    invoke-static {p3, p4}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;

    .line 186
    iget-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$8;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p4}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 187
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$8;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchSTTEvent(JLcom/tencent/wecarspeech/clientsdk/model/SSRResult;)V

    return-void
.end method
