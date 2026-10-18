.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarFreeStatus;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGCarFreeStatus"
.end annotation


# instance fields
.field public mIsCarFree:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarFreeStatus()Z
    .locals 0

    .line 511
    iget-boolean p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarFreeStatus;->mIsCarFree:Z

    return p0
.end method
