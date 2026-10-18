.class public final Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# static fields
.field private static volatile b:Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;


# instance fields
.field private c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wecarspeech/sdk/api/IRadioClient<",
            "Lcom/tencent/libspeechcommon/def/ActionRet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;

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
    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.radio.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

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
    .locals 5

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+callback, caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,caller back:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "tas.focus.radio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_2

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-callback, caller:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,caller back:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    :goto_1
    const-string p1, "null"

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_2
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;

    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    const-string v1, "handlerRadioFocus return, mIRadioClient == null"

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-callback, caller:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,caller back:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    array-length p4, p3

    if-lez p4, :cond_5

    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "e_radio_name"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "e_radio_code"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p4

    goto :goto_4

    :catch_0
    move-exception p4

    goto :goto_3

    :catch_1
    move-exception p4

    move-object v1, v0

    :goto_3
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    const/4 p4, -0x1

    invoke-static {p4}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p4

    const-string v2, "tas.focus.radio.play.fm"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+playFMChannel(radioCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;

    invoke-interface {p4, v0}, Lcom/tencent/wecarspeech/sdk/api/IRadioClient;->playFMChannel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==-playFMChannel(radioCode:"

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_6
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    const-string v1, "handlerRadioFocus return, radioCode == null"

    :goto_6
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_7
    const-string v2, "tas.focus.radio.play.am"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_6

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+playAMChannel(radioCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;

    invoke-interface {p4, v0}, Lcom/tencent/wecarspeech/sdk/api/IRadioClient;->playAMChannel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==-playAMChannel(radioCode:"

    goto :goto_5

    :cond_8
    const-string v2, "tas.focus.radio.play.channel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v1, :cond_a

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    const-string v1, "handlerRadioFocus return, radioChannel == null and radioCode == null"

    goto :goto_6

    :cond_a
    :goto_7
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==+playChannel(radioChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", radioCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;

    invoke-interface {p4, v1, v0}, Lcom/tencent/wecarspeech/sdk/api/IRadioClient;->playChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-playChannel(radioChannel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", radioCode:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    const-string v0, "tas.focus.radio.open"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    const-string v0, "==+openApp()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;

    invoke-interface {p4, v1}, Lcom/tencent/wecarspeech/sdk/api/IRadioClient;->openApp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    :goto_8
    check-cast p4, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    const-string v1, "==-openApp()"

    :goto_9
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    const-string v0, "tas.focus.radio.close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    const-string v0, "==+openApp()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;

    invoke-interface {p4, v1}, Lcom/tencent/wecarspeech/sdk/api/IRadioClient;->closeApp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_8

    :cond_d
    const-string v0, "tas.focus.radio.start.scan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    const-string v0, "==+startAutoScan()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;

    invoke-interface {p4}, Lcom/tencent/wecarspeech/sdk/api/IRadioClient;->startAutoScan()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    const-string v1, "==-startAutoScan()"

    goto :goto_9

    :cond_e
    :goto_a
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-callback, caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,caller back:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_f

    const-string p1, "null"

    goto :goto_b

    :cond_f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a(Lcom/tencent/libspeechcommon/def/ActionRet;)[B

    move-result-object p0

    return-object p0
.end method

.method public setRadioClient(Lcom/tencent/wecarspeech/sdk/api/IRadioClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/sdk/api/IRadioClient<",
            "Lcom/tencent/libspeechcommon/def/ActionRet;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setRadioClient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, ":null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->c:Lcom/tencent/wecarspeech/sdk/api/IRadioClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.radio.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setRadioClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    const-string p1, ":null"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
