.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$9;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Landroid/os/Handler;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$9;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string p1, "yf.false.standby.state"

    .line 323
    invoke-static {p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "powerStandbyObserver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 326
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$9;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->access$900(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    .line 327
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->pauseForResume()V

    .line 328
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    .line 329
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->setAudioOff()V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$9;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->unMute()V

    .line 333
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->resume()V

    .line 334
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    .line 335
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->setAudioOn()V

    :goto_0
    return-void
.end method
