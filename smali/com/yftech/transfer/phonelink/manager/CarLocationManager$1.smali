.class Lcom/yftech/transfer/phonelink/manager/CarLocationManager$1;
.super Lcom/so/GpsManager$GpsObservor;
.source "CarLocationManager.java"


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

    .line 67
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-direct {p0}, Lcom/so/GpsManager$GpsObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "gpgga"

    .line 72
    invoke-static {v0, p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gprmc"

    .line 73
    invoke-static {v0, p2}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$000(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "$GPGGA"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$000(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "$GPRMC"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
