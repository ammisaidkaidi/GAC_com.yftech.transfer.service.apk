.class Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;
.super Ljava/lang/Object;
.source "IPCLinkerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 39
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p1, "IPCLinkerImpl"

    const-string v0, "onServiceConnected"

    .line 42
    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$002(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Z)Z

    .line 45
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;Lcom/tencent/wecarspeech/vframework/ISpeechService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$202(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;)Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;

    invoke-direct {p2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1$2;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "IPCLinkerImpl"

    const-string v0, "onServiceDisconnected"

    .line 78
    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->access$002(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Z)Z

    return-void
.end method
