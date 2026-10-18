.class public Lcom/tencent/wecarflow/contentsdk/bean/SearchProgramResponseBean;
.super Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;
.source "SearchProgramResponseBean.java"


# instance fields
.field album_list:Ljava/util/List;
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

    .line 11
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumlist()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SearchProgramResponseBean;->album_list:Ljava/util/List;

    return-object p0
.end method
