.class public abstract Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "CabinKeyEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract registerCabinKeyEventDispatcher(Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;)V
.end method

.method public abstract unregisterCabinKeyEventDispatcher(Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;)V
.end method
