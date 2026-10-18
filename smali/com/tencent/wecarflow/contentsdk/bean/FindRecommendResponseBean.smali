.class public Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendResponseBean;
.super Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;
.source "FindRecommendResponseBean.java"


# instance fields
.field content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendItem;",
            ">;"
        }
    .end annotation
.end field

.field fix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/FindFixItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendItem;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendResponseBean;->content:Ljava/util/List;

    return-object p0
.end method

.method public getFix()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/FindFixItem;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendResponseBean;->fix:Ljava/util/List;

    return-object p0
.end method
