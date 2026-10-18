.class public final Lcom/tencent/wecarspeech/sdk/TASIDoaManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/tencent/wecarspeech/sdk/TASIDoaManager;


# instance fields
.field private c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/c;->a()Lcom/tencent/wecarspeech/sdk/c;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarspeech/sdk/TASIDoaManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASIDoaManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/c;->a(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/c$a;)V

    return-void
.end method

.method private a(II)I
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+setModeValue, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;

    invoke-interface {p0, p2}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;->setModeValue(I)I

    move-result p1

    :cond_0
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    const-string p2, "==-setModeValue"

    invoke-static {p0, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private a(III)I
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+setRegValue, addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eq p3, v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;

    invoke-interface {p0, p2, p3}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;->setRegValue(II)I

    move-result p1

    :cond_0
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "==-setRegValue, ret:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASIDoaManager;)Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASIDoaManager;Ljava/lang/String;[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;[B)[B
    .locals 9
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+handlerDoaModeEventFocus(Caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    const-string p1, "-callback mIDoaClient == null"

    :goto_0
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "e_doa_event"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v4, "e_doa_mode"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v5, "e_doa_addr"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v6, "e_doa_value"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    move v5, v0

    goto :goto_2

    :catch_2
    move-exception v2

    move v4, v0

    goto :goto_1

    :catch_3
    move-exception v2

    move v3, v0

    move v4, v3

    :goto_1
    move v5, v4

    :goto_2
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    :goto_3
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlerDoaModeEventFocus, audioEvent == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v3, :pswitch_data_0

    move p0, v0

    goto :goto_4

    :pswitch_0
    invoke-direct {p0, v0, v5, v2}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->b(III)I

    move-result p0

    goto :goto_4

    :pswitch_1
    invoke-direct {p0, v0, v5}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c(II)I

    move-result p0

    goto :goto_4

    :pswitch_2
    invoke-direct {p0, v0, v5, v2}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a(III)I

    move-result p0

    goto :goto_4

    :pswitch_3
    invoke-direct {p0, v0, v5}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->b(II)I

    move-result p0

    goto :goto_4

    :pswitch_4
    invoke-direct {p0, v0, v4}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a(II)I

    move-result p0

    goto :goto_4

    :pswitch_5
    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->b()I

    move-result p0

    :goto_4
    if-eq p0, v0, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_4
    const-string v0, "tas.action.ret.value"

    invoke-virtual {p2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-handlerDoaModeEventFocus(Caller:"

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

    :cond_1
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-handlerDoaModeEventFocus(Caller:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()I
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    const-string v1, "==+getMode"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;->getMode()I

    move-result p0

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    const-string v1, "==-getMode"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private b(II)I
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+getRegValue, addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;

    invoke-interface {p0, p2}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;->getRegValue(I)I

    move-result p1

    :cond_0
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==-getRegValue, mode_ret:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private b(III)I
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+setMemoryValue, addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eq p3, v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;

    invoke-interface {p0, p2, p3}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;->setMemoryValue(II)I

    move-result p1

    :cond_0
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "==-setMemoryValue, ret:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private c(II)I
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+getMemoryValue ,addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;

    invoke-interface {p0, p2}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;->getMemoryValue(I)I

    move-result p1

    :cond_0
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==-getMemoryValue, ret:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASIDoaManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->b:Lcom/tencent/wecarspeech/sdk/TASIDoaManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->b:Lcom/tencent/wecarspeech/sdk/TASIDoaManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->b:Lcom/tencent/wecarspeech/sdk/TASIDoaManager;

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
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->b:Lcom/tencent/wecarspeech/sdk/TASIDoaManager;

    return-object v0
.end method


# virtual methods
.method public setIIDoaClient(Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setIDoaClient, iDoaClient:"

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

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASIDoaManager;->c:Lcom/tencent/wecarspeech/sdk/TASIDoaManager$IDoaClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string p1, "doa_enable"

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    return-void
.end method
