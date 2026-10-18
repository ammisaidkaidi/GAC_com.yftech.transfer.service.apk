.class public final Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# static fields
.field private static volatile b:Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;


# instance fields
.field private c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wecarspeech/sdk/api/IMusicClient<",
            "Lcom/tencent/libspeechcommon/def/ActionRet;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v2, "tas.action.music.set.enabled"

    new-array v3, v1, [B

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->d:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->notifyA2dpStatus(Z)V

    iput-boolean v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->d:Z

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->notifyUSBStatus(Z)V

    iput-boolean v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->e:Z

    :cond_2
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

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

.method protected a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 6

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string p1, "handlerMusicFocus return, mIMusicClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+callback, caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const-string v2, "null"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "tas.focus.music.open"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "e_music_media_source"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p4

    goto :goto_1

    :catch_0
    move-exception p4

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==+openApp"

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4, v0}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->openApp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-openApp"

    goto :goto_3

    :cond_3
    const-string p4, "tas.focus.music.close"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    :try_start_1
    new-instance p4, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "e_music_media_source"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p4

    goto :goto_2

    :catch_1
    move-exception p4

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==+closeApp"

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4, v0}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->closeApp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-closeApp"

    goto :goto_3

    :cond_5
    const-string p4, "tas.focus.music.play"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v0, "==+play"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->play()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-play"

    :goto_3
    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_6
    const-string p4, "tas.focus.music.pause"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v0, "==+pause"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->pause()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-pause"

    goto :goto_3

    :cond_7
    const-string p4, "tas.focus.music.next"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v0, "==+next"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-next"

    goto :goto_3

    :cond_8
    const-string p4, "tas.focus.music.pre"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v0, "==+pre"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->pre()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-pre"

    goto :goto_3

    :cond_9
    const-string p4, "tas.focus.music.is.playmode.supported"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x1

    if-eqz p4, :cond_b

    if-eqz p3, :cond_a

    :try_start_2
    new-instance p4, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "e_music_playmode"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, p4

    goto :goto_4

    :catch_2
    move-exception p4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v0, "==+isPlayModeSupported"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4, v1}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->isPlayModeSupported(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-isPlayModeSupported"

    goto/16 :goto_3

    :cond_b
    const-string p4, "tas.focus.music.playmode"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    if-eqz p3, :cond_c

    :try_start_3
    new-instance p4, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "e_music_playmode"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move v1, p4

    goto :goto_5

    :catch_3
    move-exception p4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v0, "==+playmode"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4, v1}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->setPlayMode(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-playmode"

    goto/16 :goto_3

    :cond_d
    const-string p4, "tas.focus.music.play.music"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f

    if-eqz p3, :cond_e

    :try_start_4
    new-instance p4, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "e_music_name"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    const-string v2, "e_music_artist"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    const-string v3, "e_music_album"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v0, p4

    goto :goto_7

    :catch_4
    move-exception p4

    goto :goto_6

    :catch_5
    move-exception p4

    move-object v2, v0

    goto :goto_6

    :catch_6
    move-exception p4

    move-object v1, v0

    move-object v2, v1

    :goto_6
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object v1, v0

    move-object v2, v1

    :goto_7
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+playSong, name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,artist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,album:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4, v1, v2, v0}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->playSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==-playSong, name:"

    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,artist:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,album:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p4

    goto/16 :goto_d

    :cond_f
    const-string p4, "tas.focus.music.search.music"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    if-eqz p3, :cond_10

    :try_start_7
    new-instance p4, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "e_music_name"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_9

    :try_start_8
    const-string v2, "e_music_artist"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    :try_start_9
    const-string v3, "e_music_album"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    move-object v0, p4

    goto :goto_a

    :catch_7
    move-exception p4

    goto :goto_9

    :catch_8
    move-exception p4

    move-object v2, v0

    goto :goto_9

    :catch_9
    move-exception p4

    move-object v1, v0

    move-object v2, v1

    :goto_9
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    move-object v1, v0

    move-object v2, v1

    :goto_a
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+searchSong, name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,artist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,album:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4, v1, v2, v0}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->searchSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==-searchSong, name:"

    goto/16 :goto_8

    :cond_11
    const-string p4, "tas.focus.music.play.by.mediasource"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_13

    if-eqz p3, :cond_12

    :try_start_a
    new-instance p4, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "e_music_media_source"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b

    :try_start_b
    const-string v2, "e_music_media_json"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a

    move-object v0, p4

    goto :goto_c

    :catch_a
    move-exception p4

    goto :goto_b

    :catch_b
    move-exception p4

    move-object v1, v0

    :goto_b
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    move-object v1, v0

    :goto_c
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4, v1, v0}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->playByMediaSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    goto :goto_d

    :cond_13
    const-string p4, "tas.focus.music.add.favorite"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v0, "==+addFavorite"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->addFavorite()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-addFavorite"

    goto/16 :goto_3

    :cond_14
    const-string p4, "tas.focus.music.cancel.favorite"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_15

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v0, "==+cancelFavorite"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-interface {p4}, Lcom/tencent/wecarspeech/sdk/api/IMusicClient;->cancelFavorite()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "==-cancelFavorite"

    goto/16 :goto_3

    :cond_15
    :goto_d
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-callback, caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,callback:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_16

    const-string p1, "null"

    goto :goto_e

    :cond_16
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a(Lcom/tencent/libspeechcommon/def/ActionRet;)[B

    move-result-object p0

    return-object p0
.end method

.method public notifyA2dpStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+notifyA2dpStatus, isConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->d:Z

    const-string v0, "e_music_a2dp_status"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.music.a2dp.status"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-notifyA2dpStatus, isConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyMusicList(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/sdk/model/MusicModel;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string v1, "+notifyMusicList"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wecarspeech/sdk/model/MusicModel;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "e_music_name"

    iget-object v7, v4, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "e_music_artist"

    iget-object v7, v4, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "e_music_album"

    iget-object v4, v4, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->album:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x5dc

    if-lt v3, v4, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "list"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    int-to-long v3, p1

    const-wide/32 v5, 0x100000

    cmp-long p1, v3, v5

    if-gtz p1, :cond_2

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string v1, "tas.action.music.song.list.update"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    goto :goto_3

    :cond_2
    const/4 v2, -0x1

    :goto_3
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    const-string p1, "-notifyMusicList"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public notifyPlayMusicInfo(Lcom/tencent/wecarspeech/sdk/model/MusicModel;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+notifyPlayMusicInfo, mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "e_music_name"

    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p1, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->artist:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "e_music_artist"

    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->artist:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p1, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->album:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "e_music_album"

    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->album:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.music.info"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-notifyPlayMusicInfo, mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    const-string p1, "null"

    goto :goto_1

    :cond_4
    const-string p1, "ok"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyPlayStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+notifyPlayStatus, isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_music_play_status"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.music.play.status"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-notifyPlayStatus, isPlaying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyUSBStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+notifyUSBStatus, isConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->e:Z

    const-string v0, "e_music_usb_status"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.music.usb.status"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-notifyUSBStatus, isConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMusicClient(Lcom/tencent/wecarspeech/sdk/api/IMusicClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/sdk/api/IMusicClient<",
            "Lcom/tencent/libspeechcommon/def/ActionRet;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setMusicClient, musicClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->c:Lcom/tencent/wecarspeech/sdk/api/IMusicClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.music.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setMusicClient, musicClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_1

    :cond_1
    const-string p1, "ok"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
