.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticJson;
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
    name = "SemanticJson"
.end annotation


# instance fields
.field private mStatus:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$Status;
    .locals 0

    .line 553
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticJson;->mStatus:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$Status;

    return-object p0
.end method
