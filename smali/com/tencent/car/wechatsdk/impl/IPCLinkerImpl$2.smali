.class Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$2;
.super Ljava/lang/Object;
.source "IPCLinkerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->linkRemoteService(Landroid/content/Context;Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;

.field final synthetic val$callback:Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;


# direct methods
.method constructor <init>(Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$2;->this$0:Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;

    iput-object p2, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$2;->val$callback:Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$2;->this$0:Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;

    invoke-static {v0}, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->access$100(Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$2;->val$callback:Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;

    if-eqz v0, :cond_1

    .line 92
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$2;->val$callback:Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;

    const/16 v0, 0x65

    const-string v1, "link timeout !"

    invoke-interface {p0, v0, v1}, Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;->onLinkFailed(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
