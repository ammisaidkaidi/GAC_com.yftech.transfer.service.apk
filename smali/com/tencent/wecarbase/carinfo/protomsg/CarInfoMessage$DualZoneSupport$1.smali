.class final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport$1;
.super Ljava/lang/Object;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1462
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport$1;->findValueByNumber(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;
    .locals 0

    .line 1464
    invoke-static {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    move-result-object p0

    return-object p0
.end method
