.class public final Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# static fields
.field public static final WECAR_SPEECH_SERVICE:Ljava/lang/String; = "com.tencent.wecarspeech.service.SR_SERVICE"

.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;

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
    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public notifyBackCarStatus(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+notifyBackCarStatus, backCar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_back_car_status"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.lifecycle.backcar.event"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->a()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-notifyBackCarStatus, backCar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyPowerEvent(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+notifyPowerEvent, event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_power_event_id"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.lifecycle.power.event"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->a()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-notifyPowerEvent, event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reallocateSpeechRecord()I
    .locals 3

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->b:Ljava/lang/String;

    const-string v0, "+reallocateSpeechRecord"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.lifecycle.record.focus.reallocate"

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-virtual {p0, v0, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->b:Ljava/lang/String;

    const-string v0, "-reallocateSpeechRecord"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public releaseSpeechRecord(Ljava/lang/String;)I
    .locals 2

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+releaseSpeechRecord : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.lifecycle.record.focus.release"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSALifecycleManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-releaseSpeechRecord : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
