.class public final Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile b:Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;


# instance fields
.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;[B)[B
    .locals 10

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+handlerAutioEventFocus(Caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "e_audio_event"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v5, "e_audio_type"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v6, 0xb

    if-ne v4, v6, :cond_2

    :try_start_2
    const-string v6, "e_audio_focus_abandon_restore_flag"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v3

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    move v5, v2

    goto :goto_1

    :catch_2
    move-exception v3

    move v4, v2

    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-ne v4, v2, :cond_3

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v6, "handlerAudioEventFocus return, audioEvent == -1"

    invoke-static {v3, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlerAudioEventFocus, audioEvent == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==+onAbandonAudioFocus restore = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1, v5}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onAbandonAudioFocus(ZI)I

    move-result v6

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==-onAbandonAudioFocus restore = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    :pswitch_1
    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==+onRequestAudioFocus"

    invoke-static {v6, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v5}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onRequestAudioFocus(I)I

    move-result v6

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onRequestAudioFocus"

    goto/16 :goto_4

    :pswitch_2
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onCallEnd"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onCallEnd()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onCallEnd"

    goto/16 :goto_4

    :pswitch_3
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onCallBegin"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onCallBegin()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onCallBegin"

    goto/16 :goto_4

    :pswitch_4
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onMusicPause"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onMusicPause()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onMusicPause"

    goto :goto_4

    :pswitch_5
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onMusicPlay"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onMusicPlay()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onMusicPlay"

    goto :goto_4

    :pswitch_6
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onTtsEnd"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onTtsEnd()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onTtsEnd"

    goto :goto_4

    :pswitch_7
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onTtsBegin"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onTtsBegin()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onTtsBegin"

    goto :goto_4

    :pswitch_8
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onAsrEnd"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onAsrEnd()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onAsrEnd"

    goto :goto_4

    :pswitch_9
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onAsrBegin"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onAsrBegin()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onAsrBegin"

    goto :goto_4

    :pswitch_a
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onAsrStartTipEnd"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onAsrStartTipEnd()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onAsrStartTipEnd"

    goto :goto_4

    :pswitch_b
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v9, "==+onAsrStartTipBegin"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;->onAsrStartTipBegin()V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string v8, "==-onAsrStartTipBegin"

    :goto_4
    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    if-eq v6, v2, :cond_5

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v0, "tas.action.ret.value"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-handlerAutioEventFocus(Caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,resut:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-handlerAutioEventFocus(Caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_6

    const-string p1, "null"

    goto :goto_6

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    :goto_6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;

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
    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;

    return-object v0
.end method


# virtual methods
.method public NotifyAudioFocusChange(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+NotifyAudioFocusChange, packangeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->d:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->e:Z

    const-string v0, "e_audio_event_package_name"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "e_audio_event_is_request"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string p2, "tas.action.audio.event.notify"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    const-string p1, "-NotifyAudioFocusChange"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->d:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->e:Z

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->NotifyAudioFocusChange(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 0

    const-string p4, "tas.focus.audio.event"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public addIAudioEventListener(Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+addIAudioEventListener, audioEventListener:"

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-addIAudioEventListener, audioEventListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, "null"

    goto :goto_1

    :cond_2
    const-string p1, "ok"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeIAudioEventListener(Lcom/tencent/wecarspeech/sdk/api/IAudioEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+removeIAudioEventListener, audioEventListener:"

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-removeIAudioEventListener, audioEventListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, "null"

    goto :goto_1

    :cond_2
    const-string p1, "ok"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
