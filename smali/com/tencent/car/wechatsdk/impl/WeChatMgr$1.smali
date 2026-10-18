.class Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;
.super Ljava/lang/Object;
.source "WeChatMgr.java"

# interfaces
.implements Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->initInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;


# direct methods
.method constructor <init>(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkDisconnected()V
    .locals 2

    .line 250
    invoke-static {}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLinkDisconnected"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$102(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;Lcom/tencent/car/sdk/IWeChatService;)Lcom/tencent/car/sdk/IWeChatService;

    .line 252
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-static {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$400(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;

    .line 253
    invoke-interface {v0}, Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;->onDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLinkFailed(ILjava/lang/String;)V
    .locals 3

    .line 241
    invoke-static {}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkFailed errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$102(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;Lcom/tencent/car/sdk/IWeChatService;)Lcom/tencent/car/sdk/IWeChatService;

    .line 243
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-static {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$400(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;

    .line 244
    invoke-interface {v0, p1, p2}, Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;->onConnectFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLinkSuccess(Lcom/tencent/car/sdk/IWeChatService;)V
    .locals 3

    .line 230
    invoke-static {}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLinkSuccess"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-static {v0, p1}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$102(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;Lcom/tencent/car/sdk/IWeChatService;)Lcom/tencent/car/sdk/IWeChatService;

    .line 232
    iget-object p1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    new-instance v0, Lcom/tencent/car/wechatsdk/impl/RemoteService;

    iget-object v1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-static {v1}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$100(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Lcom/tencent/car/sdk/IWeChatService;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-static {v2}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$300(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/car/wechatsdk/impl/RemoteService;-><init>(Lcom/tencent/car/sdk/IWeChatService;Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;)V

    invoke-static {p1, v0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$202(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;Lcom/tencent/car/wechatsdk/impl/RemoteService;)Lcom/tencent/car/wechatsdk/impl/RemoteService;

    .line 233
    iget-object p1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-static {p1}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$200(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Lcom/tencent/car/wechatsdk/impl/RemoteService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->start()V

    .line 234
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-static {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$400(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;

    .line 235
    invoke-interface {p1}, Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;->onConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method
