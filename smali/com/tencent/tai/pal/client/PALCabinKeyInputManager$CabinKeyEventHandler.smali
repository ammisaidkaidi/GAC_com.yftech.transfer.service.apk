.class public interface abstract Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;
.super Ljava/lang/Object;
.source "PALCabinKeyInputManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/PALCabinKeyInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CabinKeyEventHandler"
.end annotation


# virtual methods
.method public abstract getKeyFilter()Lcom/tencent/tai/pal/input/KeyFilter;
.end method

.method public abstract onKeyEvent(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V
.end method

.method public abstract onKeyLongPressEvent(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V
.end method
