.class Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl$2;
.super Ljava/lang/Object;
.source "SystemAdapterImpl.java"

# interfaces
.implements Lcom/iflytek/autofly/custom/system/util/ISystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCarConfig(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onGetUUID()Ljava/lang/String;
    .locals 3

    const-string v0, "persist.vehicle.sn"

    .line 99
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;->access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUUID: uuid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onGetVNCode()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetVehicleState(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onServiceStatusChanged(I)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    invoke-static {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;->access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;->access$402(Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;Z)Z

    .line 70
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;->access$500(Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;->access$402(Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;Z)Z

    .line 78
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    invoke-static {p1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;->access$600(Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;->access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "bind IFlytek System Service Successful"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
