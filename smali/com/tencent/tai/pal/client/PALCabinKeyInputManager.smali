.class public interface abstract Lcom/tencent/tai/pal/client/PALCabinKeyInputManager;
.super Ljava/lang/Object;
.source "PALCabinKeyInputManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;
    }
.end annotation


# virtual methods
.method public abstract registerCabinKeyEventHandler(Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;)V
.end method

.method public abstract setCabinKeyEventListener(Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;)V
.end method

.method public abstract unregisterCabinKeyEventHandler(Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;)V
.end method
