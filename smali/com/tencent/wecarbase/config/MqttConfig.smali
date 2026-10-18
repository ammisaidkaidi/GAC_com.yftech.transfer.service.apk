.class public Lcom/tencent/wecarbase/config/MqttConfig;
.super Ljava/lang/Object;
.source "MqttConfig.java"


# static fields
.field public static final AI_PUSH_TOPIC:Ljava/lang/String; = "/facpush"

.field public static final AUTO_RECONNECT:Z = true

.field public static final BUFFER_SIZE:I = 0x258

.field public static final CA_FILE:Ljava/lang/String; = "ca-cert.crt"

.field public static final CLEAN_SESSION:Z = false

.field public static final DEBUG:Z = false

.field public static final MQTT_HALLAY_SSL_URL_DEV:Ljava/lang/String; = "mqttlinktlstest.map.qq.com"

.field public static final MQTT_HALLAY_SSL_URL_ONLINE:Ljava/lang/String; = "mqttlinktls.map.qq.com"

.field public static final MQTT_HALLAY_TCP_URL_DEV:Ljava/lang/String; = "mqttlinktest.map.qq.com"

.field public static final MQTT_HALLAY_TCP_URL_ONLINE:Ljava/lang/String; = "mqttlink.map.qq.com"

.field public static final MQTT_HALLAY_URL_DEV:Ljava/lang/String; = "http://mqtthalley.sparta.html5.qq.com/"

.field public static final MQTT_HALLAY_URL_ONLINE:Ljava/lang/String; = "http://mqtthalley.wecar.map.qq.com/"

.field public static final MQTT_SERVER_HOST_DEV:Ljava/lang/String; = "platmsgc.wecar.map.qq.com"

.field public static final MQTT_SERVER_HOST_ONLINE:Ljava/lang/String; = "platmsg.wecar.map.qq.com"

.field public static final MQTT_SERVER_PORT:I = 0x2328

.field public static final PUBLISH_QOS:I = 0x0

.field public static final PUSH_ACTION:Ljava/lang/String; = "com.tencent.wecarcloud.PUSH"

.field public static final PUSH_CONTENT:Ljava/lang/String; = "push_content"

.field public static final PUSH_STATIC_ACTION:Ljava/lang/String; = "com.tencent.wecarcloud.PUSH_STATIC"

.field public static final RETAIN:Z = false

.field public static final ROOT_PATH:Ljava/lang/String;

.field public static final TCP_HEART_BEAT_INTERNAL:I = 0x1e

.field public static final TOPIC_CONFIG:Ljava/lang/String; = "config"

.field public static final TOPIC_LOC:Ljava/lang/String; = "loc"

.field public static final USERNAME:Ljava/lang/String; = "proto=1"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
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

    sput-object v0, Lcom/tencent/wecarbase/config/MqttConfig;->ROOT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
