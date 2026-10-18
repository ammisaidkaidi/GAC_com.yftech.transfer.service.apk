.class Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$2;
.super Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;
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
.method constructor <init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedMediaSource(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    iget-object p2, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p2, p1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$302(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;I)I

    .line 85
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$400(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onChangedMediaSource: mLastStreamType = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
