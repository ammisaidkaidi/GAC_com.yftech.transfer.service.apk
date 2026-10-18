.class public Lcom/tencent/taes/framework/TAESFrameworkManager;
.super Ljava/lang/Object;
.source "TAESFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/framework/TAESFrameworkManager$CoreFrameworkManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TAESFrameworkManager"


# instance fields
.field private isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mClientComps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCompsLoadListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/listener/TAESCommonListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfigInfo:Lcom/tencent/taes/util/config/ConfigInfo;

.field private mContext:Landroid/content/Context;

.field private mEventDispatcher:Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

.field private mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

.field private mLoadFailCompsMsg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

.field private mRemoteSmsPkgs:[Ljava/lang/String;

.field private mServerComps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mClientComps:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mServerComps:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mLoadFailCompsMsg:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/taes/framework/TAESFrameworkManager$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tencent/taes/framework/TAESFrameworkManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/taes/framework/TAESFrameworkManager;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->notifyCompLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/taes/framework/TAESFrameworkManager;Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->notifyCompLoadFail(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/taes/framework/TAESFrameworkManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tencent/taes/framework/TAESFrameworkManager;->notifyLoadComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/taes/framework/TAESFrameworkManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tencent/taes/framework/TAESFrameworkManager;->notifyLoadSuccess()V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/taes/framework/TAESFrameworkManager;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->notifyLoadFail(ILjava/lang/String;)V

    return-void
.end method

.method private getComponentConfigInfo(Ljava/lang/String;)Lcom/tencent/taes/framework/parser/ComponentConfigInfo;
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mClientComps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 397
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 402
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mServerComps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 403
    invoke-virtual {v0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;
    .locals 1

    .line 66
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager$CoreFrameworkManagerHolder;->access$100()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    return-object v0
.end method

.method private loadServerComponents()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mServerComps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    iget-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    new-instance v2, Lcom/tencent/taes/framework/TAESFrameworkManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/taes/framework/TAESFrameworkManager$1;-><init>(Lcom/tencent/taes/framework/TAESFrameworkManager;)V

    invoke-interface {v1, v0, v2}, Lcom/tencent/taes/framework/interfaces/ICompManager;->loadComponents(Ljava/util/List;Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;)V

    :cond_0
    return-void
.end method

.method private notifyCompLoadFail(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "TAESFrameworkManager"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFail moduleName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/taes/framework/listener/TAESCompsListener;->onCompLoadFail(Ljava/lang/String;I)V

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 201
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/framework/listener/TAESCommonListener;

    .line 202
    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 203
    iget v2, v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->code:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->message:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/tencent/taes/framework/listener/TAESCommonListener;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyCompLoadSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TAESFrameworkManager"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSuccess moduleName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    invoke-interface {v0, p1}, Lcom/tencent/taes/framework/listener/TAESCompsListener;->onCompLoadSuccess(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/listener/TAESCommonListener;

    .line 185
    invoke-interface {v1}, Lcom/tencent/taes/framework/listener/TAESCommonListener;->onSuccess()V

    goto :goto_0

    .line 189
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private notifyCompsLoadFail(Ljava/util/List;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 234
    iget-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 235
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/taes/framework/listener/TAESCommonListener;

    .line 237
    invoke-interface {v2, p2, p3}, Lcom/tencent/taes/framework/listener/TAESCommonListener;->onFail(ILjava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mLoadFailCompsMsg:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyLoadComplete()V
    .locals 2

    const-string v0, "TAESFrameworkManager"

    const-string v1, "loadLocalComponents onLoadComplete"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    invoke-interface {p0}, Lcom/tencent/taes/framework/listener/TAESCompsListener;->onLoadComplete()V

    :cond_0
    return-void
.end method

.method private notifyLoadFail(ILjava/lang/String;)V
    .locals 3

    const-string v0, "TAESFrameworkManager"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLocalComponents onLoadFail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/taes/framework/listener/TAESCompsListener;->onLoadFail(ILjava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mServerComps:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->notifyCompsLoadFail(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method private notifyLoadSuccess()V
    .locals 2

    const-string v0, "TAESFrameworkManager"

    const-string v1, "loadComponents onLoadSuccess"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    invoke-interface {p0}, Lcom/tencent/taes/framework/listener/TAESCompsListener;->onLoadSuccess()V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkModuleLoaded(Ljava/lang/String;)Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 264
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    invoke-interface {p0, p1}, Lcom/tencent/taes/framework/interfaces/ICompManager;->checkModuleLoaded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/tencent/taes/framework/APIResult<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x64

    .line 278
    invoke-static {p1}, Lcom/tencent/taes/framework/APIResult;->ofError(I)Lcom/tencent/taes/framework/APIResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/16 v0, 0x133

    .line 281
    :try_start_1
    invoke-static {v0}, Lcom/tencent/taes/framework/APIResult;->ofError(I)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 282
    invoke-direct {p0, p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getComponentConfigInfo(Ljava/lang/String;)Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isServerComponent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/taes/framework/interfaces/ICompManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string p1, "TAESFrameworkManager"

    .line 289
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApi "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " apiResult:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "   "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->codeDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 276
    monitor-exit p0

    throw p1
.end method

.method public getEventDispatcher()Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mEventDispatcher:Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/tencent/taes/util/config/ConfigManager;->getInstance()Lcom/tencent/taes/util/config/ConfigManager;

    move-result-object v0

    const-string v1, "component_config.json"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/taes/util/config/ConfigManager;->getConfigInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/taes/util/config/ConfigInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mConfigInfo:Lcom/tencent/taes/util/config/ConfigInfo;

    .line 83
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mConfigInfo:Lcom/tencent/taes/util/config/ConfigInfo;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mConfigInfo:Lcom/tencent/taes/util/config/ConfigInfo;

    const-string v1, "connectSMSPriorityPkgNames"

    invoke-virtual {v0, v1}, Lcom/tencent/taes/util/config/ConfigInfo;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mConfigInfo:Lcom/tencent/taes/util/config/ConfigInfo;

    const-string v2, "appId"

    invoke-virtual {v1, v2}, Lcom/tencent/taes/util/config/ConfigInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mConfigInfo:Lcom/tencent/taes/util/config/ConfigInfo;

    const-string v3, "alias"

    invoke-virtual {v2, v3}, Lcom/tencent/taes/util/config/ConfigInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/tencent/taes/framework/TAESFrameworkManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mConfigInfo:Lcom/tencent/taes/util/config/ConfigInfo;

    invoke-static {p1}, Lcom/tencent/taes/framework/parser/ComponentUtils;->parseConfig(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/framework/TAESFrameworkManager;->loadComponents(Ljava/util/List;Lcom/tencent/taes/framework/listener/TAESCompsListener;)V

    return-void

    :cond_1
    const-string p0, "TAESFrameworkManager"

    const-string p1, "ERROR_NO_CONFIG_FILE"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ERROR_NO_CONFIG_FILE assets:component_config.json"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iput-object p4, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteSmsPkgs:[Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

    iget-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteSmsPkgs:[Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mEventDispatcher:Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

    .line 112
    iput-object p1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/tencent/taes/framework/server/ServerCompsManager;

    iget-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/taes/framework/server/ServerCompsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    .line 114
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    aput-object p2, v1, p4

    const/4 p2, 0x2

    aput-object p3, v1, p2

    invoke-interface {v0, p1, v1}, Lcom/tencent/taes/framework/interfaces/ICompManager;->init(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 115
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppId or Alias is Null !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized loadApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Lcom/tencent/taes/framework/listener/TAESLoadListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            "Lcom/tencent/taes/framework/listener/TAESLoadListener<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 298
    :try_start_1
    iget-object p1, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    invoke-interface {p4, p1}, Lcom/tencent/taes/framework/listener/TAESLoadListener;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 300
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 305
    :cond_0
    :try_start_3
    new-instance v6, Lcom/tencent/taes/framework/TAESFrameworkManager$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/taes/framework/TAESFrameworkManager$2;-><init>(Lcom/tencent/taes/framework/TAESFrameworkManager;Lcom/tencent/taes/framework/listener/TAESLoadListener;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v6}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 294
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadComponents(Ljava/util/List;Lcom/tencent/taes/framework/listener/TAESCompsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;",
            "Lcom/tencent/taes/framework/listener/TAESCompsListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_0
    iput-object p2, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    .line 126
    iget-object p2, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mServerComps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 127
    iget-object p2, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mClientComps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 129
    invoke-virtual {p2}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isServerComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mServerComps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mClientComps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/tencent/taes/framework/TAESFrameworkManager;->loadServerComponents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 124
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V
    .locals 1

    monitor-enter p0

    .line 356
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->checkModuleLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-interface {p2}, Lcom/tencent/taes/framework/listener/TAESCommonListener;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 361
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mLoadFailCompsMsg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mLoadFailCompsMsg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 364
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/tencent/taes/framework/listener/TAESCommonListener;->onFail(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    .line 369
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 373
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object p2, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 355
    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    invoke-interface {v0}, Lcom/tencent/taes/framework/interfaces/ICompManager;->release()V

    .line 338
    iput-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mServerComps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 342
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mClientComps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 344
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mLoadFailCompsMsg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 345
    iput-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mListener:Lcom/tencent/taes/framework/listener/TAESCompsListener;

    .line 346
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public declared-synchronized unloadComponent(Lcom/tencent/taes/framework/parser/ComponentConfigInfo;)V
    .locals 1

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isServerComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mRemoteCompManager:Lcom/tencent/taes/framework/interfaces/ICompManager;

    invoke-interface {v0, p1}, Lcom/tencent/taes/framework/interfaces/ICompManager;->unloadComponent(Lcom/tencent/taes/framework/parser/ComponentConfigInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 249
    monitor-exit p0

    throw p1
.end method

.method public unregisterCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager;->mCompsLoadListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
