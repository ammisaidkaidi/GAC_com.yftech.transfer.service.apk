.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper$1;
.super Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;
.source "CBIHU23C1Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneCallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V
    .locals 2

    .line 14
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;->onPhoneCallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBIHU23C1Helper#onPhoneCallStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->access$000(Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;)V

    return-void
.end method

.method public onPhoneModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;)V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBIHU23C1Helper#onPhoneModeChanged mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->access$000(Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;)V

    return-void
.end method
