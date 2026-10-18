.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurShapeIndexUpdate;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGCurShapeIndexUpdate"
.end annotation


# instance fields
.field public mFromStartDist:I

.field public mShapeIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromStartDist()I
    .locals 0

    .line 648
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurShapeIndexUpdate;->mFromStartDist:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 642
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurShapeIndexUpdate;->mShapeIndex:I

    return p0
.end method
