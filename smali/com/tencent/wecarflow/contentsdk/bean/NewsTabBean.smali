.class public Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;
.super Lcom/tencent/wecarflow/contentsdk/bean/TabBean;
.source "NewsTabBean.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/NewsTabItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/bean/TabBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/NewsTabItemBean;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;->list:Ljava/util/List;

    return-object p0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/NewsTabItemBean;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;->list:Ljava/util/List;

    return-void
.end method
