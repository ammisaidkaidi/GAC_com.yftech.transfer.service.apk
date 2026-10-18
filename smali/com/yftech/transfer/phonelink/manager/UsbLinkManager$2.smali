.class Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$2;
.super Ljava/lang/Object;
.source "UsbLinkManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ca1105LostUsbPowerAtTimeWhenStandBy(Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;J)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

.field final synthetic val$onCA1105LostUsbPowerListener:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    iput-object p2, p0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$2;->val$onCA1105LostUsbPowerListener:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 4

    .line 317
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object p1

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ca1105LostUsbPowerAtTimeWhenStandBy getPowerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "ca1105LostUsbPowerAtTimeWhenStandBy start"

    .line 321
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 324
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/sys/atcxhci-u2/vbus"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "vbus_0"

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    const-string p1, "ca1105LostUsbPowerAtTimeWhenStandBy complete"

    .line 327
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 335
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 338
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 329
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ca1105LostUsbPowerAtTimeWhenStandBy error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 334
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 335
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 341
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$2;->val$onCA1105LostUsbPowerListener:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;

    if-eqz p1, :cond_2

    .line 342
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$2;->val$onCA1105LostUsbPowerListener:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;

    invoke-interface {p0}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;->onFinish()V

    :cond_2
    const-string p0, "ca1105LostUsbPowerAtTimeWhenStandBy end"

    .line 343
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v0, :cond_3

    .line 334
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 335
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 338
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    :cond_3
    :goto_3
    throw p0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$2;->accept(Ljava/lang/Long;)V

    return-void
.end method
