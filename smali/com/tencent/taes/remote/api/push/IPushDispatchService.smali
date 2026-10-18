.class public interface abstract Lcom/tencent/taes/remote/api/push/IPushDispatchService;
.super Ljava/lang/Object;
.source "IPushDispatchService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addMessage(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerMockPushListener(Lcom/tencent/taes/remote/api/push/IPushDispatchListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerPushConnectionStateListener(Lcom/tencent/taes/remote/api/push/IPushConnectionStateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerPushDispatchListener(Ljava/lang/String;Lcom/tencent/taes/remote/api/push/IPushDispatchListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribe(Ljava/util/List;Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
