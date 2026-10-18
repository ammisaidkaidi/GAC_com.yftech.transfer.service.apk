.class Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$2;
.super Ljava/lang/Object;
.source "IPCLinkerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->linkRemoteService(Landroid/content/Context;Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

.field final synthetic val$callback:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$2;->val$callback:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$000(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$2;->val$callback:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;

    if-eqz v0, :cond_1

    .line 105
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$2;->val$callback:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;

    const/16 v0, 0x65

    const-string v1, "link timeout !"

    invoke-interface {p0, v0, v1}, Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;->onLinkFailed(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
