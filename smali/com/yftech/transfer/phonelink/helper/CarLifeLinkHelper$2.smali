.class Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$2;
.super Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;
.source "CarLifeLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$2;->this$0:Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 59
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$2;->this$0:Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phonlinkbt onBluetoothStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->storeBluetoothStatus(I)V

    return-void
.end method
