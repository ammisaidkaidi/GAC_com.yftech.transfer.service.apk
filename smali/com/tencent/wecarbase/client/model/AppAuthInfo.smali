.class public Lcom/tencent/wecarbase/client/model/AppAuthInfo;
.super Ljava/lang/Object;
.source "AppAuthInfo.java"


# instance fields
.field private appToken:I

.field private appUserId:Ljava/lang/String;

.field private expireTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppToken()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/tencent/wecarbase/client/model/AppAuthInfo;->appToken:I

    return p0
.end method

.method public getAppUserId()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/AppAuthInfo;->appUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getExpireTime()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/tencent/wecarbase/client/model/AppAuthInfo;->expireTime:J

    return-wide v0
.end method

.method public setAppToken(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/tencent/wecarbase/client/model/AppAuthInfo;->appToken:I

    return-void
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/AppAuthInfo;->appUserId:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/tencent/wecarbase/client/model/AppAuthInfo;->expireTime:J

    return-void
.end method
