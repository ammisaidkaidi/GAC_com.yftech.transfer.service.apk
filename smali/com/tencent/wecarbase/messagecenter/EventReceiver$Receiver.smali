.class public Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "EventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/messagecenter/EventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 572
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 574
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 578
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "com.tencent.wecarcloud.PUSH"

    .line 581
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$100(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "com.tencent.wecarbase.ACTION_AUTH_RESULT"

    .line 583
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$200(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.tencent.wecarbase.ACTION_WECAR_ID_REGISTERED"

    .line 585
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$300(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "com.tencent.wecarbase.ACTION_WECAR_ID_CHANGED"

    .line 587
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 588
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$400(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "com.tencent.wecarbase.ACTION_WX_BIND"

    .line 589
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 590
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$500(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "com.tencent.wecarbase.ACTION_WX_UNBIND"

    .line 591
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 592
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$600(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "com.tencent.wecarbase.ACTION_WX_UPDATE"

    .line 593
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 594
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$700(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "com.tencent.wecarbase.ACTION_FEED_BACK_CENT_OPEN_OR_CLOSE"

    .line 595
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 596
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$800(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "com.tencent.wecarbase.ACTION_WX_PAGE_OPEN_OR_CLOSE"

    .line 597
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 598
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$900(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    const-string v1, "com.tencent.wecarbase.ACTION_QQ_BIND"

    .line 599
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 600
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$1000(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    const-string v1, "com.tencent.wecarbase.ACTION_QQ_UNBIND"

    .line 601
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 602
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$1100(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :cond_a
    const-string v1, "com.tencent.wecarbase.ACTION_QQ_UPDATE"

    .line 603
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 604
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$1200(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :cond_b
    const-string v1, "com.tencent.taiservice.ACTION_ROM_STANDARD_BROADCAST_RECV"

    .line 605
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 606
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$1300(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_c
    const-string v1, "com.tencent.taiservice.ACTION_APP_STANDARD_BROADCAST_RECV"

    .line 607
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 608
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$1400(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 611
    iget-object p0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handle broadcast exception, e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_0
    return-void
.end method
