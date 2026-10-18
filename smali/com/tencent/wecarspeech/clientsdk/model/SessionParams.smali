.class public Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;
.super Ljava/lang/Object;
.source "SessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;
    }
.end annotation


# static fields
.field private static final TASK_NOT_EXIST:I


# instance fields
.field public mAppId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appId"
    .end annotation
.end field

.field public mClearSlotsInStack:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clearSlotsInStack"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayUI:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayUI"
    .end annotation
.end field

.field public mHints:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsSeriesSession:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSeriesSession"
    .end annotation
.end field

.field public mMultiTurnTmplInfo:Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "multiTurnTmplInfo"
    .end annotation
.end field

.field public mMutiTurnExtendIntents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mutiTurnExtendIntents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPlaySound:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playSound"
    .end annotation
.end field

.field public mRequestVuiPolicy:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestVuiPolicy"
    .end annotation
.end field

.field public mSemanticContext:Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "semanticJsonContext"
    .end annotation
.end field

.field public mSeriesDomain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seriesDomain"
    .end annotation
.end field

.field public mSeriesIntent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seriesIntent"
    .end annotation
.end field

.field public mSeriesVerifySemanticInfo:Lcom/tencent/wecarspeech/clientsdk/model/SeriesVerifySemanticInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seriesVerifySemanticInfo"
    .end annotation
.end field

.field public mSpeechSilTimeout:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speechSilTimeout"
    .end annotation
.end field

.field public mSpeechTimeout:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speechTimeout"
    .end annotation
.end field

.field public mTaskId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "taskId"
    .end annotation
.end field

.field public mTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tips"
    .end annotation
.end field

.field public mTrvWords:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trvWords"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTts:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tts"
    .end annotation
.end field

.field public mTtsSequence:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ttsSequence"
    .end annotation
.end field

.field public mVadEndSilTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vadEndSilTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mTaskId:J

    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mDisplayUI:Z

    const/4 v3, 0x0

    .line 31
    iput-boolean v3, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mPlaySound:Z

    .line 33
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSpeechTimeout:J

    .line 35
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSpeechSilTimeout:J

    .line 37
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mVadEndSilTime:J

    .line 41
    iput-boolean v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mRequestVuiPolicy:Z

    .line 45
    iput-boolean v3, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mIsSeriesSession:Z

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSeriesDomain:Ljava/lang/String;

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSeriesIntent:Ljava/lang/String;

    return-void
.end method
