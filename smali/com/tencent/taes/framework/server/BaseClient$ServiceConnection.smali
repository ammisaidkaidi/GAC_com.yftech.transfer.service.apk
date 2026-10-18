.class Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;
.super Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;
.source "BaseClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/server/BaseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/framework/server/BaseClient;


# direct methods
.method public constructor <init>(Lcom/tencent/taes/framework/server/BaseClient;Landroid/content/Context;)V
    .locals 1

    .line 199
    iput-object p1, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    const-string p1, "BaseClient"

    const/4 v0, 0x3

    .line 200
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;-><init>(Ljava/lang/String;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onRebindingService(I)V
    .locals 0

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 205
    invoke-super {p0, p1, p2}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 206
    iget-object p1, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    invoke-static {p1, p2}, Lcom/tencent/taes/framework/server/BaseClient;->access$002(Lcom/tencent/taes/framework/server/BaseClient;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 208
    iget-object p1, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    invoke-virtual {p1, p2}, Lcom/tencent/taes/framework/server/BaseClient;->handleConnect(Landroid/os/IBinder;)V

    .line 210
    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->notifyConnected()V

    return-void
.end method

.method public onServiceDied()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/server/BaseClient;->handleDisConnect()V

    .line 229
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/server/BaseClient;->notifyDisConnected()V

    .line 230
    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/taes/framework/server/BaseClient;->access$002(Lcom/tencent/taes/framework/server/BaseClient;Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 216
    invoke-super {p0, p1}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 218
    iget-object p1, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    invoke-virtual {p1}, Lcom/tencent/taes/framework/server/BaseClient;->handleDisConnect()V

    .line 220
    iget-object p1, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    invoke-virtual {p1}, Lcom/tencent/taes/framework/server/BaseClient;->notifyDisConnected()V

    .line 221
    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->this$0:Lcom/tencent/taes/framework/server/BaseClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/taes/framework/server/BaseClient;->access$002(Lcom/tencent/taes/framework/server/BaseClient;Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method
