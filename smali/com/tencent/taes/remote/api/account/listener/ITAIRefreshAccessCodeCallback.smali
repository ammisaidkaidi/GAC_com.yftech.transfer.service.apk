.class public interface abstract Lcom/tencent/taes/remote/api/account/listener/ITAIRefreshAccessCodeCallback;
.super Ljava/lang/Object;
.source "ITAIRefreshAccessCodeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/account/listener/ITAIRefreshAccessCodeCallback$Stub;
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

.method public abstract onSuccess(Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
