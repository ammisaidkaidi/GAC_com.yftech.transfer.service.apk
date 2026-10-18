.class Lcom/tencent/wecarbase/client/BaseManager$1;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/client/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/client/BaseManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/BaseManager;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {p1}, Lcom/tencent/wecarbase/client/BaseManager;->access$100(Lcom/tencent/wecarbase/client/BaseManager;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected, isDestroy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {v1}, Lcom/tencent/wecarbase/client/BaseManager;->access$400(Lcom/tencent/wecarbase/client/BaseManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    .line 121
    invoke-static {v1}, Lcom/tencent/wecarbase/client/BaseManager;->access$500(Lcom/tencent/wecarbase/client/BaseManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {v1}, Lcom/tencent/wecarbase/client/BaseManager;->access$700(Lcom/tencent/wecarbase/client/BaseManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/wecarbase/client/BaseManager;->access$502(Lcom/tencent/wecarbase/client/BaseManager;Z)Z

    .line 123
    iget-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {p1}, Lcom/tencent/wecarbase/client/BaseManager;->access$400(Lcom/tencent/wecarbase/client/BaseManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {p1}, Lcom/tencent/wecarbase/client/BaseManager;->access$800(Lcom/tencent/wecarbase/client/BaseManager;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {p1}, Lcom/tencent/wecarbase/client/BaseManager;->access$800(Lcom/tencent/wecarbase/client/BaseManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 129
    invoke-static {p1}, Lcom/tencent/wecarbase/client/BaseManager;->access$902(I)I

    .line 131
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-virtual {p0, p2}, Lcom/tencent/wecarbase/client/BaseManager;->onServiceConnectedOk(Landroid/os/IBinder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/BaseManager;->access$100(Lcom/tencent/wecarbase/client/BaseManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, isDestroy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    .line 111
    invoke-static {v2}, Lcom/tencent/wecarbase/client/BaseManager;->access$400(Lcom/tencent/wecarbase/client/BaseManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mServiceConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {v2}, Lcom/tencent/wecarbase/client/BaseManager;->access$500(Lcom/tencent/wecarbase/client/BaseManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/client/BaseManager;->access$502(Lcom/tencent/wecarbase/client/BaseManager;Z)Z

    const/4 v0, 0x1

    .line 113
    invoke-static {v0}, Lcom/tencent/wecarbase/client/BaseManager;->access$202(Z)Z

    .line 114
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/BaseManager;->access$600(Lcom/tencent/wecarbase/client/BaseManager;)V

    .line 115
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager$1;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
