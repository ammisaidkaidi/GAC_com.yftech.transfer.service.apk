.class public interface abstract Lcom/tencent/taes/remote/api/account/listener/ITAIContractCallback;
.super Ljava/lang/Object;
.source "ITAIContractCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/account/listener/ITAIContractCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/tencent/taes/remote/api/account/bean/WeCarContract;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
