.class Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;
.super Ljava/lang/Object;
.source "FlowPlayControl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;


# direct methods
.method constructor <init>(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$2200(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "_Music_FlowPlayControl"

    const-string v0, "onServiceConnected"

    .line 831
    invoke-static {p1, v0}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1502(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)Z

    .line 833
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1602(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 834
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    new-instance p2, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1800(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {p1, p2}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1702(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 835
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1900(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    .line 836
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$2000(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "_Music_FlowPlayControl"

    const-string v0, "onServiceDisconnected"

    .line 841
    invoke-static {p1, v0}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1502(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)Z

    .line 843
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1602(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 844
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1702(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 845
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$2100(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    return-void
.end method
