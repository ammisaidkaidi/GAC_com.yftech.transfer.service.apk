.class interface abstract Lcom/tencent/wecarbase/client/AccountEventListener;
.super Ljava/lang/Object;
.source "AccountEventListener.java"


# virtual methods
.method public abstract onAuthChanged(Z)V
.end method

.method public abstract onQQAccountBind(Ljava/lang/String;Lcom/tencent/wecarbase/model/TxAccount;)V
.end method

.method public abstract onQQAccountUnbind(Ljava/lang/String;Lcom/tencent/wecarbase/model/TxAccount;)V
.end method

.method public abstract onQQAccountUpdate(Ljava/lang/String;Lcom/tencent/wecarbase/model/TxAccount;Lcom/tencent/wecarbase/model/TxAccount;)V
.end method

.method public abstract onWXAccountBind(Lcom/tencent/wecarbase/model/TxAccount;)V
.end method

.method public abstract onWXAccountUnbind(Lcom/tencent/wecarbase/model/TxAccount;)V
.end method

.method public abstract onWXAccountUpdate(Lcom/tencent/wecarbase/model/TxAccount;Lcom/tencent/wecarbase/model/TxAccount;)V
.end method

.method public abstract onWXBindActivityOpenOrClose(Z)V
.end method

.method public abstract onWeCarIdChanged(Lcom/tencent/wecarbase/model/WeCarAccount;Lcom/tencent/wecarbase/model/WeCarAccount;)V
.end method

.method public abstract onWeCarIdRegistered(Lcom/tencent/wecarbase/model/WeCarAccount;)V
.end method
