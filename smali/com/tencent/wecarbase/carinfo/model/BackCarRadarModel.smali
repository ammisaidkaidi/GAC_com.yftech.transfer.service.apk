.class public Lcom/tencent/wecarbase/carinfo/model/BackCarRadarModel;
.super Ljava/lang/Object;
.source "BackCarRadarModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x27761f1d693f8c89L


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getA()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/BackCarRadarModel;->a:I

    return p0
.end method

.method public getB()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/model/BackCarRadarModel;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setA(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/BackCarRadarModel;->a:I

    return-void
.end method

.method public setB(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/model/BackCarRadarModel;->b:Ljava/lang/String;

    return-void
.end method
