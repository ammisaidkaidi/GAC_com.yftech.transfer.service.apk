.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGRouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$RestrictInfo;,
        Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$ShapePoint;,
        Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$TimeLineInfo;
    }
.end annotation


# instance fields
.field public mARRouteInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$ShapePoint;",
            ">;"
        }
    .end annotation
.end field

.field public mRestritInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$RestrictInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRouteId:I

.field public mTimeLineInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$TimeLineInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getARShapePointList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$ShapePoint;",
            ">;"
        }
    .end annotation

    .line 583
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;->mARRouteInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRestrictInfoList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$RestrictInfo;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;->mRestritInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTimeLineList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$TimeLineInfo;",
            ">;"
        }
    .end annotation

    .line 588
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;->mTimeLineInfoList:Ljava/util/ArrayList;

    return-object p0
.end method
