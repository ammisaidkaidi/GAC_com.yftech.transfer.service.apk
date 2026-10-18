.class public Lcom/tencent/taes/framework/bean/BaseInfo;
.super Ljava/lang/Object;
.source "BaseInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/taes/framework/bean/BaseInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6ab5600587d4c6adL


# instance fields
.field protected mAppId:Ljava/lang/String;

.field protected mLastUsedTime:J

.field protected mType:Lcom/tencent/taes/framework/bean/AppType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/taes/framework/bean/BaseInfo;)I
    .locals 2

    .line 54
    iget-wide v0, p1, Lcom/tencent/taes/framework/bean/BaseInfo;->mLastUsedTime:J

    iget-wide p0, p0, Lcom/tencent/taes/framework/bean/BaseInfo;->mLastUsedTime:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/tencent/taes/framework/bean/BaseInfo;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/framework/bean/BaseInfo;->compareTo(Lcom/tencent/taes/framework/bean/BaseInfo;)I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tencent/taes/framework/bean/BaseInfo;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getLastUsedTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/tencent/taes/framework/bean/BaseInfo;->mLastUsedTime:J

    return-wide v0
.end method

.method public getType()Lcom/tencent/taes/framework/bean/AppType;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/taes/framework/bean/BaseInfo;->mType:Lcom/tencent/taes/framework/bean/AppType;

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/taes/framework/bean/BaseInfo;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setLastUsedTime(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/tencent/taes/framework/bean/BaseInfo;->mLastUsedTime:J

    return-void
.end method

.method public setType(Lcom/tencent/taes/framework/bean/AppType;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tencent/taes/framework/bean/BaseInfo;->mType:Lcom/tencent/taes/framework/bean/AppType;

    return-void
.end method
