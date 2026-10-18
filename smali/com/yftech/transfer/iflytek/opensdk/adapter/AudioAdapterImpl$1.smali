.class Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$1;
.super Landroid/os/Handler;
.source "AudioAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;Landroid/os/Looper;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$1;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 61
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$1;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$1;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$100(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$1;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$200(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$002(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    :cond_0
    return-void
.end method
