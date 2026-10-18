.class public Lcom/tencent/wecarflow/contentsdk/bean/SearchSingerResponseBean;
.super Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;
.source "SearchSingerResponseBean.java"


# instance fields
.field singer_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getSingerList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SearchSingerResponseBean;->singer_list:Ljava/util/List;

    return-object p0
.end method

.method public setSingerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SearchSingerResponseBean;->singer_list:Ljava/util/List;

    return-void
.end method
