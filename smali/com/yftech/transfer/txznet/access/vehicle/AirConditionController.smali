.class public Lcom/yftech/transfer/txznet/access/vehicle/AirConditionController;
.super Lcom/yftech/transfer/txznet/access/vehicle/AbsBaseController;
.source "AirConditionController.java"


# static fields
.field private static final AC_AIR_CLOSE:Ljava/lang/String; = "ac.air.close"

.field private static final AC_AIR_OPEN:Ljava/lang/String; = "ac.air.open"

.field private static final AC_DEFROST_BEHIND_CLOSE:Ljava/lang/String; = "ac.defrost.behind.close"

.field private static final AC_DEFROST_BEHIND_OPEN:Ljava/lang/String; = "ac.defrost.behind.open"

.field private static final AC_DEFROST_FRONT_CLOSE:Ljava/lang/String; = "ac.defrost.front.close"

.field private static final AC_DEFROST_FRONT_OPEN:Ljava/lang/String; = "ac.defrost.front.open"

.field private static final AC_FAST_COOL_CLOSE:Ljava/lang/String; = "ac.fast.cool.close"

.field private static final AC_FAST_COOL_OPEN:Ljava/lang/String; = "ac.fast.cool.open"

.field private static final AC_FAST_HOT_CLOSE:Ljava/lang/String; = "ac.fast.hot.close"

.field private static final AC_FAST_HOT_OPEN:Ljava/lang/String; = "ac.fast.hot.open"

.field private static final AC_HOT_MAX:Ljava/lang/String; = "ac.hot.max"

.field private static final AC_ICE_CLOSE:Ljava/lang/String; = "ac.ice.close"

.field private static final AC_ICE_MAX:Ljava/lang/String; = "ac.ice.max"

.field private static final AC_ICE_OPEN:Ljava/lang/String; = "ac.ice.open"

.field private static final AC_INTELL_MODE_CLOSE:Ljava/lang/String; = "ac.intell.mode.close"

.field private static final AC_INTELL_MODE_OPEN:Ljava/lang/String; = "ac.intell.mode.open"

.field private static final AC_LOOP_INSIDE:Ljava/lang/String; = "ac.loop.inside"

.field private static final AC_LOOP_OUTSIDE:Ljava/lang/String; = "ac.loop.outside"

.field private static final AC_MAX_DEFROST_BEHIND_CLOSE:Ljava/lang/String; = "ac.max.defrost.behind.close"

.field private static final AC_MAX_DEFROST_BEHIND_OPEN:Ljava/lang/String; = "ac.max.defrost.behind.open"

.field private static final AC_MAX_DEFROST_FRONT_CLOSE:Ljava/lang/String; = "ac.max.defrost.front.close"

.field private static final AC_MAX_DEFROST_FRONT_OPEN:Ljava/lang/String; = "ac.max.defrost.front.open"

.field private static final AC_MODE:Ljava/lang/String; = "ac.mode"

.field private static final AC_TEMP_DEC:Ljava/lang/String; = "ac.temp.dec"

.field private static final AC_TEMP_INC:Ljava/lang/String; = "ac.temp.inc"

.field private static final AC_TEMP_TO:Ljava/lang/String; = "ac.temp.to"

.field private static final AC_WIND_DOWN:Ljava/lang/String; = "ac.wind.down"

.field private static final AC_WIND_MAX:Ljava/lang/String; = "ac.wind.max"

.field private static final AC_WIND_MIN:Ljava/lang/String; = "ac.wind.min"

.field private static final AC_WIND_TO:Ljava/lang/String; = "ac.wind.to"

.field private static final AC_WIND_UP:Ljava/lang/String; = "ac.wind.up"


# instance fields
.field private ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 31

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/yftech/transfer/txznet/access/vehicle/AbsBaseController;-><init>()V

    const-string v0, "ac.air.open"

    const-string v1, "ac.air.close"

    const-string v2, "ac.temp.to"

    const-string v3, "ac.temp.inc"

    const-string v4, "ac.temp.dec"

    const-string v5, "ac.mode"

    const-string v6, "ac.defrost.front.open"

    const-string v7, "ac.defrost.front.close"

    const-string v8, "ac.max.defrost.front.open"

    const-string v9, "ac.max.defrost.front.close"

    const-string v10, "ac.defrost.behind.open"

    const-string v11, "ac.defrost.behind.close"

    const-string v12, "ac.max.defrost.behind.open"

    const-string v13, "ac.max.defrost.behind.close"

    const-string v14, "ac.loop.inside"

    const-string v15, "ac.loop.outside"

    const-string v16, "ac.wind.up"

    const-string v17, "ac.wind.down"

    const-string v18, "ac.wind.to"

    const-string v19, "ac.wind.max"

    const-string v20, "ac.wind.min"

    const-string v21, "ac.hot.max"

    const-string v22, "ac.ice.max"

    const-string v23, "ac.ice.open"

    const-string v24, "ac.ice.close"

    const-string v25, "ac.fast.cool.open"

    const-string v26, "ac.fast.cool.close"

    const-string v27, "ac.fast.hot.open"

    const-string v28, "ac.fast.hot.close"

    const-string v29, "ac.intell.mode.open"

    const-string v30, "ac.intell.mode.close"

    .line 82
    filled-new-array/range {v0 .. v30}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/yftech/transfer/txznet/access/vehicle/AirConditionController;->ACTIONS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public invoke(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yftech/transfer/txznet/access/vehicle/AirConditionController;->ACTIONS:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
