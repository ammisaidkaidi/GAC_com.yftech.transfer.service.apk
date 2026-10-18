.class Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;
.super Ljava/lang/Object;
.source "ContentSDK.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarflow/contentsdk/ContentSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;


# direct methods
.method constructor <init>(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "FlowContentContentSDK"

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$900(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "FlowContentContentSDK"

    const-string v0, "onServiceConnected"

    .line 202
    invoke-static {p1, v0}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$202(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Z)Z

    .line 204
    iget-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$302(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 205
    iget-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    new-instance p2, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$500(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {p1, p2}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$402(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 206
    iget-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$600(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V

    .line 207
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$700(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "FlowContentContentSDK"

    const-string v0, "onServiceDisconnected"

    .line 212
    invoke-static {p1, v0}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$202(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Z)Z

    .line 214
    iget-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$302(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 215
    iget-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$402(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 216
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$800(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V

    return-void
.end method
