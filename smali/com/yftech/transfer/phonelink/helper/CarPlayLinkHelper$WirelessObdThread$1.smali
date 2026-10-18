.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$1;
.super Landroid/os/Handler;
.source "CarPlayLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;Landroid/os/Looper;)V
    .locals 0

    .line 2665
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 2668
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2677
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2674
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->access$3500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)V

    goto :goto_0

    .line 2670
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->access$3400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
