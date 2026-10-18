.class public Lcom/tencent/wecarflow/contentsdk/bean/RadioTabBean;
.super Lcom/tencent/wecarflow/contentsdk/bean/TabBean;
.source "RadioTabBean.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;",
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
            "Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/RadioTabBean;->list:Ljava/util/List;

    return-object p0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/RadioTabBean;->list:Ljava/util/List;

    return-void
.end method
