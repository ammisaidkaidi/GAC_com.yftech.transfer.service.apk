.class Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;


# direct methods
.method private constructor <init>(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarspeech/sdk/TASMusicManager;Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;-><init>(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)V

    return-void
.end method

.method private a([B)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_music_name"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "e_music_artist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "e_music_album"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_0

    :catch_2
    move-exception v1

    move-object p1, v0

    move-object v2, p1

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object p1, v0

    move-object v2, p1

    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+playSong, name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,artist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,album:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0, p1, v2, v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->playSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==-playSong, name:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,artist:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,album:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b([B)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_music_playmode"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "==+playmode"

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->setPlayMode(I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "==-playmode"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c([B)[B
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_music_playmode"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "==+isPlayModeSupported"

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->isPlayModeSupported(I)Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "==-isPlayModeSupported"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v0, "tas.action.ret.value"

    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private d([B)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_music_media_source"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "==+openApp"

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->openApp(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "==-openApp"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e([B)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_music_media_source"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "==+closeApp"

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->closeApp(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "==-closeApp"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f([B)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_music_media_source"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "e_music_media_json"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v0

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_0
    move-object p1, v0

    move-object v1, p1

    :goto_1
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->playByMediaSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "message"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x5

    :cond_2
    const-string v1, "tas.action.ret.value"

    invoke-static {v0, p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(ILjava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private g([B)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_music_name"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "e_music_artist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "e_music_album"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_0

    :catch_2
    move-exception v1

    move-object p1, v0

    move-object v2, p1

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object p1, v0

    move-object v2, p1

    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+searchSong, name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,artist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,album:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0, p1, v2, v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->searchSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-searchSong, name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,artist:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,album:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v0, "tas.action.ret.value"

    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v2, "tas.action.music.set.enabled"

    new-array v3, v1, [B

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->b(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-virtual {v0, v2}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->notifyA2dpStatus(Z)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->c(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-virtual {v0, v2}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->notifyUSBStatus(Z)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->b(Lcom/tencent/wecarspeech/sdk/TASMusicManager;Z)Z

    :cond_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-onSdkServiceConnectEvent, connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "handlerMusicFocus return, mIMusicClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+callback, caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,callback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const-string v3, "null"

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tas.focus.music.open"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->d([B)V

    goto :goto_1

    :cond_2
    const-string v0, "tas.focus.music.close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->e([B)V

    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-callback, caller:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,callback:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    const-string p1, "null"

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_2
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->b(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 1

    const-string v0, "tas.focus.music.play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+play"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->play()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-play"

    :goto_0
    invoke-static {p0, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "tas.focus.music.pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+pause"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->pause()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-pause"

    goto :goto_0

    :cond_1
    const-string v0, "tas.focus.music.is.playmode.supported"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->c([B)[B

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "tas.focus.music.playmode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->b([B)V

    goto :goto_1

    :cond_3
    const-string v0, "tas.focus.music.play.music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a([B)V

    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-callback, caller:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,callback:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_4

    const-string p1, "null"

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_2
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_5
    const-string v0, "tas.focus.music.search.music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->g([B)[B

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "tas.focus.music.play.by.mediasource"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->f([B)[B

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->c(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 1

    const-string p4, "tas.focus.music.get.play.status"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+getPlayStatus"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->getPlayStatus()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-getPlayStatus"

    :goto_0
    invoke-static {p0, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p4, "tas.focus.music.current.info"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+getCurrentMusic"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->getCurrentMusic()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-getCurrentMusic"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->a()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-callback, caller:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,callback:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2

    const-string p1, "null"

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_2
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
