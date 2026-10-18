.class Lcom/tencent/taes/framework/server/eventbus/EventDispatcher$1;
.super Lcom/tencent/taes/framework/listener/IPCEventListener$Stub;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->handleConnect(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher$1;->this$0:Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

    invoke-direct {p0}, Lcom/tencent/taes/framework/listener/IPCEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/tencent/taes/framework/bean/IPCEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher$1;->this$0:Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->onEvent(Lcom/tencent/taes/framework/bean/IPCEvent;)V

    return-void
.end method
