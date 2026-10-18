.class public final Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile b:Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;


# instance fields
.field private c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;[B)[B
    .locals 9

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+handlerDoaModeEventFocus(Caller:"

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
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    const-string p1, "-callback mIDoaClient == null"

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

    const-string v3, "e_doa_event"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v4, "e_doa_mode"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v5, "e_doa_addr"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v6, "e_doa_value"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    move v5, v1

    goto :goto_3

    :catch_2
    move-exception v2

    move v4, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move v3, v1

    move v4, v3

    :goto_2
    move v5, v4

    :goto_3
    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_4
    if-ne v3, v1, :cond_3

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    const-string v7, "handlerDoaModeEventFocus return, audioEvent == -1"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlerDoaModeEventFocus, audioEvent == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==+setMemoryValue, addr="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", value="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v5, v1, :cond_4

    if-eq v2, v1, :cond_4

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;

    invoke-interface {v3, v5, v2}, Lcom/tencent/wecarspeech/sdk/api/IDoaClient;->setMemoryValue(II)I

    move-result v2

    goto :goto_5

    :cond_4
    move v2, v1

    :goto_5
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==-setMemoryValue, ret:"

    goto/16 :goto_9

    :pswitch_1
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+getMemoryValue ,addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v5, v1, :cond_5

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;

    invoke-interface {v2, v5}, Lcom/tencent/wecarspeech/sdk/api/IDoaClient;->getMemoryValue(I)I

    move-result v2

    goto :goto_6

    :cond_5
    move v2, v1

    :goto_6
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==-getMemoryValue, ret:"

    goto :goto_9

    :pswitch_2
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==+setRegValue, addr="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", value="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v5, v1, :cond_6

    if-eq v2, v1, :cond_6

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;

    invoke-interface {v3, v5, v2}, Lcom/tencent/wecarspeech/sdk/api/IDoaClient;->setRegValue(II)I

    move-result v2

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==-setRegValue, ret:"

    goto :goto_9

    :pswitch_3
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+getRegValue, addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v5, v1, :cond_7

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;

    invoke-interface {v2, v5}, Lcom/tencent/wecarspeech/sdk/api/IDoaClient;->getRegValue(I)I

    move-result v2

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==-getRegValue, mode_ret:"

    :goto_9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_4
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==+setModeValue, mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v4, v1, :cond_8

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;

    invoke-interface {v2, v4}, Lcom/tencent/wecarspeech/sdk/api/IDoaClient;->setModeValue(I)I

    :cond_8
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    const-string v3, "==-setModeValue"

    goto :goto_a

    :pswitch_5
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    const-string v3, "==+getMode"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;

    invoke-interface {v2}, Lcom/tencent/wecarspeech/sdk/api/IDoaClient;->getMode()I

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    const-string v3, "==-getMode"

    :goto_a
    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    move v2, v1

    :goto_c
    if-eq v2, v1, :cond_9

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_4
    const-string v0, "tas.action.ret.value"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-handlerDoaModeEventFocus(Caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,resut:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-handlerDoaModeEventFocus(Caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_a

    const-string p1, "null"

    goto :goto_e

    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    :goto_e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    nop

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

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;

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
    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "doa_enable"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

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
    .locals 0

    const-string p4, "e_doa_action"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setIIDoaClient(Lcom/tencent/wecarspeech/sdk/api/IDoaClient;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->a:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSADoaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IDoaClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string p1, "doa_enable"

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    return-void
.end method
