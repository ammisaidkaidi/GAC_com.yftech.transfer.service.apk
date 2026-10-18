.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;
.super Ljava/lang/Object;
.source "SemanticData.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemanticBean"
.end annotation


# instance fields
.field private mDomain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "domain"
    .end annotation
.end field

.field private mIntent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intent"
    .end annotation
.end field

.field private mQuery:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "query"
    .end annotation
.end field

.field private mSessionComplete:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_complete"
    .end annotation
.end field

.field private mSlots:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slots"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->mIntent:Ljava/lang/String;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public getSlots()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;",
            ">;"
        }
    .end annotation

    .line 543
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->mSlots:Ljava/util/List;

    return-object p0
.end method

.method public isSessionComplete()Z
    .locals 0

    .line 539
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->mSessionComplete:Z

    return p0
.end method
