.class Lcom/yftech/transfer/phonelink/manager/CarLocationManager$3;
.super Ljava/lang/Object;
.source "CarLocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


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

    .line 200
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$3;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_4

    .line 204
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, ","

    .line 206
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 207
    array-length p2, p1

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 232
    aget-object p2, p1, p2

    :try_start_0
    const-string p3, "$GNRMC"

    .line 234
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "$GPRMC"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p2, 0x2

    .line 235
    aget-object p1, p1, p2

    .line 237
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$3;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$502(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method
