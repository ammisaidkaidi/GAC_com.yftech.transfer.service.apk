.class public Lcom/tencent/taifeedback/upload/sdk/service/LogcatService;
.super Landroid/app/IntentService;
.source "LogcatService.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "LogcatService"

.field private static final TAG:Ljava/lang/String; = "LogcatService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "LogcatService"

    .line 21
    invoke-direct {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/service/LogcatService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/tencent/taifeedback/upload/sdk/service/LogcatService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 31
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    const-string v0, ".log"

    invoke-virtual {p1, p0, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getLogPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->seekLogcat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_0
    sget-object p0, Lcom/tencent/taifeedback/upload/sdk/service/LogcatService;->TAG:Ljava/lang/String;

    const-string p1, "sdcard does not exist!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
