.class public Lcom/tencent/wecarflow/contentsdk/bean/SearchSongResponseBean;
.super Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;
.source "SearchSongResponseBean.java"


# instance fields
.field songlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;",
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
.method public getSonglist()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SearchSongResponseBean;->songlist:Ljava/util/List;

    return-object p0
.end method
