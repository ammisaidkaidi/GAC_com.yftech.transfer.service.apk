.class Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;


# direct methods
.method private constructor <init>(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarspeech/sdk/TASRadioManager;Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;-><init>(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.radio.set.enabled"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

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
    .locals 5

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

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

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p0

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
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p4}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p4

    if-nez p4, :cond_4

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "handlerRadioFocus return, mIRadioClient == null"

    invoke-static {p0, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p0

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
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    const-string p4, "tas.focus.radio.play.fm"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_7

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==+playFMChannel(radioCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playFMChannel(Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==-playFMChannel(radioCode:"

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_6
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "handlerRadioFocus return, radioCode == null"

    :goto_7
    invoke-static {p0, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_7
    const-string p4, "tas.focus.radio.play.am"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==+playAMChannel(radioCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playAMChannel(Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==-playAMChannel(radioCode:"

    goto :goto_5

    :cond_8
    const-string p4, "tas.focus.radio.play.channel"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    if-nez v1, :cond_a

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "handlerRadioFocus return, radioChannel == null and radioCode == null"

    goto :goto_7

    :cond_a
    :goto_8
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+playChannel(radioChannel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", radioCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

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

    goto/16 :goto_6

    :cond_b
    const-string p4, "tas.focus.radio.open"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+openApp()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->openApp(Ljava/lang/String;)Z

    move-result p0

    :goto_9
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==-openApp()"

    goto/16 :goto_6

    :cond_c
    const-string p4, "tas.focus.radio.close"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+openApp()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->closeApp(Ljava/lang/String;)Z

    move-result p0

    goto :goto_9

    :cond_d
    const-string p4, "tas.focus.radio.play"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_e

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+playRadio()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playRadio()Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==-playRadio()"

    goto/16 :goto_6

    :cond_e
    const-string p4, "tas.focus.radio.pause"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+pauseRadio()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->pauseRadio()Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==-pauseRadio()"

    goto/16 :goto_6

    :cond_f
    const-string p4, "tas.focus.radio.play.prev"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+playPrevChannel()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playPrevChannel()Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==-playPrevChannel()"

    goto/16 :goto_6

    :cond_10
    const-string p4, "tas.focus.radio.play.next"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+playNextChannel()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playNextChannel()Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==-playNextChannel()"

    goto/16 :goto_6

    :cond_11
    const-string p4, "tas.focus.radio.start.scan"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_12

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==+startAutoScan()"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$a;->a:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->startAutoScan()Z

    move-result p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "==-startAutoScan()"

    goto/16 :goto_6

    :cond_12
    :goto_a
    move p0, v2

    :goto_b
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v0, "tas.action.ret.value"

    if-eqz p0, :cond_13

    const/4 v2, 0x1

    :cond_13
    invoke-static {v2}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :catch_2
    move-exception p0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-callback, caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,caller back:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_14

    const-string p1, "null"

    goto :goto_d

    :cond_14
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
