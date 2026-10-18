.class public final Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;


# instance fields
.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private a(IIZ)I
    .locals 4

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerAudioEventFocus, audioEvent == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==+onAbandonAudioFocus restore = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p3, p2}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAbandonAudioFocus(ZI)I

    move-result v0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==-onAbandonAudioFocus restore = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==+onRequestAudioFocus"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onRequestAudioFocus(I)I

    move-result v0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onRequestAudioFocus"

    goto/16 :goto_1

    :pswitch_2
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onCallEnd"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onCallEnd()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onCallEnd"

    goto/16 :goto_1

    :pswitch_3
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onCallBegin"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onCallBegin()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onCallBegin"

    goto/16 :goto_1

    :pswitch_4
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onMusicPause"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onMusicPause()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onMusicPause"

    goto :goto_1

    :pswitch_5
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onMusicPlay"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onMusicPlay()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onMusicPlay"

    goto :goto_1

    :pswitch_6
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onTtsEnd"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onTtsEnd()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onTtsEnd"

    goto :goto_1

    :pswitch_7
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onTtsBegin"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onTtsBegin()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onTtsBegin"

    goto :goto_1

    :pswitch_8
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onAsrEnd"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAsrEnd()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onAsrEnd"

    goto :goto_1

    :pswitch_9
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onAsrBegin"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAsrBegin()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onAsrBegin"

    goto :goto_1

    :pswitch_a
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onAsrStartTipEnd"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAsrStartTipEnd()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onAsrStartTipEnd"

    goto :goto_1

    :pswitch_b
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v3, "==+onAsrStartTipBegin"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAsrStartTipBegin()V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v2, "==-onAsrStartTipBegin"

    :goto_1
    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    return v0

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

.method private a(Ljava/lang/String;[B)[B
    .locals 6

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

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

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "e_audio_event"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "e_audio_type"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v5, 0xb

    if-ne v3, v5, :cond_1

    :try_start_2
    const-string v5, "e_audio_focus_abandon_restore_flag"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move v4, v1

    goto :goto_1

    :catch_2
    move-exception v2

    move v3, v1

    move v4, v3

    :goto_1
    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-ne v3, v1, :cond_2

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string v5, "handlerAudioEventFocus return, audioEvent == -1"

    invoke-static {v2, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v3, v4, v0}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->a(IIZ)I

    move-result p0

    if-eq p0, v1, :cond_3

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v0, "tas.action.ret.value"

    invoke-virtual {p2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-handlerAutioEventFocus(Caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,resut:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-handlerAutioEventFocus(Caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    const-string p1, "null"

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->c:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->c:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->c:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

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
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->c:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    return-object v0
.end method


# virtual methods
.method public NotifyAudioFocusChange(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->f:Z

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "e_audio_event_package_name"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "e_audio_event_is_request"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string p2, "tas.action.audio.event.notify"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

    const-string p1, "-NotifyAudioFocusChange"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->e:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->f:Z

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->NotifyAudioFocusChange(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 0

    const-string p4, "tas.focus.audio.event"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public addIAudioEventListener(Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

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

.method public removeIAudioEventListener(Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->b:Ljava/lang/String;

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
