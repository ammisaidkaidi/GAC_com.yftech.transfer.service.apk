.class public interface abstract Lcom/tencent/tai/pal/input/c;
.super Ljava/lang/Object;
.source "ICabinKeyEventHandlerAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/input/c$a;
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/tencent/tai/pal/input/KeyFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
