.class Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;
.super Ljava/lang/Object;
.source "CarPropertyAdapterImpl.java"

# interfaces
.implements Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCarProperty(I)Ljava/lang/String;
    .locals 1

    .line 96
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    const-string p1, "es"

    .line 109
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getEngineSpeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_1
    const-string p1, "v"

    .line 106
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_2
    const-string p1, "em"

    const/16 v0, 0x58

    .line 103
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_3
    const-string p1, "m"

    .line 112
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getTotalOdometer()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "frp"

    const/16 v0, 0x14

    .line 100
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 120
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceStatusChanged(I)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    invoke-static {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)Ljava/lang/String;

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

    .line 71
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->access$402(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;Z)Z

    .line 72
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->access$500(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->access$402(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;Z)Z

    .line 80
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    invoke-static {p1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->access$600(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "bind IFlytek CarProper Service Successful"

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

.method public onSetCarProperty(ILjava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
