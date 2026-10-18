.class public Lcom/tencent/wecarflow/contentsdk/bean/NewsTabItemBean;
.super Ljava/lang/Object;
.source "NewsTabItemBean.java"


# instance fields
.field private cover:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private newslist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/NewsItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/NewsTabItemBean;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/NewsTabItemBean;->name:Ljava/lang/String;

    return-object p0
.end method
