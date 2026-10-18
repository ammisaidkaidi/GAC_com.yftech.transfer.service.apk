.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNextRoad;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGNextRoad"
.end annotation


# instance fields
.field private nextRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextRoadName()Ljava/lang/String;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNextRoad;->nextRoadName:Ljava/lang/String;

    return-object p0
.end method

.method public setNextRoadName(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNextRoad;->nextRoadName:Ljava/lang/String;

    return-void
.end method
