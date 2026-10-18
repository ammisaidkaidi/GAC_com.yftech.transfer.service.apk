.class Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;
.super Landroid/os/Handler;
.source "TASNaviSRActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;Landroid/os/Looper;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 75
    invoke-static {}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mSessionIds count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {v2}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$100(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 99
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {v0}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$100(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {p0}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$100(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 95
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 96
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {p0}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$100(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "&"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 83
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {v1}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$100(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    iget-object p1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {p1}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$100(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {p1}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$200(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 88
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {p0}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$200(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;->onTimeOut(I)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
