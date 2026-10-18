.class public Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;
.super Ljava/lang/Object;
.source "TaskReporter.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter$ResultCode;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "speech_use_20483"


# instance fields
.field private mLoadEndTime:J

.field private mLoadStartTime:J

.field private mLoadTotalTime:J

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResultCode:Ljava/lang/String;

.field private mResultMsg:Ljava/lang/String;

.field private mSpeechClient:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

.field private mTaskId:J


# direct methods
.method private constructor <init>(JLcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mTaskId:J

    .line 18
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mLoadStartTime:J

    .line 19
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mLoadEndTime:J

    .line 20
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mLoadTotalTime:J

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mResultCode:Ljava/lang/String;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mResultMsg:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    .line 33
    iput-wide p1, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mTaskId:J

    .line 34
    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mSpeechClient:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    return-void
.end method

.method public static create(JLcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;)Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;
    .locals 1

    .line 29
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;-><init>(JLcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;)V

    return-object v0
.end method


# virtual methods
.method public keyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;
    .locals 1

    const-string v0, "key"

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public loadEndTime(J)Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mLoadEndTime:J

    return-object p0
.end method

.method public loadStartTime(J)Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mLoadStartTime:J

    return-object p0
.end method

.method public report()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    const-string v1, "task_id"

    iget-wide v2, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mTaskId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    const-string v1, "loading_start_time"

    iget-wide v2, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mLoadStartTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    const-string v1, "loading_finish_time"

    iget-wide v2, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mLoadEndTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    const-string v1, "loading_total_time"

    iget-wide v2, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mLoadTotalTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mSpeechClient:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    invoke-interface {v2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    const-string v1, "app_name"

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mSpeechClient:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    invoke-interface {v2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mSpeechClient:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    invoke-interface {v2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    const-string v1, "result_code"

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mResultCode:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    const-string v1, "result_msg"

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mResultMsg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mSpeechClient:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    const-string v1, "speech_use_20483"

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;->reportAction(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public resultCode(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public resultMsg(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;->mResultMsg:Ljava/lang/String;

    return-object p0
.end method
