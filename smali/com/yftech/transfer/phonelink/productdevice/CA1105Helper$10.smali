.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$10;
.super Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;
.source "CA1105Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$10;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarDataChanged(Lcom/yftech/car/data/CarData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.android.systemui.EnginehoodWarningOpen"

    .line 345
    invoke-virtual {p1, v0}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 349
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/data/CarData$CarDataEntry;->getValueBoolean()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 351
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->closeVR()V

    .line 352
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->pauseForResume()V

    .line 353
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$10;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->access$900(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    goto :goto_0

    .line 355
    :cond_2
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->resume()V

    .line 356
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$10;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->unMute()V

    :goto_0
    return-void
.end method
