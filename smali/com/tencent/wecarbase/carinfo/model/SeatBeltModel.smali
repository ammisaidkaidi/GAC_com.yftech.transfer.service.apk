.class public Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;
.super Ljava/lang/Object;
.source "SeatBeltModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SEAT_BELT_STATE_NONE:I = -0x1

.field public static final SEAT_BELT_STATE_OFF:I = 0x0

.field public static final SEAT_BELT_STATE_ON:I = 0x1

.field private static final serialVersionUID:J = 0x48074bb51f74e5dL


# instance fields
.field private mSeatBelt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;->mSeatBelt:I

    return-void
.end method


# virtual methods
.method public getSeatBelt()I
    .locals 0

    .line 20
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;->mSeatBelt:I

    return p0
.end method

.method public setSeatBelt(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;->mSeatBelt:I

    return-void
.end method
