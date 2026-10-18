.class public Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;
.super Ljava/lang/Object;
.source "DynamicContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicContainer"


# instance fields
.field private volatile isStart:Z

.field private volatile mISSRContextCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;

.field private volatile mRejectSemanticCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;

.field private volatile mSSRCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;

.field private volatile mSTTListener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;

.field private volatile mSTrvCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;

.field private volatile mSemanticFilter:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;

.field private volatile mTaskId:J

.field private volatile mTrvSceneWords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkValidWords(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 122
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 123
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-ge p1, v1, :cond_1

    .line 126
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/DuplicatedWakeupWordException;

    const-string v0, "duplicated wakeup word in sceneWords map"

    invoke-direct {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/DuplicatedWakeupWordException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 130
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-direct {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->isValidWord(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid sceneWord, sceneWord length should not be less than 2 or more than 10"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_3
    return-void
.end method

.method private isValidWord(Ljava/lang/String;)Z
    .locals 1

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_2

    const/16 p1, 0xa

    if-le p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized clearTrvSceneWords()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "DynamicContainer"

    const-string v1, "clearTrvSceneWords"

    .line 87
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mTrvSceneWords:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 86
    monitor-exit p0

    throw v0
.end method

.method public getISSRContextCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mISSRContextCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;

    return-object p0
.end method

.method public getIndicationByWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "DynamicContainer"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndicationByWord word = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mTrvSceneWords:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mTrvSceneWords:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    const-string v0, "DynamicContainer"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTrvSceneWords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mTrvSceneWords:Ljava/util/Map;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public declared-synchronized getRejectSemanticCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mRejectSemanticCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSSRCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mSSRCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSTTListener()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mSTTListener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSTrvCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mSTrvCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSemanticFilter()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mSemanticFilter:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTaskId()J
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mTaskId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrvSceneWords()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mTrvSceneWords:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStart()Z
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->isStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setISSRContextCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mISSRContextCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;

    return-void
.end method

.method public declared-synchronized setRejectSemanticCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;)V
    .locals 0

    monitor-enter p0

    .line 77
    :try_start_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mRejectSemanticCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSSRCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;)V
    .locals 0

    monitor-enter p0

    .line 61
    :try_start_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mSSRCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSTTListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;)V
    .locals 0

    monitor-enter p0

    .line 100
    :try_start_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mSTTListener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 99
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSTrvCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;)V
    .locals 0

    monitor-enter p0

    .line 69
    :try_start_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mSTrvCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSemanticFilter(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;)V
    .locals 0

    monitor-enter p0

    .line 52
    :try_start_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mSemanticFilter:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStart(Z)V
    .locals 0

    monitor-enter p0

    .line 43
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->isStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTaskId(J)V
    .locals 0

    monitor-enter p0

    .line 154
    :try_start_0
    iput-wide p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mTaskId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 153
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTrvSceneWords(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "DynamicContainer"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrvSceneWords sceneWords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->checkValidWords(Ljava/util/Map;)V

    .line 83
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->mTrvSceneWords:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    throw p1
.end method
