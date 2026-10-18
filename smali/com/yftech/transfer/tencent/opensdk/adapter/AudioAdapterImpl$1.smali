.class Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl$1;
.super Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;
.source "AudioAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl$1;->this$0:Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedVolume(IIIZI)V
    .locals 0

    .line 40
    iget-object p3, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl$1;->this$0:Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p3, p1, p2}, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->access$000(Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;II)V

    .line 41
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl$1;->this$0:Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p0, p1, p4}, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->access$100(Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;IZ)V

    return-void
.end method
