.class public Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;
.super Ljava/lang/Object;
.source "DoorStatusModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4742958642fc9fe6L


# instance fields
.field public mEngineCover:I

.field public mFrontLeftDoor:I

.field public mFrontRightDoor:I

.field public mRearLeftDoor:I

.field public mRearRightDoor:I

.field public mSkylight:I

.field public mTank:I

.field public mTrunk:I

.field public mWindShield:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mFrontLeftDoor:I

    .line 12
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mFrontRightDoor:I

    .line 13
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mRearLeftDoor:I

    .line 14
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mRearRightDoor:I

    .line 15
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mSkylight:I

    .line 16
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mEngineCover:I

    .line 17
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mTrunk:I

    .line 18
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mTank:I

    .line 19
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mWindShield:I

    return-void
.end method
