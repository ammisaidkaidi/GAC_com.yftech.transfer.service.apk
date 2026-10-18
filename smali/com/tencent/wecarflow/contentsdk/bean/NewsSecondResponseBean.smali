.class public Lcom/tencent/wecarflow/contentsdk/bean/NewsSecondResponseBean;
.super Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;
.source "NewsSecondResponseBean.java"


# instance fields
.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;",
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
.method public getTabs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/NewsSecondResponseBean;->tabs:Ljava/util/List;

    return-object p0
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/NewsSecondResponseBean;->tabs:Ljava/util/List;

    return-void
.end method
