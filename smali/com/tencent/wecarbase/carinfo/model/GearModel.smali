.class public Lcom/tencent/wecarbase/carinfo/model/GearModel;
.super Ljava/lang/Object;
.source "GearModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final GEAR_STATE_D:I = 0x3

.field public static final GEAR_STATE_D1:I = 0x5

.field public static final GEAR_STATE_D2:I = 0x6

.field public static final GEAR_STATE_D3:I = 0x7

.field public static final GEAR_STATE_D4:I = 0x8

.field public static final GEAR_STATE_D5:I = 0x9

.field public static final GEAR_STATE_D6:I = 0xa

.field public static final GEAR_STATE_N:I = 0x2

.field public static final GEAR_STATE_NONE:I = -0x1

.field public static final GEAR_STATE_P:I = 0x0

.field public static final GEAR_STATE_R:I = 0x1

.field public static final GEAR_STATE_S:I = 0x4

.field private static final serialVersionUID:J = -0x687e1c016cc51601L


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/GearModel;->mState:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/GearModel;->mState:I

    return p0
.end method

.method public setState(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/GearModel;->mState:I

    return-void
.end method
