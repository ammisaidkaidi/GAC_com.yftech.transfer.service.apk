.class Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$1;
.super Ljava/lang/Object;
.source "IPCLinkerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$speechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;Lcom/tencent/wecarspeech/vframework/ISpeechService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$1;->val$speechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$1;->val$speechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;->onLinkSuccess(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V

    .line 50
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
