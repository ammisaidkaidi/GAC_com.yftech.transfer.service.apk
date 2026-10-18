.class public Lcom/tencent/wecarbase/carinfo/model/CarTypeModel;
.super Ljava/lang/Object;
.source "CarTypeModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_ELECTRIC_CAR:I = 0x2

.field public static final TYPE_FUEL_CAR:I = 0x1

.field public static final TYPE_MIX_CAR:I = 0x3

.field private static final serialVersionUID:J = -0x588763e749f64c85L


# instance fields
.field private carType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarType()I
    .locals 0

    .line 21
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/CarTypeModel;->carType:I

    return p0
.end method

.method public setCarType(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/CarTypeModel;->carType:I

    return-void
.end method
