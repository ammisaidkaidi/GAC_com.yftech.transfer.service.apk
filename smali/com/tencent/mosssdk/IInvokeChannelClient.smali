.class public interface abstract Lcom/tencent/mosssdk/IInvokeChannelClient;
.super Ljava/lang/Object;
.source "IInvokeChannelClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mosssdk/IInvokeChannelClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract invoke(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mosssdk/IInvokeChannelCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract invokeSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Lcom/tencent/mosssdk/IInvokeChannelCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregister(Ljava/lang/String;Lcom/tencent/mosssdk/IInvokeChannelCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
