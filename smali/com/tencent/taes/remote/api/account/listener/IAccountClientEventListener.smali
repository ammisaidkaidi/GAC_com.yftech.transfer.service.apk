.class public interface abstract Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;
.super Ljava/lang/Object;
.source "IAccountClientEventListener.java"


# virtual methods
.method public abstract onAuthChanged(Z)V
.end method

.method public abstract onWXAccountBind(Lcom/tencent/taes/remote/api/account/bean/TxAccount;)V
.end method

.method public abstract onWXAccountUnbind(Lcom/tencent/taes/remote/api/account/bean/TxAccount;)V
.end method

.method public abstract onWXAccountUpdate(Lcom/tencent/taes/remote/api/account/bean/TxAccount;Lcom/tencent/taes/remote/api/account/bean/TxAccount;)V
.end method

.method public abstract onWXTicketUpdate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWeCarIdChanged(Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;)V
.end method

.method public abstract onWeCarIdRegistered(Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;)V
.end method
