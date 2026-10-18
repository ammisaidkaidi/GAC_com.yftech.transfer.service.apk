.class public Lcom/tencent/wecarspeech/clientsdk/model/SegmentText;
.super Ljava/lang/Object;
.source "SegmentText.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mSegmentTxt:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seg_txt"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/TextItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentText;->mSegmentTxt:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentText;->mSegmentTxt:Ljava/util/List;

    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/TextItem;

    invoke-direct {v0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/model/TextItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Lcom/tencent/wecarspeech/clientsdk/model/TextItem;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentText;->mSegmentTxt:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/model/TextItem;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentText;->mSegmentTxt:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
