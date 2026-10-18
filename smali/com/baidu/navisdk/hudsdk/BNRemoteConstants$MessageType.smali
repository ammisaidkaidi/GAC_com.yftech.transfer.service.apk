.class public Lcom/baidu/navisdk/hudsdk/BNRemoteConstants$MessageType;
.super Ljava/lang/Object;
.source "BNRemoteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageType"
.end annotation


# static fields
.field public static final BNMessageTypeAssistant:I = 0x66

.field public static final BNMessageTypeAuthorizeRequest:I = 0xb

.field public static final BNMessageTypeAuthorizeRespone:I = 0xc

.field public static final BNMessageTypeCarFreeStatus:I = 0x75

.field public static final BNMessageTypeCarPointInfo:I = 0x74

.field public static final BNMessageTypeCruiseEnd:I = 0x6f

.field public static final BNMessageTypeCruiseStart:I = 0x6e

.field public static final BNMessageTypeCurrentRoad:I = 0x68

.field public static final BNMessageTypeDefault:I = -0x1

.field public static final BNMessageTypeDestInfo:I = 0x73

.field public static final BNMessageTypeEndCommunication:I = 0xd

.field public static final BNMessageTypeEnlargeRoad:I = 0x72

.field public static final BNMessageTypeGPSLost:I = 0x6a

.field public static final BNMessageTypeGPSNormal:I = 0x6b

.field public static final BNMessageTypeHeartAlive:I = 0xa

.field public static final BNMessageTypeHeartAliveResponse:I = 0xe

.field public static final BNMessageTypeManeuver:I = 0x64

.field public static final BNMessageTypeNaviEnd:I = 0x6d

.field public static final BNMessageTypeNaviStart:I = 0x6c

.field public static final BNMessageTypeNearbyCamera:I = 0x79

.field public static final BNMessageTypeNextRoad:I = 0x69

.field public static final BNMessageTypeRemainInfo:I = 0x67

.field public static final BNMessageTypeRouteInfo:I = 0x78

.field public static final BNMessageTypeRoutePlanComplete:I = 0x71

.field public static final BNMessageTypeRoutePlanYawing:I = 0x70

.field public static final BNMessageTypeServiceArea:I = 0x65

.field public static final BNMessageTypeShapeIndexUpdate:I = 0x77

.field public static final BNMessageTypeTunnelUpdate:I = 0x76


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
