.class public Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;
.super Ljava/lang/Object;
.source "BaseVoiceParams.java"


# instance fields
.field public displayVrSprite:Z

.field public filter:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;

.field public hints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public playCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;

.field public playSound:Z

.field public rejectCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;

.field public requestVuiPolicy:Z

.field public semanticContext:Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;

.field public speechSilTimeout:J

.field public speechTimeout:J

.field public startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

.field public tips:Ljava/lang/String;

.field public tts:Ljava/lang/String;

.field public ttsSequence:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

.field public vadEndSilTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->displayVrSprite:Z

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->playSound:Z

    .line 82
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->requestVuiPolicy:Z

    return-void
.end method
