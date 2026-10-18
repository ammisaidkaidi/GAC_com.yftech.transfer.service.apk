.class Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;
.super Ljava/lang/Object;
.source "NmeaParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->setParseStatellite(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;

.field final synthetic val$parseStatellite:Z


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;Z)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;->this$0:Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;

    iput-boolean p2, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;->val$parseStatellite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;->this$0:Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;

    iget-boolean v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;->val$parseStatellite:Z

    invoke-static {v0, v1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->access$102(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;Z)Z

    .line 101
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;->this$0:Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;

    invoke-static {v0}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->access$200(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;)Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;->this$0:Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;

    invoke-static {v0}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->access$200(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;)Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    move-result-object v0

    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;->val$parseStatellite:Z

    invoke-virtual {v0, p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setShouldCopySatelliteList(Z)V

    :cond_0
    return-void
.end method
