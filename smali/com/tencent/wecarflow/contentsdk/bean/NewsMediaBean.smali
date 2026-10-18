.class public Lcom/tencent/wecarflow/contentsdk/bean/NewsMediaBean;
.super Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;
.source "NewsMediaBean.java"


# instance fields
.field publishTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getPublishTime()Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/NewsMediaBean;->publishTime:Ljava/lang/String;

    return-object p0
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/NewsMediaBean;->publishTime:Ljava/lang/String;

    return-void
.end method
