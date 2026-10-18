.class public La/b/a/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/b/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/tencent/scenebizsdk/model/SceneMsg;)Lcom/tencent/scenebizsdk/model/SceneMsg;
    .locals 4
    .param p2    # Lcom/tencent/scenebizsdk/model/SceneMsg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "picView"

    .line 3
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Lcom/tencent/scenebizsdk/model/widgets/PicData;

    invoke-direct {v2}, Lcom/tencent/scenebizsdk/model/widgets/PicData;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "url"

    :try_start_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/scenebizsdk/model/widgets/PicData;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 4
    :goto_0
    iput-object v2, p2, Lcom/tencent/scenebizsdk/model/SceneMsg;->picView:Lcom/tencent/scenebizsdk/model/widgets/PicData;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "titleText"

    .line 5
    :try_start_3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v2, Lcom/tencent/scenebizsdk/model/widgets/TextData;

    invoke-direct {v2}, Lcom/tencent/scenebizsdk/model/widgets/TextData;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "text"

    :try_start_4
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/scenebizsdk/model/widgets/TextData;->text:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 6
    :goto_1
    iput-object v2, p2, Lcom/tencent/scenebizsdk/model/SceneMsg;->titleText:Lcom/tencent/scenebizsdk/model/widgets/TextData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "subText"

    .line 7
    :try_start_5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v2, Lcom/tencent/scenebizsdk/model/widgets/TextData;

    invoke-direct {v2}, Lcom/tencent/scenebizsdk/model/widgets/TextData;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v3, "text"

    :try_start_6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/scenebizsdk/model/widgets/TextData;->text:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 8
    :goto_2
    iput-object v2, p2, Lcom/tencent/scenebizsdk/model/SceneMsg;->subText:Lcom/tencent/scenebizsdk/model/widgets/TextData;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p1, "voi"

    .line 9
    :try_start_7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-nez p1, :cond_3

    const-string p1, "tts"

    :try_start_8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_4

    new-instance v1, Lcom/tencent/scenebizsdk/model/widgets/VoiData;

    invoke-direct {v1}, Lcom/tencent/scenebizsdk/model/widgets/VoiData;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v2, "text"

    :try_start_9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/scenebizsdk/model/widgets/VoiData;->text:Ljava/lang/String;

    .line 10
    :cond_4
    iput-object v1, p2, Lcom/tencent/scenebizsdk/model/SceneMsg;->voi:Lcom/tencent/scenebizsdk/model/widgets/VoiData;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string p1, "okButton"

    .line 11
    :try_start_a
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-nez p1, :cond_5

    const-string p1, "modeCommon"

    :try_start_b
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_5
    invoke-virtual {p0, p1}, La/b/a/b/a;->a(Lorg/json/JSONObject;)Lcom/tencent/scenebizsdk/model/widgets/ActionData;

    move-result-object p1

    .line 12
    iput-object p1, p2, Lcom/tencent/scenebizsdk/model/SceneMsg;->okAction:Lcom/tencent/scenebizsdk/model/widgets/ActionData;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string p1, "cancelButton"

    .line 13
    :try_start_c
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, La/b/a/b/a;->a(Lorg/json/JSONObject;)Lcom/tencent/scenebizsdk/model/widgets/ActionData;

    move-result-object p0

    .line 14
    iput-object p0, p2, Lcom/tencent/scenebizsdk/model/SceneMsg;->cancelAction:Lcom/tencent/scenebizsdk/model/widgets/ActionData;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/tencent/scenebizsdk/model/widgets/ActionData;
    .locals 5

    if-eqz p1, :cond_3

    new-instance p0, Lcom/tencent/scenebizsdk/model/widgets/ActionData;

    invoke-direct {p0}, Lcom/tencent/scenebizsdk/model/widgets/ActionData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/scenebizsdk/model/widgets/ActionData;->action:Ljava/util/List;

    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_APP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/scenebizsdk/model/widgets/ActionData;->action:Ljava/util/List;

    const-string v3, "param"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/tencent/scenebizsdk/model/widgets/Action;

    .line 1
    sget-object v4, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
