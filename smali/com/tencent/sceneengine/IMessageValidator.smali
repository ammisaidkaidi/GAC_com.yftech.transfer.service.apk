.class public interface abstract Lcom/tencent/sceneengine/IMessageValidator;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract isTriggered(Lcom/tencent/sceneengine/model/SceneMessage;Lcom/tencent/sceneengine/model/TriggerCond;)Z
    .param p1    # Lcom/tencent/sceneengine/model/SceneMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/sceneengine/model/TriggerCond;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isValid(Lcom/tencent/sceneengine/model/SceneMessage;Lcom/tencent/sceneengine/model/StopCond;)Z
    .param p1    # Lcom/tencent/sceneengine/model/SceneMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/sceneengine/model/StopCond;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
