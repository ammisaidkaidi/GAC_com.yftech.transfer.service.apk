.class Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$4;
.super Lcom/tencent/wecarspeech/vframework/IDuplexSSrCallback$Stub;
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

    .line 107
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$4;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/IDuplexSSrCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralCtrl(JILcom/tencent/wecarspeech/vframework/IGeneralCtrlResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MessageListener"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGeneralCtrl taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " generalCtrlCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$4;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchGeneralCtrl(JILcom/tencent/wecarspeech/vframework/IGeneralCtrlResultCallback;)V

    return-void
.end method

.method public onSSREvent(JLjava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MessageListener"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSSREvent taskId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", doaDirection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " semantic= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;

    invoke-static {p3, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;

    .line 113
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$4;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 114
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$4;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchDuplexSSREvent(JLcom/tencent/wecarspeech/clientsdk/model/SSRResult;I)Z

    move-result p0

    return p0
.end method
