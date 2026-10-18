.class Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$3;
.super Lcom/tencent/taes/remote/api/account/listener/ITAIRefreshAccessCodeCallback$Stub;
.source "AccountRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->refreshAccessCode(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;

.field final synthetic val$callback:Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$3;->this$0:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$3;->val$callback:Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/listener/ITAIRefreshAccessCodeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$3;->val$callback:Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$3;->val$callback:Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;)V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$3;->val$callback:Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$3;->val$callback:Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;->onSuccess(Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;)V

    :cond_0
    return-void
.end method
