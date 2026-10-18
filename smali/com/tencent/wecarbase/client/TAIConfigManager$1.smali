.class Lcom/tencent/wecarbase/client/TAIConfigManager$1;
.super Landroid/content/BroadcastReceiver;
.source "TAIConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/client/TAIConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/TAIConfigManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;->this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 76
    invoke-static {}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "receive CONNECTIVITY_ACTION preLoadConfig"

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;->this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;

    invoke-static {p1}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$300(Lcom/tencent/wecarbase/client/TAIConfigManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarbase/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 80
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p2, p0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;->this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;

    invoke-static {p2}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$400(Lcom/tencent/wecarbase/client/TAIConfigManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 81
    iget-object p2, p0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;->this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;

    invoke-static {p2}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$400(Lcom/tencent/wecarbase/client/TAIConfigManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_1

    const-wide/32 v2, 0x927c0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;->this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$402(Lcom/tencent/wecarbase/client/TAIConfigManager;J)J

    .line 87
    iget-object p0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;->this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/TAIConfigManager;->preLoadConfig()V

    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network event time is too short, interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;->this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$402(Lcom/tencent/wecarbase/client/TAIConfigManager;J)J

    return-void

    :cond_2
    const-string p2, "action_tai_config_changed"

    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 91
    invoke-static {}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "receive ACTION_TAI_CONFIG_CHANGED onTAIConfigChangedEvent"

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;->this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;

    invoke-static {p1}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$500(Lcom/tencent/wecarbase/client/TAIConfigManager;)Lcom/tencent/wecarbase/client/TAIConfigManager$ITAIConfigChangedListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 93
    iget-object p0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;->this$0:Lcom/tencent/wecarbase/client/TAIConfigManager;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/TAIConfigManager;->access$500(Lcom/tencent/wecarbase/client/TAIConfigManager;)Lcom/tencent/wecarbase/client/TAIConfigManager$ITAIConfigChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarbase/client/TAIConfigManager$ITAIConfigChangedListener;->onTAIConfigChangedEvent()V

    :cond_3
    :goto_1
    return-void
.end method
