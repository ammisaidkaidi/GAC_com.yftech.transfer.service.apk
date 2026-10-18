.class Lcom/tencent/wecarbase/messagecenter/EventReceiver$1;
.super Ljava/lang/Object;
.source "EventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/messagecenter/EventReceiver;->pushToOther(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

.field final synthetic val$listener:Lcom/tencent/wecarbase/client/PushListener;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/client/PushListener;Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$1;->this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    iput-object p2, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$1;->val$listener:Lcom/tencent/wecarbase/client/PushListener;

    iput-object p3, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$1;->val$listener:Lcom/tencent/wecarbase/client/PushListener;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$1;->val$listener:Lcom/tencent/wecarbase/client/PushListener;

    iget-object p0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$1;->val$msg:Ljava/lang/String;

    invoke-interface {v1, p0}, Lcom/tencent/wecarbase/client/PushListener;->onPush(Ljava/lang/String;)V

    .line 332
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
