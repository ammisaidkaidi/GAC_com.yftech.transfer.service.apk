.class public abstract Lcom/tencent/taes/impl/base/BaseConnectApi;
.super Lcom/tencent/taes/impl/base/AbstractApi;
.source "BaseConnectApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;",
        ">",
        "Lcom/tencent/taes/impl/base/AbstractApi;",
        "Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/tencent/taes/remote/api/IServerConnectListener;

.field private mServerConnectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/IServerConnectListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/AbstractApi;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mServerConnectListeners:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/tencent/taes/impl/base/BaseConnectApi$1;

    invoke-direct {v0, p0}, Lcom/tencent/taes/impl/base/BaseConnectApi$1;-><init>(Lcom/tencent/taes/impl/base/BaseConnectApi;)V

    iput-object v0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mListener:Lcom/tencent/taes/remote/api/IServerConnectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/impl/base/BaseConnectApi;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/BaseConnectApi;->notifyConnected()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/taes/impl/base/BaseConnectApi;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/BaseConnectApi;->notifyDisConnected()V

    return-void
.end method

.method private notifyConnected()V
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mServerConnectListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/IServerConnectListener;

    .line 35
    invoke-interface {v0}, Lcom/tencent/taes/remote/api/IServerConnectListener;->onConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDisConnected()V
    .locals 1

    .line 28
    iget-object p0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mServerConnectListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/IServerConnectListener;

    .line 29
    invoke-interface {v0}, Lcom/tencent/taes/remote/api/IServerConnectListener;->onDisConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mServerConnectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object p0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mServerConnectListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected registerInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 59
    iget-object p0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mListener:Lcom/tencent/taes/remote/api/IServerConnectListener;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;->registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V

    :cond_0
    return-void
.end method

.method protected unregisterConnectListener()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mServerConnectListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/IServerConnectListener;

    .line 72
    iget-object v2, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mServerConnectListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unregisterConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mServerConnectListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected unregisterInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi;->mListener:Lcom/tencent/taes/remote/api/IServerConnectListener;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;->unregisterConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V

    :cond_0
    return-void
.end method
