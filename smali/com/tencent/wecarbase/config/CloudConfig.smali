.class public Lcom/tencent/wecarbase/config/CloudConfig;
.super Ljava/lang/Object;
.source "CloudConfig.java"


# static fields
.field public static final CLOUD_DNS_RESOLVER_TIME_OUT:I = 0x1770

.field public static final CLOUD_LOG:Ljava/lang/String;

.field private static CLOUD_RECORD_COUNTER:I = 0x0

.field public static final CLOUD_RECORD_QUEUE_SIZE:I = 0x258

.field public static final CLOUD_RECORD_SID_FILE:Ljava/lang/String;

.field private static CLOUD_RECORD_SID_TIME:I = 0x0

.field public static final CLOUD_SERVER_CONNECT_ERROR_TIME:I = 0x7530

.field public static final CLOUD_SERVER_CONNECT_TIME_OUT:I = 0x2710

.field public static final CLOUD_SERVER_HOST_DEV:Ljava/lang/String; = "platmsgc.wecar.map.qq.com"

.field public static final CLOUD_SERVER_HOST_ONLINE:Ljava/lang/String; = "platmsg.wecar.map.qq.com"

.field public static final CLOUD_SERVER_PORT:I = 0x2328

.field public static final CLOUD_SERVER_READ_TIME_OUT:I = 0x1770

.field public static final CLOUD_SERVER_URL:Ljava/lang/String; = "125.39.240.45"

.field public static final DEBUG:Z = false

.field public static final DELAY_FOR_TRACE_STOP:I = 0x1388

.field public static final ERROR_ACC_ON_RECONNECT:I = 0x5a

.field public static final ERROR_AUTH_READ_EXCEPTION:I = 0x1e

.field public static final ERROR_AUTH_SOCKET_NULL:I = 0xa

.field public static final ERROR_AUTH_WAIT_RESPONSE_TIMEOUT:I = 0x28

.field public static final ERROR_AUTH_WRITE_EXCEPTION:I = 0x14

.field public static final ERROR_RECEIVER_READ_EXCEPTION:I = 0x3c

.field public static final ERROR_RECEIVER_SOCKET_NULL:I = 0x32

.field public static final ERROR_SENDER_CONNECTION_LOST:I = 0x46

.field public static final ERROR_SENDER_WRITE_EXCEPTION:I = 0x50

.field public static final HALLEY_APP_KEY:Ljava/lang/String; = "0M000IDG191XQZNF"

.field private static INTERVAL_HIGH_SPEED_RECORD:I = 0x0

.field private static INTERVAL_LOW_SPEED_RECORD:I = 0x0

.field private static INTERVAL_RECORD_MOVING:I = 0x0

.field public static final INTERVAL_RECORD_STILL:I = 0x1f40

.field private static INTERVAL_SEND_MOVING:I = 0x0

.field public static final INTERVAL_SEND_STILL:I = 0x2710

.field private static INTERVAL_TRACE_RECORD_COUNTER:I = 0x0

.field public static final NETWORK_RECONNECT_INTERVAL:I = 0xbb8

.field public static final ROOT_PATH:Ljava/lang/String;

.field private static TCP_CAR_INFO_COUNTER:I = 0x0

.field private static TCP_CAR_INFO_INTERNAL:I = 0x0

.field public static final TCP_EMPTY_QUEUE_SEND_INTERNAL:I = 0x3e8

.field private static TCP_HEART_BEAT_INTERNAL:I = 0x0

.field public static final TCP_SEND_INTERNAL:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tencent/wecarcloud/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/config/CloudConfig;->ROOT_PATH:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 40
    sput v0, Lcom/tencent/wecarbase/config/CloudConfig;->TCP_HEART_BEAT_INTERNAL:I

    const/16 v0, 0x1388

    .line 43
    sput v0, Lcom/tencent/wecarbase/config/CloudConfig;->TCP_CAR_INFO_INTERNAL:I

    const/4 v1, 0x5

    .line 46
    sput v1, Lcom/tencent/wecarbase/config/CloudConfig;->TCP_CAR_INFO_COUNTER:I

    const/16 v1, 0x3e8

    .line 50
    sput v1, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_RECORD_MOVING:I

    .line 52
    sput v0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_SEND_MOVING:I

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/wecarbase/config/CloudConfig;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sid.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/wecarbase/config/CloudConfig;->CLOUD_RECORD_SID_FILE:Ljava/lang/String;

    const/16 v2, 0xa

    .line 59
    sput v2, Lcom/tencent/wecarbase/config/CloudConfig;->CLOUD_RECORD_COUNTER:I

    .line 63
    sput v0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_LOW_SPEED_RECORD:I

    .line 65
    sput v1, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_HIGH_SPEED_RECORD:I

    .line 67
    sput v0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_TRACE_RECORD_COUNTER:I

    const/16 v0, 0x258

    .line 70
    sput v0, Lcom/tencent/wecarbase/config/CloudConfig;->CLOUD_RECORD_SID_TIME:I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/wecarbase/config/CloudConfig;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cloud.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/config/CloudConfig;->CLOUD_LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudRecordCounter()I
    .locals 1

    .line 126
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->CLOUD_RECORD_COUNTER:I

    return v0
.end method

.method public static getCloudRecordSidTime()I
    .locals 1

    .line 158
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->CLOUD_RECORD_SID_TIME:I

    return v0
.end method

.method public static getIntervalHighSpeedRecord()I
    .locals 1

    .line 142
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_HIGH_SPEED_RECORD:I

    return v0
.end method

.method public static getIntervalLowSpeedRecord()I
    .locals 1

    .line 134
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_LOW_SPEED_RECORD:I

    return v0
.end method

.method public static getIntervalRecordMoving()I
    .locals 1

    .line 110
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_RECORD_MOVING:I

    return v0
.end method

.method public static getIntervalSendMoving()I
    .locals 1

    .line 118
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_SEND_MOVING:I

    return v0
.end method

.method public static getIntervalTraceRecordCounter()I
    .locals 1

    .line 150
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_TRACE_RECORD_COUNTER:I

    return v0
.end method

.method public static getTcpCarInfoCounter()I
    .locals 1

    .line 102
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->TCP_CAR_INFO_COUNTER:I

    return v0
.end method

.method public static getTcpCarInfoInternal()I
    .locals 1

    .line 94
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->TCP_CAR_INFO_INTERNAL:I

    return v0
.end method

.method public static getTcpHeartBeatInternal()I
    .locals 1

    .line 86
    sget v0, Lcom/tencent/wecarbase/config/CloudConfig;->TCP_HEART_BEAT_INTERNAL:I

    return v0
.end method

.method public static setCloudRecordCounter(I)V
    .locals 0

    .line 130
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->CLOUD_RECORD_COUNTER:I

    return-void
.end method

.method public static setCloudRecordSidTime(I)V
    .locals 0

    .line 162
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->CLOUD_RECORD_SID_TIME:I

    return-void
.end method

.method public static setIntervalHighSpeedRecord(I)V
    .locals 0

    .line 146
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_HIGH_SPEED_RECORD:I

    return-void
.end method

.method public static setIntervalLowSpeedRecord(I)V
    .locals 0

    .line 138
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_LOW_SPEED_RECORD:I

    return-void
.end method

.method public static setIntervalRecordMoving(I)V
    .locals 0

    .line 114
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_RECORD_MOVING:I

    return-void
.end method

.method public static setIntervalSendMoving(I)V
    .locals 0

    .line 122
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_SEND_MOVING:I

    return-void
.end method

.method public static setIntervalTraceRecordCounter(I)V
    .locals 0

    .line 154
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->INTERVAL_TRACE_RECORD_COUNTER:I

    return-void
.end method

.method public static setTcpCarInfoCounter(I)V
    .locals 0

    .line 106
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->TCP_CAR_INFO_COUNTER:I

    return-void
.end method

.method public static setTcpCarInfoInternal(I)V
    .locals 0

    .line 98
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->TCP_CAR_INFO_INTERNAL:I

    return-void
.end method

.method public static setTcpHeartBeatInternal(I)V
    .locals 0

    .line 90
    sput p0, Lcom/tencent/wecarbase/config/CloudConfig;->TCP_HEART_BEAT_INTERNAL:I

    return-void
.end method
