.class public interface abstract Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener;
.super Ljava/lang/Object;
.source "IAccountEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEventReceiver(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
