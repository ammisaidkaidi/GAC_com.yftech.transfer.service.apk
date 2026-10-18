.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$1;
.super Landroid/os/Handler;
.source "CBIHU12Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carplay"

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    .line 73
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->uploadINS()V

    const-string v0, "carplay"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$100(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 76
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$000(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    sub-long/2addr v5, v1

    long-to-int p1, v5

    .line 79
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$100(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$100(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    .line 84
    :cond_1
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object p1

    .line 85
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getVehicleSpeed()I

    move-result v1

    .line 86
    invoke-virtual {v0, p1, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->updateCustomSentence(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;I)V

    .line 87
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->updateLocationInfo()V

    .line 88
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "carplay"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$200(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
