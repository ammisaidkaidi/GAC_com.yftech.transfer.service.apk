.class public interface abstract Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;
.super Ljava/lang/Object;
.source "CabinKeyEventAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CabinKeyEventDispatcher"
.end annotation


# virtual methods
.method public abstract dispatchKeyEvent(IIIJJ)V
.end method

.method public abstract dispatchKeyLongPressEvent(IIIJJ)V
.end method

.method public abstract getRegisteredKeyCodeSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
