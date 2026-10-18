.class Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;
.super Ljava/lang/Thread;
.source "CarInfoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SenderThread"
.end annotation


# instance fields
.field private counter:I

.field private mCarUpdateId:I

.field private volatile mIsCanceled:Z

.field final synthetic this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    const-string p1, "carinfo_sender"

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->mIsCanceled:Z

    .line 95
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->mCarUpdateId:I

    .line 96
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->counter:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->mIsCanceled:Z

    return-void
.end method

.method public run()V
    .locals 5

    .line 100
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->mIsCanceled:Z

    if-nez v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$000(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onCarSpeedChanged(F)V

    .line 102
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$000(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x44884000    # 1090.0f

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onEngineSpeedChanged(F)V

    .line 103
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$000(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x4091080000000000L    # 1090.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onTotalMileageChanged(J)V

    .line 104
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$000(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onEnduranceMileageChanged(I)V

    .line 106
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$100(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)I

    move-result v0

    .line 107
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->counter:I

    invoke-static {}, Lcom/tencent/wecarbase/config/CloudConfig;->getTcpCarInfoCounter()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->mCarUpdateId:I

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->counter:I

    goto :goto_2

    .line 108
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$200(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send carinfo msg carSpeed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getCarSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " engineSpeed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getEngineSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " totalMileage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getTotalMileage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " enduranceMileage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getEnduranceMileage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$400(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/IPushCallBack;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    .line 113
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$400(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/IPushCallBack;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/wecarbase/carinfo/IPushCallBack;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CloudNetManger sendCarInfoRecord"

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v2, v1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$500(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;)V

    .line 117
    :cond_2
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->mCarUpdateId:I

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->counter:I

    .line 123
    :goto_2
    iget-boolean v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->mIsCanceled:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 128
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/tencent/wecarbase/config/CloudConfig;->getTcpCarInfoInternal()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 130
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void
.end method
