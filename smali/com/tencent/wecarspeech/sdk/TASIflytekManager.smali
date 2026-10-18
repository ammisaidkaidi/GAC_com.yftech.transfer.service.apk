.class public final Lcom/tencent/wecarspeech/sdk/TASIflytekManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IflytekModeConstant;,
        Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;


# instance fields
.field private c:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/c;->a()Lcom/tencent/wecarspeech/sdk/c;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASIflytekManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/c;->a(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/c$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASIflytekManager;)Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->c:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASIflytekManager;Ljava/lang/String;[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;[B)[B
    .locals 8

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+handlerIflytekModeEventFocus(Caller:"

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
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->c:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    if-nez v1, :cond_2

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    const-string p1, "-callback mIIflytekModeClient == null"

    :goto_1
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "e_iflytek_event"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "e_iflytek_mode_value"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "e_iflytek_gain_value"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    move v4, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move v3, v1

    move v4, v3

    :goto_2
    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_3
    if-ne v3, v1, :cond_3

    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    const-string v6, "handlerIflytekModeEventFocus return, audioEvent == -1"

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlerIflytekModeEventFocus, audioEvent == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    const-string v3, "==+getIFlyTekMicGain"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->c:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;->getIFlyTekMicGain()I

    move-result p0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-getIFlyTekMicGain, gain_ret:"

    goto :goto_4

    :pswitch_1
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    const-string v3, "==+getIFlyTekRecordMode"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->c:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;->getIFlyTekRecordMode()I

    move-result p0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-getIFlyTekRecordMode, mode_ret:"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_2
    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==+setIFlyTekMicGain, gain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, v1, :cond_4

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->c:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-interface {p0, v2}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;->setIFlyTekMicGain(I)V

    :cond_4
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    const-string v2, "==-setIFlyTekMicGain"

    goto :goto_5

    :pswitch_3
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==+switchIFlyTekRecordMode, mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v4, v1, :cond_5

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->c:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-interface {p0, v4}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;->switchIFlyTekRecordMode(I)V

    :cond_5
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    const-string v2, "==-switchIFlyTekRecordMode"

    :goto_5
    invoke-static {p0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move p0, v1

    :goto_7
    if-eq p0, v1, :cond_6

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v0, "tas.action.ret.value"

    invoke-virtual {p2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

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

    :cond_6
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-handlerAutioEventFocus(Caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASIflytekManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->b:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->b:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->b:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

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
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->b:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    return-object v0
.end method


# virtual methods
.method public setIIflytekModeClient(Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setIIflytekModeClient, videoClient:"

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

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->c:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string p1, "tas.action.iflytek.set.enabled"

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    return-void
.end method
