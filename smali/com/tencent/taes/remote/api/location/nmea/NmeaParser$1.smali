.class Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$1;
.super Landroid/os/Handler;
.source "NmeaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->start(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;Landroid/os/Looper;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$1;->this$0:Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$1;->this$0:Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->access$000(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;Ljava/lang/String;)V

    return-void
.end method
