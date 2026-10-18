.class Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "TASNaviSRActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p1, "TAG"

    .line 175
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackReceiver onReceive mSessionid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {v2}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$300(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Feedbacksessionid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FEEDBACK_CODE"

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "FEEDBACK_WORD"

    .line 179
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v3, "EXTRA_FROM_TOUCH"

    .line 183
    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {v3}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$300(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v3, "&"

    .line 220
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 221
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x1

    .line 226
    :try_start_0
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 228
    invoke-static {}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyType parseInt error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    invoke-static {}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FeedbackReceiver onReceive mSessionid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {v5}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$300(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " errorCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " word:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v3, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {v3}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$400(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 235
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/4 v4, 0x3

    .line 236
    iput v4, v3, Landroid/os/Message;->what:I

    .line 237
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {p1}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$400(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    :cond_3
    iget-object p1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {p1}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$200(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 241
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;->this$0:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-static {p0}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$200(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;

    move-result-object p0

    invoke-interface {p0, v1, v0, p2, v2}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;->onFeedback(IILandroid/os/Bundle;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 216
    :cond_5
    :goto_1
    invoke-static {}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "session id error!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
