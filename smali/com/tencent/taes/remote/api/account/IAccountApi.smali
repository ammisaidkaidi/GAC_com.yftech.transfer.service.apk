.class public interface abstract Lcom/tencent/taes/remote/api/account/IAccountApi;
.super Ljava/lang/Object;
.source "IAccountApi.java"


# virtual methods
.method public abstract appletAuth(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
.end method

.method public abstract appletLogin(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
.end method

.method public abstract checkAppletSession(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
.end method

.method public abstract getAccountDebugInfo()Ljava/lang/String;
.end method

.method public abstract getAppletAuthStatus(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
.end method

.method public abstract getAppletBaseCarInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
.end method

.method public abstract getAppletUserInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
.end method

.method public abstract getContract(I)Lcom/tencent/taes/remote/api/account/bean/WeCarContract;
.end method

.method public abstract getContractAsync(ILcom/tencent/taes/remote/api/account/listener/IContractCallback;)V
.end method

.method public abstract getNonce()J
.end method

.method public abstract getPhoneNumber(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
.end method

.method public abstract getSessionKey()Ljava/lang/String;
.end method

.method public abstract getTaiAccountInfo(ILjava/util/Map;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getWeCarAccount()Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;
.end method

.method public abstract getWeCarAccount(Lcom/tencent/taes/remote/api/account/listener/AccountListener;)V
.end method

.method public abstract isTAIAuthOk()Z
.end method

.method public abstract logoutTaiAccount(ILjava/util/Map;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract refreshAccessCode(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;)V
.end method

.method public abstract refreshAccessCodeSync(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;
.end method

.method public abstract registerAccountEventReceiverListener(Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;)V
.end method

.method public abstract removeBindAccount(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/bean/TxAccount;)Z
.end method

.method public abstract removeWeCarAccount()Z
.end method

.method public abstract unregisterAccountEventReceiverListener(Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;)V
.end method

.method public abstract updateSessionKey(Ljava/lang/String;J)V
.end method
