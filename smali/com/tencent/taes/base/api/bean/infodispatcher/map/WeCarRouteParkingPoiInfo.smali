.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;
.source "WeCarRouteParkingPoiInfo.java"


# instance fields
.field public parkingPrice:Ljava/lang/String;

.field public parkingType:I

.field public remainParkingSpaces:I

.field public richInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;->parkingType:I

    .line 15
    iput v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;->remainParkingSpaces:I

    return-void
.end method


# virtual methods
.method public getParkingPrice()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;->parkingPrice:Ljava/lang/String;

    return-object p0
.end method

.method public getParkingType()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;->parkingType:I

    return p0
.end method

.method public getRemainParkingSpaces()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;->remainParkingSpaces:I

    return p0
.end method

.method public setParkingPrice(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;->parkingPrice:Ljava/lang/String;

    return-void
.end method

.method public setParkingType(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;->parkingType:I

    return-void
.end method

.method public setRemainParkingSpaces(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;->remainParkingSpaces:I

    return-void
.end method
