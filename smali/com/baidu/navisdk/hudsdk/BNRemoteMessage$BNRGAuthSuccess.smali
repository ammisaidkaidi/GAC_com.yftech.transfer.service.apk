.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGAuthSuccess"
.end annotation


# instance fields
.field private authResMsg:Ljava/lang/String;

.field private serverType:I

.field private serverVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthResMsg()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->authResMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getServerType()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->serverType:I

    return p0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->serverVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthResMsg(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->authResMsg:Ljava/lang/String;

    return-void
.end method

.method public setServerType(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->serverType:I

    return-void
.end method

.method public setServerVersion(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->serverVersion:Ljava/lang/String;

    return-void
.end method
