.class public Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ShakeListener"


# instance fields
.field private FORCE_THRESHOLD:I

.field private SHAKE_COUNT:I

.field private SHAKE_DURATION:I

.field private SHAKE_TIMEOUT:I

.field private TIME_THRESHOLD:I

.field private mContext:Landroid/content/Context;

.field private mLastForce:J

.field private mLastShake:J

.field private mLastTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mShakeCount:I

.field private mShakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener$OnShakeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3b6

    .line 13
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->FORCE_THRESHOLD:I

    const/16 v0, 0x6e

    .line 14
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->TIME_THRESHOLD:I

    const/16 v0, 0x1f4

    .line 15
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->SHAKE_TIMEOUT:I

    const/16 v0, 0x3e8

    .line 16
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->SHAKE_DURATION:I

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->SHAKE_COUNT:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastX:F

    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastY:F

    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastZ:F

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mShakeCount:I

    .line 33
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->start()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 74
    iget-wide v3, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastForce:J

    sub-long v3, v1, v3

    iget p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->SHAKE_TIMEOUT:I

    int-to-long v5, p1

    cmp-long p1, v3, v5

    const/4 v3, 0x0

    if-lez p1, :cond_1

    .line 75
    iput v3, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mShakeCount:I

    .line 78
    :cond_1
    iget-wide v4, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastTime:J

    sub-long v4, v1, v4

    iget p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->TIME_THRESHOLD:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-lez p1, :cond_4

    .line 79
    iget-wide v4, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastTime:J

    sub-long v4, v1, v4

    .line 80
    aget p1, p2, v3

    const/4 v6, 0x1

    aget v7, p2, v6

    add-float/2addr p1, v7

    aget v7, p2, v0

    add-float/2addr p1, v7

    iget v7, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastX:F

    sub-float/2addr p1, v7

    iget v7, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastY:F

    sub-float/2addr p1, v7

    iget v7, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastZ:F

    sub-float/2addr p1, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    long-to-float v4, v4

    div-float/2addr p1, v4

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v4

    .line 81
    iget v4, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->FORCE_THRESHOLD:I

    int-to-float v4, v4

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    .line 82
    iget p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mShakeCount:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mShakeCount:I

    iget v4, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->SHAKE_COUNT:I

    if-lt p1, v4, :cond_2

    iget-wide v4, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastShake:J

    sub-long v4, v1, v4

    iget p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->SHAKE_DURATION:I

    int-to-long v7, p1

    cmp-long p1, v4, v7

    if-lez p1, :cond_2

    .line 83
    iput-wide v1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastShake:J

    .line 84
    iput v3, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mShakeCount:I

    .line 85
    iget-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mShakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener$OnShakeListener;

    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mShakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener$OnShakeListener;

    invoke-interface {p1}, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener$OnShakeListener;->onShake()V

    .line 89
    :cond_2
    iput-wide v1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastForce:J

    .line 91
    :cond_3
    iput-wide v1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastTime:J

    .line 92
    aget p1, p2, v3

    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastX:F

    .line 93
    aget p1, p2, v6

    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastY:F

    .line 94
    aget p1, p2, v0

    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mLastZ:F

    :cond_4
    return-void
.end method

.method public setOnShakeListener(Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener$OnShakeListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mShakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener$OnShakeListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 44
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->TAG:Ljava/lang/String;

    const-string v1, "\u4e0d\u652f\u6301\u6447\u4e00\u6447"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 51
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->TAG:Ljava/lang/String;

    const-string v1, "\u4e0d\u652f\u6301\u6447\u4e00\u6447"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    :cond_0
    return-void
.end method
