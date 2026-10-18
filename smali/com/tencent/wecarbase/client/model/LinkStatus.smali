.class public Lcom/tencent/wecarbase/client/model/LinkStatus;
.super Ljava/lang/Object;
.source "LinkStatus.java"


# instance fields
.field private isLinked:I

.field private isLoginVUser:I

.field private linkTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsLinked()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LinkStatus;->isLinked:I

    return p0
.end method

.method public getIsLoginVUser()I
    .locals 0

    .line 14
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LinkStatus;->isLoginVUser:I

    return p0
.end method

.method public getLinkTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/tencent/wecarbase/client/model/LinkStatus;->linkTime:J

    return-wide v0
.end method

.method public hasLinked()Z
    .locals 1

    .line 43
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LinkStatus;->isLinked:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoginVUser()Z
    .locals 1

    .line 39
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LinkStatus;->isLoginVUser:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIsLinked(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/tencent/wecarbase/client/model/LinkStatus;->isLinked:I

    return-void
.end method

.method public setIsLoginVUser(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/tencent/wecarbase/client/model/LinkStatus;->isLoginVUser:I

    return-void
.end method

.method public setLinkTime(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/tencent/wecarbase/client/model/LinkStatus;->linkTime:J

    return-void
.end method
