.class Lcom/tencent/wecarbase/messagecenter/EventReceiver$8;
.super Ljava/lang/Object;
.source "EventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleWXUpdate(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

.field final synthetic val$newWX:Lcom/tencent/wecarbase/model/TxAccount;

.field final synthetic val$oldWX:Lcom/tencent/wecarbase/model/TxAccount;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/model/TxAccount;Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$8;->this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    iput-object p2, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$8;->val$oldWX:Lcom/tencent/wecarbase/model/TxAccount;

    iput-object p3, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$8;->val$newWX:Lcom/tencent/wecarbase/model/TxAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$8;->this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    invoke-static {v1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$000(Lcom/tencent/wecarbase/messagecenter/EventReceiver;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarbase/client/SimpleEventListener;

    .line 497
    iget-object v2, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$8;->val$oldWX:Lcom/tencent/wecarbase/model/TxAccount;

    iget-object v3, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$8;->val$newWX:Lcom/tencent/wecarbase/model/TxAccount;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarbase/client/SimpleEventListener;->onWXAccountUpdate(Lcom/tencent/wecarbase/model/TxAccount;Lcom/tencent/wecarbase/model/TxAccount;)V

    goto :goto_0

    :cond_0
    return-void
.end method
