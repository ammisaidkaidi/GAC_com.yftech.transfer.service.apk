.class public Lcom/tencent/wecarbase/config/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/config/SystemConfig$ConfigReader;
    }
.end annotation


# static fields
.field private static final ourInstance:Lcom/tencent/wecarbase/config/SystemConfig;

.field private static sChannel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/tencent/wecarbase/config/SystemConfig;

    invoke-direct {v0}, Lcom/tencent/wecarbase/config/SystemConfig;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/config/SystemConfig;->ourInstance:Lcom/tencent/wecarbase/config/SystemConfig;

    const-string v0, ""

    .line 34
    sput-object v0, Lcom/tencent/wecarbase/config/SystemConfig;->sChannel:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 5

    .line 37
    sget-object v0, Lcom/tencent/wecarbase/config/SystemConfig;->sChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/tencent/wecarbase/config/SystemConfig;->sChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 39
    new-instance v2, Lcom/tencent/wecarbase/config/SystemConfig$ConfigReader;

    invoke-direct {v2}, Lcom/tencent/wecarbase/config/SystemConfig$ConfigReader;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/wecarbase/config/SystemConfig$ConfigReader;->getChannelId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/wecarbase/config/SystemConfig;->sChannel:Ljava/lang/String;

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string v0, "SystemConfig"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get channel from system file spend "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_1
    sget-object v0, Lcom/tencent/wecarbase/config/SystemConfig;->sChannel:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/config/SystemConfig;
    .locals 1

    .line 28
    sget-object v0, Lcom/tencent/wecarbase/config/SystemConfig;->ourInstance:Lcom/tencent/wecarbase/config/SystemConfig;

    return-object v0
.end method
