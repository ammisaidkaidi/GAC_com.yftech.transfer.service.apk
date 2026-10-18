.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarTunelInfo;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGCarTunelInfo"
.end annotation


# instance fields
.field public mIsInTunel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsInTunel()I
    .locals 0

    .line 522
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarTunelInfo;->mIsInTunel:I

    return p0
.end method
