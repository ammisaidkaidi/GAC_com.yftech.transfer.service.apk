.class public Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;
.super Ljava/lang/Object;
.source "SceneContainer.java"


# instance fields
.field private volatile mAppWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

.field private volatile mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

.field private volatile mSubSceneWakeupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSystemWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSystemWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    .line 24
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mAppWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSubSceneWakeupSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected getAppWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mAppWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    return-object p0
.end method

.method public getSceneById(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSubSceneWakeupSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    .line 47
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    return-object p0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mAppWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mAppWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    return-object p0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSystemWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 58
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSystemWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSceneWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    return-object p0
.end method

.method public getSubSceneWakeupSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSubSceneWakeupSet:Ljava/util/Set;

    return-object p0
.end method

.method public getSystemWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSystemWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    return-object p0
.end method

.method public registerAppWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)V
    .locals 1
    .param p1    # Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 65
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mAppWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->addWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)V

    return-void
.end method

.method public registerHighPriorityScene(Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 178
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "subWakeupScene cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSubSceneWakeupSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->getSceneId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerSceneWakeupEvent(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSceneById(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object p0

    if-nez p0, :cond_0

    .line 82
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scene : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->addWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerSceneWakeupEvent(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;",
            ">;)Z"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSceneById(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object p0

    if-nez p0, :cond_0

    .line 104
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scene : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->addWakeupEvent(Ljava/util/Set;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerSubWakeupScene(Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 160
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "subWakeupScene cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->getSuperSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSubSceneWakeupSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->isExclusive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->disable()V

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->getSceneId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :cond_3
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSceneException;

    const-string v0, "super scene has already been unregistered!"

    invoke-direct {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSceneException;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0
.end method

.method public registerSysWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)V
    .locals 1
    .param p1    # Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 126
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSystemWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->addWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)V

    return-void
.end method

.method public registerWakeupScene(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 141
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSceneException;

    const-string v0, "you should unregister former scene!"

    invoke-direct {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSceneException;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 147
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "scene cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    .line 150
    :cond_1
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    .line 151
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getSceneId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unRegisterHighPriorityScene(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sceneId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSubSceneWakeupSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 192
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;

    .line 194
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unregisterAllSubWakeupScene()V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSubSceneWakeupSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public unregisterAppWakeupEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "eventId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mAppWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->removeWakeupEvent(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterSceneWakeupEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSceneById(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object p0

    if-nez p0, :cond_0

    .line 93
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scene : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->removeWakeupEvent(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterSceneWakeupEvent(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSceneById(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object p0

    if-nez p0, :cond_0

    .line 115
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scene : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->removeWakeupEvent(Ljava/util/Set;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterSubWakeupScene(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sceneId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSubSceneWakeupSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSubSceneWakeupSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 209
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;

    .line 211
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 213
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->isExclusive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->getSuperSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->enable()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public unregisterSysWakeupEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "eventId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSystemWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->removeWakeupEvent(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterWakeupScene()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->mSceneWakeup:Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    return-void
.end method
