.class Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$2;
.super Lcom/tencent/wecarspeech/vframework/ISREventCallback$Stub;
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

    .line 67
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/ISREventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSREvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "MessageListener"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSREventWithDoa taskId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " semantic= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",doaDirectionMode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object v0

    const/4 v6, 0x0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchAppSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onSREventWithDoa(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "MessageListener"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSREventWithDoa taskId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " semantic= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",doaDirectionMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 82
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchAppSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
