.class public Lcom/tencent/wecar/tts/client/ttslist/beans/TtsListResult;
.super Ljava/lang/Object;
.source "TtsListResult.java"


# instance fields
.field private errcode:I

.field private errmsg:Ljava/lang/String;

.field private ttsDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrcode()I
    .locals 0

    .line 12
    iget p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsListResult;->errcode:I

    return p0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsListResult;->errmsg:Ljava/lang/String;

    return-object p0
.end method

.method public getTtsDataList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsListResult;->ttsDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setErrcode(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsListResult;->errcode:I

    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsListResult;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public setTtsDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsListResult;->ttsDataList:Ljava/util/ArrayList;

    return-void
.end method
