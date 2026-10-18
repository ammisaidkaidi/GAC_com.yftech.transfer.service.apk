.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarLinkInfo.java"


# static fields
.field public static final FORM_WAY_ENTRANCE_EXIT_PARK:I = 0xc

.field public static final FORM_WAY_ENTRANCE_EXIT_SERVICE:I = 0xd

.field public static final FORM_WAY_FREEWAY:I = 0x1

.field public static final FORM_WAY_MULTIPLE_CARRIAGEWAY:I = 0x2

.field public static final FORM_WAY_PARALLEL_ROAD:I = 0x8

.field public static final FORM_WAY_PEDESTRIAN_ZONE:I = 0xe

.field public static final FORM_WAY_RAMP_NOT_ON_FREEWAY:I = 0xa

.field public static final FORM_WAY_RAMP_ON_FREEWAY:I = 0x9

.field public static final FORM_WAY_ROUNDABOUT_CIRCLE:I = 0x4

.field public static final FORM_WAY_SERVICE_ROAD:I = 0xb

.field public static final FORM_WAY_SINGLE_CARRIAGEWAY:I = 0x3

.field public static final FORM_WAY_TRAFFICSQUARE:I = 0x5

.field public static final FORM_WAY_UNKNOWN:I = 0x0

.field public static final PATH_INVALID_DATA:I = 0x0

.field public static final PATH_MAP_MATCH_FAILED:I = 0x2

.field public static final PATH_MATCH_FAILED:I = 0x1

.field public static final PATH_MATCH_NORMAL:I = 0x4

.field public static final PATH_UNCALIBRATED:I = 0x3

.field public static final PATH_UNKNOW_ERROR:I = 0x5

.field public static final ROAD_CLASS_0:I = 0x0

.field public static final ROAD_CLASS_1:I = 0x1

.field public static final ROAD_CLASS_2:I = 0x2

.field public static final ROAD_CLASS_3:I = 0x3

.field public static final ROAD_CLASS_4:I = 0x4

.field public static final ROAD_CLASS_5:I = 0x5

.field public static final ROAD_CLASS_6:I = 0x6

.field public static final VALID_DATA_AVAILABLE:I = 0x1

.field public static final VALID_DATA_NOT_AVAILABLE:I


# instance fields
.field public dividedRoad:I

.field public formOfWay:I

.field public funcRoadClass:I

.field public naviDataAvailable:I

.field public numberOfLaneAtDrvDir:I

.field public pathIndex:I

.field public speedLimit:I

.field public speedLimitType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    .line 111
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->naviDataAvailable:I

    .line 112
    iput p2, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->numberOfLaneAtDrvDir:I

    .line 113
    iput p3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->speedLimit:I

    .line 114
    iput p4, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->speedLimitType:I

    .line 115
    iput p5, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->formOfWay:I

    .line 116
    iput p6, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->funcRoadClass:I

    .line 117
    iput p7, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->pathIndex:I

    .line 118
    iput p8, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->dividedRoad:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeCarLinkInfo{naviDataAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->naviDataAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfLaneAtDrvDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->numberOfLaneAtDrvDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speedLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->speedLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speedLimitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->speedLimitType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", formOfWay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->formOfWay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", funcRoadClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->funcRoadClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pathIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->pathIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dividedRoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;->dividedRoad:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
