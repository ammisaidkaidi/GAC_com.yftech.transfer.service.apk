.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$1;
.super Ljava/lang/Object;
.source "CA1105Helper.java"

# interfaces
.implements Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$1;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 262
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$1;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$102(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;Z)Z

    .line 263
    new-instance p0, Landroid/content/Intent;

    const-string v0, "yftech_media_REMOVED_UDISK"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.yftech.media.service"

    .line 264
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
