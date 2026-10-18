.class public Lcom/tencent/wecarflow/contentsdk/bean/TabBean;
.super Ljava/lang/Object;
.source "TabBean.java"


# instance fields
.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/TabBean;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/TabBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/TabBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/TabBean;->title:Ljava/lang/String;

    return-void
.end method
