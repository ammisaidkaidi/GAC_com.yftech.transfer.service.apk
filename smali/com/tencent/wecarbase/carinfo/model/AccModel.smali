.class public Lcom/tencent/wecarbase/carinfo/model/AccModel;
.super Ljava/lang/Object;
.source "AccModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ACC_STATE_NONE:I = -0x1

.field public static final ACC_STATE_OFF:I = 0x0

.field public static final ACC_STATE_ON:I = 0x1

.field public static final ACC_STATE_SCREEN_ON:I = 0x3

.field public static final ACC_STATE_TRUE_OFF:I = 0x2

.field private static final serialVersionUID:J = 0x189aa6137c19c85aL


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/AccModel;->mState:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AccModel;->mState:I

    return p0
.end method

.method public setState(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AccModel;->mState:I

    return-void
.end method
