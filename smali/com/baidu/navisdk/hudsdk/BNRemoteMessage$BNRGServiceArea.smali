.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGServiceArea"
.end annotation


# instance fields
.field private distance:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceAreaDistance()I
    .locals 0

    .line 185
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;->distance:I

    return p0
.end method

.method public getServiceAreaName()Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceAreaDistance(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;->distance:I

    return-void
.end method

.method public setServiceAreaName(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;->name:Ljava/lang/String;

    return-void
.end method
