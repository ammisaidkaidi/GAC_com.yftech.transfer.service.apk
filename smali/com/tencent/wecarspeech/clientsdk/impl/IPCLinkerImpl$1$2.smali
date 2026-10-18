.class Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;
.super Ljava/lang/Object;
.source "IPCLinkerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$002(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Z)Z

    .line 60
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2$1;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
