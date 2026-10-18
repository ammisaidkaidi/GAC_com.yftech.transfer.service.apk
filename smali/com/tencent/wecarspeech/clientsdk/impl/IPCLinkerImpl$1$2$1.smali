.class Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2$1;
.super Ljava/lang/Object;
.source "IPCLinkerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2$1;->this$2:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2$1;->this$2:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;

    invoke-interface {v0}, Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;->onLinkDisconnected()V

    .line 65
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2$1;->this$2:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$202(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method
