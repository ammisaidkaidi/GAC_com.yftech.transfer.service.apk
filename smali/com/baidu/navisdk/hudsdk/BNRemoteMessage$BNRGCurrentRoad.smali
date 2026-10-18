.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGCurrentRoad"
.end annotation


# instance fields
.field private curRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentRoadName()Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;->curRoadName:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentRoadName(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;->curRoadName:Ljava/lang/String;

    return-void
.end method
