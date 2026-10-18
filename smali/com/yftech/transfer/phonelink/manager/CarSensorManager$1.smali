.class Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;
.super Ljava/lang/Object;
.source "CarSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/manager/CarSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    if-eqz p1, :cond_7

    .line 101
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 103
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_4

    goto/16 :goto_2

    .line 109
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$000(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 114
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v0, v4

    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v4}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$000(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)F

    move-result v4

    sub-float/2addr v0, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v4

    .line 115
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v4}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$100(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v4

    aget v5, v4, v2

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v2

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 116
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v4}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$100(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v4

    aget v5, v4, v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    aput v5, v4, v3

    .line 117
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v4}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$100(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v4

    aget v5, v4, v1

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    aput v5, v4, v1

    .line 119
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$100(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v0

    aget v0, v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 121
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$100(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v0

    aget v0, v0, v3

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 123
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$100(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v1

    invoke-static {v0, p1}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$002(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;F)F

    .line 126
    invoke-static {}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$200()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 127
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$CarSensorObservor;

    .line 129
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$100(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$CarSensorObservor;->onGyroscopeChanged([F)V

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v4, 0x3

    if-ge v0, v4, :cond_5

    goto :goto_2

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$300(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    aput v4, v0, v2

    .line 137
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$300(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v0, v3

    .line 138
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$300(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    aput p1, v0, v1

    .line 140
    invoke-static {}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$200()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 141
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$CarSensorObservor;

    .line 143
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->access$300(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$CarSensorObservor;->onGravityAccelerometerChanged([F)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    return-void
.end method
