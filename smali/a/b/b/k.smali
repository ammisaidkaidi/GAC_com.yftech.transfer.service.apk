.class public La/b/b/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/sceneengine/SceneEngine;->queryMiniProgramsNearby(Lcom/tencent/sceneengine/Category;Ljava/lang/String;Ljava/lang/String;FLcom/tencent/sceneengine/IQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/sceneengine/IQueryCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/sceneengine/SceneEngine;Lcom/tencent/sceneengine/IQueryCallback;)V
    .locals 0

    iput-object p2, p0, La/b/b/k;->a:Lcom/tencent/sceneengine/IQueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMiniProgramsNearby onFailure i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " s = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, La/b/b/k;->a:Lcom/tencent/sceneengine/IQueryCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/tencent/sceneengine/IQueryCallback;->onFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(ILjava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/lang/String;

    .line 1
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMiniProgramsNearby onResponse i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " s = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    new-instance p2, La/b/b/j;

    invoke-direct {p2, p0}, La/b/b/j;-><init>(La/b/b/k;)V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Ljava/util/List;

    iget-object p0, p0, La/b/b/k;->a:Lcom/tencent/sceneengine/IQueryCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/tencent/sceneengine/IQueryCallback;->onSuccess(ILjava/util/List;)V

    goto :goto_2

    :cond_0
    iget-object p0, p0, La/b/b/k;->a:Lcom/tencent/sceneengine/IQueryCallback;

    if-eqz p0, :cond_2

    const/16 p1, 0x65

    const-string p2, "msg parse error"

    goto :goto_1

    :cond_1
    iget-object p0, p0, La/b/b/k;->a:Lcom/tencent/sceneengine/IQueryCallback;

    if-eqz p0, :cond_2

    const/16 p1, 0x66

    const-string p2, "empty result"

    :goto_1
    invoke-interface {p0, p1, p2}, Lcom/tencent/sceneengine/IQueryCallback;->onFailed(ILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method
