.class public Lcom/baidu/navisdk/hudsdk/BNRemoteConstants;
.super Ljava/lang/Object;
.source "BNRemoteConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/navisdk/hudsdk/BNRemoteConstants$AssistantType;,
        Lcom/baidu/navisdk/hudsdk/BNRemoteConstants$ClientBindMode;,
        Lcom/baidu/navisdk/hudsdk/BNRemoteConstants$MessageType;,
        Lcom/baidu/navisdk/hudsdk/BNRemoteConstants$ParamKey;,
        Lcom/baidu/navisdk/hudsdk/BNRemoteConstants$ParamValue;,
        Lcom/baidu/navisdk/hudsdk/BNRemoteConstants$PictureType;,
        Lcom/baidu/navisdk/hudsdk/BNRemoteConstants$RestrictType;
    }
.end annotation


# static fields
.field public static final AUTHORIZE_FAILED_MSG:Ljava/lang/String; = "The user is not authorized"

.field public static final AUTHORIZE_SUCCESS_MSG:Ljava/lang/String; = "BaiduNavi_LOVE_U"

.field public static final CLIENT_COUNT:I = 0x3

.field public static final END_COMMUNICATION:Ljava/lang/String; = "End_Communication"

.field public static final ERROR_CODE_AUTH_FAILED:I = 0x1

.field public static final ERROR_CODE_DEFAULT:I = 0x0

.field public static final ERROR_DEFAULT_STR:Ljava/lang/String; = "ok"

.field public static final HUD_SDK_CLIENT_VERSION:Ljava/lang/String; = "2.0"

.field public static final IPADDR:Ljava/lang/String; = "localhost"

.field public static final MAP_PORTS_POOL:[I

.field public static final MODULE_TAG:Ljava/lang/String; = "BNRemote"

.field public static final NAVI_PORTS_POOL:[I

.field public static final PACKET_HEAD_BYTES:I = 0x4

.field public static final PACKET_SPLIT_BYTES:I = 0x2

.field public static final SERVER_BIND_MODE:I = 0x1

.field public static final SOCKET_CLIENT_HEART_SEND_INTER:I = 0x4e20

.field public static final SOCKET_CONNECT_FAILED:I = 0x1

.field public static final SOCKET_CONNECT_SUCCESS:I = 0x0

.field public static final SOCKET_RECONNECT_MAX_NUM:I = 0x3

.field public static final SOCKET_SERVER_HEART_CHECK_INTER:I = 0x15f90

.field public static final SOCKET_SERVER_OPEN_FAILED:I = 0x1

.field public static final SOCKET_SERVER_OPEN_SUCCESS:I = 0x0

.field public static final THREAD_POOL_SIZE:I = 0x5

.field public static final VERSION_CODE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 13
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/baidu/navisdk/hudsdk/BNRemoteConstants;->NAVI_PORTS_POOL:[I

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/navisdk/hudsdk/BNRemoteConstants;->MAP_PORTS_POOL:[I

    return-void

    :array_0
    .array-data 4
        0x24b2
        0xd431
        0xd432
        0xd433
        0xd434
        0xd435
    .end array-data

    :array_1
    .array-data 4
        0x244d
        0xd436
        0xd437
        0xd438
        0xd439
        0xd43a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
