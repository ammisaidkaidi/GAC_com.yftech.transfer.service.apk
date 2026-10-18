.class public Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;
.super Ljava/lang/Object;
.source "BrakeStateModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BRAKE_STATE_DOWN:I = 0x1

.field public static final BRAKE_STATE_NONE:I = -0x1

.field public static final BRAKE_STATE_UP:I = 0x0

.field private static final serialVersionUID:J = -0x27c072be6babd2b6L


# instance fields
.field private mBrakeState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;->mBrakeState:I

    return-void
.end method


# virtual methods
.method public getBrakeState()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;->mBrakeState:I

    return p0
.end method

.method public setBrakeState(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;->mBrakeState:I

    return-void
.end method
