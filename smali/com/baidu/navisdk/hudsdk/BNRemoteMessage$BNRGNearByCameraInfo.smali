.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGNearByCameraInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo$CameraInfo;
    }
.end annotation


# instance fields
.field public mCameraInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo$CameraInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNearByCameraInfoList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo$CameraInfo;",
            ">;"
        }
    .end annotation

    .line 659
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo;->mCameraInfoList:Ljava/util/ArrayList;

    return-object p0
.end method
