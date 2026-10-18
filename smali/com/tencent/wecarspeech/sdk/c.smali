.class public final Lcom/tencent/wecarspeech/sdk/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile c:Lcom/tencent/wecarspeech/sdk/c;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarspeech/sdk/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/tencent/wecarspeech/sdk/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcom/tencent/wecarspeech/sdk/c;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/c;->c:Lcom/tencent/wecarspeech/sdk/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/c;->c:Lcom/tencent/wecarspeech/sdk/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/c;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/c;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/c;->c:Lcom/tencent/wecarspeech/sdk/c;

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
    sget-object v0, Lcom/tencent/wecarspeech/sdk/c;->c:Lcom/tencent/wecarspeech/sdk/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/c$a;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerServiceConnect connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    invoke-interface {v0, p1}, Lcom/tencent/wecarspeech/sdk/c$a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk handler Callback caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tas.focus.audio.event"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSAAudioEventManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/sdk/c$a;

    goto/16 :goto_2

    :cond_0
    move-object p0, v0

    goto/16 :goto_2

    :cond_1
    const-string v0, "tas.callback.asr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSAAsrManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    goto :goto_0

    :cond_2
    const-string v0, "tas.focus.sys"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    goto :goto_0

    :cond_3
    const-string v0, "tas.focus.tel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSATelManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASTelManager;

    goto :goto_0

    :cond_4
    const-string v0, "tas.focus.radio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    goto/16 :goto_0

    :cond_5
    const-string v0, "tas.focus.music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    goto/16 :goto_0

    :cond_6
    const-string v0, "tas.focus.video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    :goto_1
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    goto/16 :goto_0

    :cond_7
    const-string v0, "tas.focus.media.control"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_8
    const-string v0, "e_doa_action"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;

    goto/16 :goto_0

    :cond_9
    const-string v0, "tas.callback.tts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    goto/16 :goto_0

    :cond_a
    const-string v0, "tas.callback.config"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    goto/16 :goto_0

    :cond_b
    const-string v0, "tas.focus.setting.page"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/c$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager;

    goto/16 :goto_0

    :cond_c
    const-string v0, "tas.focus.status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSAStatusManager;

    goto/16 :goto_0

    :cond_d
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_f

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/sdk/c$a;->a(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v1

    sget-object p0, Lcom/tencent/wecarspeech/sdk/c;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "on callback result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_e

    const-string p2, "null"

    goto :goto_3

    :cond_e
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    sget-object p0, Lcom/tencent/wecarspeech/sdk/c;->a:Ljava/lang/String;

    const-string p1, "no callback listener found!"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v1
.end method
