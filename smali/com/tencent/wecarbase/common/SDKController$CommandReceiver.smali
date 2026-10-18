.class Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDKController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/common/SDKController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandReceiver"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarbase/common/SDKController$1;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;-><init>()V

    return-void
.end method

.method private handleLogCommand(Z)V
    .locals 2

    .line 120
    iget-object p0, p0, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLogCommand, shouldOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/LogUtils;->setLogEnable(Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 92
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommandReceiver receive action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.tencent.wecarbase.ACTION_SDK_COMMAND"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "command"

    .line 95
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 97
    iget-object v1, p0, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x1e0f3c31

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x1cbd0b83

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "close_log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v4

    goto :goto_0

    :cond_1
    const-string v1, "open_log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v3

    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 103
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;->handleLogCommand(Z)V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;->handleLogCommand(Z)V

    .line 109
    :goto_1
    invoke-static {}, Lcom/tencent/wecarbase/common/SDKController;->access$100()Lcom/tencent/wecarbase/common/SDKController$CommandListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 111
    invoke-interface {p1, v0, p2}, Lcom/tencent/wecarbase/common/SDKController$CommandListener;->onCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 115
    iget-object p0, p0, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->fe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
