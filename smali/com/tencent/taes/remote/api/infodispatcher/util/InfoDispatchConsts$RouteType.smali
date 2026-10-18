.class public interface abstract Lcom/tencent/taes/remote/api/infodispatcher/util/InfoDispatchConsts$RouteType;
.super Ljava/lang/Object;
.source "InfoDispatchConsts.java"

# interfaces
.implements Lcom/tencent/taes/base/api/INoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/infodispatcher/util/InfoDispatchConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RouteType"
.end annotation


# static fields
.field public static final TypeChangeDestNode:I = 0x8

.field public static final TypeNormal:I = 0x0

.field public static final TypeParallelSwitch:I = 0x2

.field public static final TypeRetryRoute:I = 0x7

.field public static final TypeRouteCondition:I = 0x6

.field public static final TypeUpdatePassNode:I = 0x4

.field public static final TypeUpdatePreference:I = 0x3
