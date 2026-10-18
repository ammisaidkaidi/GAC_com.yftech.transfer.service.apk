.class public Lcom/tencent/wecarbase/client/SimpleEventListener;
.super Ljava/lang/Object;
.source "SimpleEventListener.java"

# interfaces
.implements Lcom/tencent/wecarbase/client/AccountEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFeedBackCenterOpenOrClose(Z)V
    .locals 0

    return-void
.end method

.method public onQQAccountBind(Ljava/lang/String;Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 0

    return-void
.end method

.method public onQQAccountUnbind(Ljava/lang/String;Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 0

    return-void
.end method

.method public onQQAccountUpdate(Ljava/lang/String;Lcom/tencent/wecarbase/model/TxAccount;Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 0

    return-void
.end method

.method public onWXAccountBind(Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 0

    return-void
.end method

.method public onWXAccountUnbind(Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 0

    return-void
.end method

.method public onWXAccountUpdate(Lcom/tencent/wecarbase/model/TxAccount;Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 0

    return-void
.end method

.method public onWXBindActivityOpenOrClose(Z)V
    .locals 0

    return-void
.end method

.method public onWeCarIdChanged(Lcom/tencent/wecarbase/model/WeCarAccount;Lcom/tencent/wecarbase/model/WeCarAccount;)V
    .locals 0

    return-void
.end method

.method public onWeCarIdRegistered(Lcom/tencent/wecarbase/model/WeCarAccount;)V
    .locals 0

    return-void
.end method
