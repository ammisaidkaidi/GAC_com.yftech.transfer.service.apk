.class Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$2;
.super Lcom/tencent/taes/remote/api/account/listener/ITAIContractCallback$Stub;
.source "AccountRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->getContractAsync(ILcom/tencent/taes/remote/api/account/listener/IContractCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;

.field final synthetic val$itaiContractCallback:Lcom/tencent/taes/remote/api/account/listener/IContractCallback;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;Lcom/tencent/taes/remote/api/account/listener/IContractCallback;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$2;->this$0:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$2;->val$itaiContractCallback:Lcom/tencent/taes/remote/api/account/listener/IContractCallback;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/listener/ITAIContractCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$2;->val$itaiContractCallback:Lcom/tencent/taes/remote/api/account/listener/IContractCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$2;->val$itaiContractCallback:Lcom/tencent/taes/remote/api/account/listener/IContractCallback;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/listener/IContractCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/taes/remote/api/account/bean/WeCarContract;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$2;->val$itaiContractCallback:Lcom/tencent/taes/remote/api/account/listener/IContractCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$2;->val$itaiContractCallback:Lcom/tencent/taes/remote/api/account/listener/IContractCallback;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/listener/IContractCallback;->onSuccess(Lcom/tencent/taes/remote/api/account/bean/WeCarContract;)V

    :cond_0
    return-void
.end method
