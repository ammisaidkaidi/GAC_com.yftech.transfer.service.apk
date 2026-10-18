.class public Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult;
.super Ljava/lang/Object;
.source "SegmentResult.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult$Word;
    }
.end annotation


# instance fields
.field private words:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seg_result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult$Word;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/TextItem;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult;->words:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult;->words:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult$Word;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult$Word;->access$000(Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult$Word;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult;->words:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult;->words:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method
