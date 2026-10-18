.class Lcom/tencent/wecarbase/messagecenter/EventReceiver$9;
.super Ljava/lang/Object;
.source "EventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleWXBindActivityOpenOrClose(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

.field final synthetic val$openOrClose:Z


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Z)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$9;->this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    iput-boolean p2, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$9;->val$openOrClose:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$9;->this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    invoke-static {v1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->access$000(Lcom/tencent/wecarbase/messagecenter/EventReceiver;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 510
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarbase/client/SimpleEventListener;

    .line 511
    iget-boolean v2, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$9;->val$openOrClose:Z

    invoke-virtual {v1, v2}, Lcom/tencent/wecarbase/client/SimpleEventListener;->onWXBindActivityOpenOrClose(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
