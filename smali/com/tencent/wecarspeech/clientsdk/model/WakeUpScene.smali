.class public Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;
.super Ljava/lang/Object;
.source "WakeUpScene.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeUpScene"


# instance fields
.field private disableState:I

.field private mEventSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mEventSet:Ljava/util/Set;

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mSceneId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getSceneWordSet()Ljava/util/Set;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getWordSet()Ljava/util/Set;

    move-result-object v1

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;

    .line 68
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;

    .line 69
    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->getWord()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/DuplicatedWakeupWordException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicated wakeup word \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/DuplicatedWakeupWordException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 75
    :cond_3
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mEventSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWakeupEvent(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 79
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mEventSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public disable()V
    .locals 1

    .line 145
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->disableState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->disableState:I

    return-void
.end method

.method public enable()V
    .locals 2

    .line 149
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->disableState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 150
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->disableState:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->disableState:I

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    check-cast p1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    .line 130
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mSceneId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mSceneId:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mSceneId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEventSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mEventSet:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getEventSets()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mEventSet:Ljava/util/Set;

    return-object p0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method public getSceneWordSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mEventSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;

    .line 119
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getWordSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mSceneId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mSceneId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method

.method public isActiveScene()Z
    .locals 0

    .line 141
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->disableState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeWakeupEvent(Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mEventSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mEventSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 96
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;

    .line 98
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeWakeupEvent(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 105
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 110
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->removeWakeupEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeUpScene{mSceneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mEventSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->mEventSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disableState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->disableState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
