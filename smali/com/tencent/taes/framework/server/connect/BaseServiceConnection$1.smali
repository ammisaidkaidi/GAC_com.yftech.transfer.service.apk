.class Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;
.super Ljava/lang/Object;
.source "BaseServiceConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$002(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;I)I

    .line 138
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$100(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeathRecipient binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->onServiceDied()V

    .line 141
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$200(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$100(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try rebind on binderDied after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v2}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$300(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$400(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {p0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$300(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->onEvent(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
