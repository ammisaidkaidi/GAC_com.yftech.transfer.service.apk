.class public Lcom/tencent/wecarbase/client/model/LinkInfo;
.super Ljava/lang/Object;
.source "LinkInfo.java"


# instance fields
.field private headimgurl:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadimgurl()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LinkInfo;->headimgurl:Ljava/lang/String;

    return-object p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LinkInfo;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LinkInfo;->userid:Ljava/lang/String;

    return-object p0
.end method

.method public setHeadimgurl(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LinkInfo;->headimgurl:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LinkInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LinkInfo;->userid:Ljava/lang/String;

    return-void
.end method
