.class Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;
.super Lcom/tencent/taes/remote/api/routeguide/IRouteGuideListener$Stub;
.source "OnSearchRouteCondInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerListener"
.end annotation


# instance fields
.field private mOnSearchRouteCondInfoListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideListener$Stub;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;->mOnSearchRouteCondInfoListenerRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public onRoadCondInfo(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;->mOnSearchRouteCondInfoListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;->mOnSearchRouteCondInfoListenerRef:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener$1;-><init>(Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
