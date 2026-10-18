.class Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$1;
.super Ljava/lang/Object;
.source "GnssStatus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->copySatellite()Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$1;->this$0:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;)I
    .locals 0

    .line 119
    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->getPrn()I

    move-result p0

    invoke-virtual {p2}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->getPrn()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 116
    check-cast p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    check-cast p2, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$1;->compare(Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;)I

    move-result p0

    return p0
.end method
