.class public Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;
.super Ljava/lang/Thread;
.source "CarPlayLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WirelessObdThread"
.end annotation


# static fields
.field public static final MSG_CPU_TEMPERATURE:I = 0x0

.field public static final MSG_STOP_LOOP:I = 0x1


# instance fields
.field private mBadRssiCount:I

.field private mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

.field private mObdhandler:Landroid/os/Handler;

.field private volatile running:Z

.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;


# direct methods
.method public constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/String;Lcom/autochips/carplay/CarplayDevice;)V
    .locals 0

    .line 2655
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    .line 2656
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2649
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->running:Z

    const/4 p1, 0x0

    .line 2653
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mBadRssiCount:I

    .line 2657
    iput-object p3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    .line 2658
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mBadRssiCount:I

    return-void
.end method

.method static synthetic access$3400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)V
    .locals 0

    .line 2645
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->printCpuTemperature()V

    return-void
.end method

.method static synthetic access$3500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)V
    .locals 0

    .line 2645
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->stopLoop()V

    return-void
.end method

.method static synthetic access$3600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)Z
    .locals 0

    .line 2645
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->running:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)I
    .locals 0

    .line 2645
    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mBadRssiCount:I

    return p0
.end method

.method static synthetic access$3702(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;I)I
    .locals 0

    .line 2645
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mBadRssiCount:I

    return p1
.end method

.method static synthetic access$3708(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)I
    .locals 2

    .line 2645
    iget v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mBadRssiCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mBadRssiCount:I

    return v0
.end method

.method private printCpuTemperature()V
    .locals 5

    .line 2745
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "print cinfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->getInstance()Landroid/hardware/audioadapter/V1_0/ObdServiceManager;

    move-result-object v2

    const-string v3, "/proc/driver/thermal/tzcpu_read_temperature"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->readFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mObdhandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startObdLoop()V
    .locals 2

    .line 2696
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;

    invoke-direct {v1, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2735
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopLoop()V
    .locals 1

    const/4 v0, 0x0

    .line 2739
    iput-boolean v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->running:Z

    .line 2740
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2741
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    const-string v0, "Stopping obd loop task..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 2688
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mObdhandler:Landroid/os/Handler;

    return-object p0
.end method

.method public run()V
    .locals 2

    .line 2663
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2665
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$1;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mObdhandler:Landroid/os/Handler;

    .line 2682
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->printCpuTemperature()V

    .line 2683
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->startObdLoop()V

    .line 2684
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setCarplayDevice(Lcom/autochips/carplay/CarplayDevice;)V
    .locals 0

    .line 2692
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    return-void
.end method
