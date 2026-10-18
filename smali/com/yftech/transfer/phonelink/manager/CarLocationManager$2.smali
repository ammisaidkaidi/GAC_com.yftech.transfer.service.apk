.class Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;
.super Ljava/lang/Object;
.source "CarLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/manager/CarLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "GPS location == null"

    .line 147
    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$102(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 152
    invoke-static {}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$200()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 153
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;

    .line 155
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProviderDisabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$102(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$300(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    .line 184
    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$300(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onProviderEnabled permit forbit"

    .line 186
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$400(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$102(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProviderEnabled:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$100(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u53ef\u89c1\u72b6\u6001"

    .line 166
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p0, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u6682\u505c\u670d\u52a1\u72b6\u6001"

    .line 174
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p0, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u670d\u52a1\u533a\u5916\u72b6\u6001"

    .line 170
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
