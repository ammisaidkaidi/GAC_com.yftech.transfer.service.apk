.class Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi$1;
.super Lcom/tencent/taes/remote/api/routeguide/IRoutePlanResultListener$Stub;
.source "RouteGuideRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->searchRoutePlanResult(Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/List;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;

.field final synthetic val$listener:Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/routeguide/IRoutePlanResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePlanResult(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
