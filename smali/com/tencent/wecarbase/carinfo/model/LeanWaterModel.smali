.class public Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;
.super Ljava/lang/Object;
.source "LeanWaterModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LEAN_WATER_STATE_LOW:I = 0x0

.field public static final LEAN_WATER_STATE_NONE:I = -0x1

.field public static final LEAN_WATER_STATE_NORMAL:I = 0x1

.field private static final serialVersionUID:J = 0x52a78962bd03b311L


# instance fields
.field private mLeanWaterState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;->mLeanWaterState:I

    return-void
.end method


# virtual methods
.method public getLeanWaterState()I
    .locals 0

    .line 21
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;->mLeanWaterState:I

    return p0
.end method

.method public setLeanWaterState(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;->mLeanWaterState:I

    return-void
.end method
