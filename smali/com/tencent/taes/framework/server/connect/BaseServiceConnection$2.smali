.class Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;
.super Ljava/lang/Object;
.source "BaseServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 156
    iput-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v2}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$500(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 160
    iget-object v2, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v2}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$100(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rebindService mRebindCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v4}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$600(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v2}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$700(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I

    move-result v2

    .line 163
    iget-object v3, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v3}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$800(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)J

    move-result-wide v3

    .line 166
    iget-object v5, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v5}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$600(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I

    move-result v5

    if-lt v5, v2, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    cmp-long v2, v0, v3

    if-gez v2, :cond_0

    .line 167
    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {p0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$100(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "rebindService too many! Skipping rebind."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$602(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;I)I

    .line 173
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$502(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;J)J

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$608(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I

    .line 178
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->unbindService()V

    .line 179
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    iget-object v1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v1}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$900(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {v2}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$1000(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->bindService(Landroid/content/Intent;I)Z

    .line 180
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;->this$0:Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;

    invoke-static {p0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->access$600(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->onRebindingService(I)V

    return-void
.end method
