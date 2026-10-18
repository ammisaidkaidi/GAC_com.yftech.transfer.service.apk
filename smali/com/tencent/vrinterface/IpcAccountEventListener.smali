.class public interface abstract Lcom/tencent/vrinterface/IpcAccountEventListener;
.super Ljava/lang/Object;
.source "IpcAccountEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWXAccountBind(Lcom/tencent/vrcommon/account/VrAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWXAccountUnbind(Lcom/tencent/vrcommon/account/VrAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWXAccountUpdate(Lcom/tencent/vrcommon/account/VrAccount;Lcom/tencent/vrcommon/account/VrAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWeCarIdChanged(Lcom/tencent/vrcommon/account/VrAccount;Lcom/tencent/vrcommon/account/VrAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWeCarIdRegistered(Lcom/tencent/vrcommon/account/VrAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
