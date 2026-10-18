.class public interface abstract Lcom/tencent/taes/local/api/moss/IMossApi;
.super Ljava/lang/Object;
.source "IMossApi.java"

# interfaces
.implements Lcom/tencent/taes/base/api/AbstractApi;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/local/api/moss/IMossApi$WokeUpCallback;,
        Lcom/tencent/taes/local/api/moss/IMossApi$SpeechCallback;
    }
.end annotation


# virtual methods
.method public abstract addCollection(Ljava/lang/String;)V
.end method

.method public abstract getCollectedAppIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecentAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEnableSpeechText()Z
.end method

.method public abstract isInputIsTextView()Z
.end method

.method public abstract isMossAppAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isMossDebugEvn()Z
.end method

.method public abstract isShowWakeUpWord()Z
.end method

.method public abstract mossRegisterWakeUpSceneByMap(Ljava/util/HashMap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract mossUnregisterWakeUpScene()V
.end method

.method public abstract openMossApp(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract register(Lcom/tencent/taes/local/api/moss/IMossApi$WokeUpCallback;)V
.end method

.method public abstract registerAppSkills(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeCollection(Ljava/lang/String;)V
.end method

.method public abstract requestMessageList(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/local/api/moss/bean/MessageInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestMossAppList(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAppChannel(Ljava/lang/String;)V
.end method

.method public abstract setEnableSpeechText(Z)V
.end method

.method public abstract setInputIsTextView(Z)V
.end method

.method public abstract setMossDebugEvn(Z)V
.end method

.method public abstract setMossUiModel(Z)V
.end method

.method public abstract setShowWakeUpWord(Z)V
.end method

.method public abstract speechRegister(Lcom/tencent/taes/local/api/moss/IMossApi$SpeechCallback;)V
.end method

.method public abstract speechUnregister(Lcom/tencent/taes/local/api/moss/IMossApi$SpeechCallback;)V
.end method

.method public abstract unregister(Lcom/tencent/taes/local/api/moss/IMossApi$WokeUpCallback;)V
.end method
