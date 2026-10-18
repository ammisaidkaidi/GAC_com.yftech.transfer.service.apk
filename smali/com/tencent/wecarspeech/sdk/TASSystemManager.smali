.class public Lcom/tencent/wecarspeech/sdk/TASSystemManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$VolumeChannel;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/tencent/wecarspeech/sdk/TASSystemManager;


# instance fields
.field private d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

.field private e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

.field private f:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

.field private g:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

.field private h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;",
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

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->i:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5

    iget-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->f:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "handlerWireless return, mIWirelessClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    return-object v0

    :cond_1
    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "+handlerWireless"

    invoke-static {p2, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "e_wireless_open_close"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p3, p2

    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7014c65d

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    const v2, -0x66ca6e3e

    if-eq v1, v2, :cond_4

    const v2, -0x389b0b4d

    if-eq v1, v2, :cond_3

    const v2, 0x420ccc26

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "tas.focus.sys.wireless.wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, p2

    goto :goto_2

    :cond_3
    const-string v1, "tas.focus.sys.wireless.mobile.network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_2

    :cond_4
    const-string v1, "tas.focus.sys.wlan.hotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    goto :goto_2

    :cond_5
    const-string v1, "tas.focus.sys.wireless.bt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v0

    :goto_2
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->f:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    invoke-interface {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;->enableHotsPot(Z)I

    move-result p2

    goto :goto_3

    :pswitch_1
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->f:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    invoke-interface {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;->enableBluetooth(Z)I

    move-result p2

    goto :goto_3

    :pswitch_2
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->f:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    invoke-interface {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;->enableMobileNetwork(Z)I

    move-result p2

    goto :goto_3

    :pswitch_3
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->f:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    invoke-interface {p0, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;->enableWifi(Z)I

    move-result p2

    :goto_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    if-ne p2, v4, :cond_8

    move v3, v4

    goto :goto_4

    :cond_8
    const/4 v3, 0x4

    :goto_4
    :try_start_1
    const-string p1, "tas.action.ret.value"

    invoke-static {v3}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "-handlerWireless"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;[B)[B
    .locals 4

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->g:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "handlerSysThirdAppFocus return, mThirdAppClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v1, "+handlerSysThirdAppFocus"

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "e_thirdapp_open_close"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "e_thirdapp_pkg_name"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move v3, p2

    move-object p2, p1

    move p1, v3

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p2, p1

    move-object p1, v0

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_2

    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+openApp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->g:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;->openApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==-openApp("

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+closeApp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->g:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;->closeApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==-closeApp("

    goto :goto_2

    :goto_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p2, 0x5

    :cond_3
    const-string v1, "tas.action.ret.value"

    invoke-static {p2, v0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(ILjava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerSysThirdAppFocus, feedback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "-handlerSysThirdAppFocus, feedback = null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;[B)[B
    .locals 6

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "handlerSysToggleFocus return, mISystemClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v1, "+handlerSysToggleFocus"

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "e_toggle_open_close"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v2, "e_toggle_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v3, "e_rawtext"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v4, "e_doadirection"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move p1, v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    move p2, p1

    :goto_0
    move-object v2, v0

    move-object v3, v2

    :goto_1
    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==+toggleAction("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    invoke-interface {p0, p2, v2, v3, p1}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;->toggleAction(ZLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==-toggleAction("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "contextInfo"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x6

    goto :goto_3

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x5

    :cond_3
    :goto_3
    const-string v2, "tas.action.ret.value"

    invoke-static {v1, v0, p2}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerSysToggleFocus, feedback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method private c(Ljava/lang/String;[B)[B
    .locals 3

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "handlerSysHelpFocus return, mISystemClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v1, "+handlerSysHelpFocus"

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "e_help_domain"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "e_help_action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p2, v0

    :goto_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "==+openGlobalHelp"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;->openGlobalHelp()Z

    move-result p0

    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "==-openGlobalHelp"

    :goto_2
    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==+openDomainHelp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    invoke-interface {p0, p2, p1}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;->openDomainHelp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==-openDomainHelp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :goto_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string p2, "tas.action.ret.value"

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_4

    :cond_3
    const/4 p0, 0x0

    :goto_4
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "-handlerSysHelpFocus"

    invoke-static {p0, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;[B)[B
    .locals 1

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "handlerSysCurrentNavi return, mISystemClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "+handlerSysCurrentNavi"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;->getSysCurrentNavi()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "tas.action.ret.value"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "-handlerSysCurrentNavi"

    invoke-static {p0, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/lang/String;[B)[B
    .locals 4

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "handlerSysScreenFocus return, mIScreenClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "+handlerSysScreenFocus"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "e_volume"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "e_screen_level"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, p2

    move p2, p1

    move p1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    move v3, p2

    move-object p2, p1

    move p1, v3

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "==+setBrightness()"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {p0, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->setBrightness(I)Z

    move-result v0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "==-setBrightness()"

    goto/16 :goto_2

    :pswitch_1
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "==+decBrightnessLevel()"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {p0, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->decBrightnessLevel(I)Z

    move-result v0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "==-decBrightnessLevel()"

    goto/16 :goto_2

    :pswitch_2
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "==+incBrightnessLevel()"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {p0, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->incBrightnessLevel(I)Z

    move-result v0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "==-incBrightnessLevel()"

    goto :goto_2

    :pswitch_3
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "==+wakeScreen()"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->wakeScreen()Z

    move-result v0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "==-wakeScreen()"

    goto :goto_2

    :pswitch_4
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "==+muteScreen()"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->muteScreen()Z

    move-result v0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "==-muteScreen()"

    goto :goto_2

    :pswitch_5
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "==+minBrightness()"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->minBrightness()Z

    move-result v0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "==-minBrightness()"

    goto :goto_2

    :pswitch_6
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "==+maxBrightness()"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->maxBrightness()Z

    move-result v0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "==-maxBrightness()"

    goto :goto_2

    :pswitch_7
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "==+decBrightness()"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->decBrightness()Z

    move-result v0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "==-decBrightness()"

    goto :goto_2

    :pswitch_8
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "==+incBrightness()"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->incBrightness()Z

    move-result v0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "==-incBrightness()"

    :goto_2
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string p1, "tas.action.ret.value"

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    goto :goto_4

    :cond_2
    const/4 p2, 0x2

    :goto_4
    invoke-static {p2}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "-handlerSysScreenFocus"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method private f(Ljava/lang/String;[B)[B
    .locals 6

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "handlerSystemVolumeFocus return, mIVolumeClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "+handlerSysVolumeFocus"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "e_volume"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "e_volume_channel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "e_volume_value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move v2, p1

    goto :goto_0

    :catch_2
    move-exception v1

    move v2, p1

    move p2, v0

    :goto_0
    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_1
    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==+setVolume("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {p0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->setVolume(II)I

    move-result p1

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-setVolume("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_1
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==+muteVolume(false, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {p0, p1, v2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->muteVolume(ZI)I

    move-result p1

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-muteVolume(false, "

    goto/16 :goto_2

    :pswitch_2
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+muteVolume(true, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {p0, v3, v2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->muteVolume(ZI)I

    move-result p1

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-muteVolume(true, "

    goto/16 :goto_2

    :pswitch_3
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+minVolume("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {p0, v2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->minVolume(I)I

    move-result p1

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-minVolume("

    goto/16 :goto_2

    :pswitch_4
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+maxVolume("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {p0, v2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->maxVolume(I)I

    move-result p1

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-maxVolume("

    goto :goto_2

    :pswitch_5
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+decVolume("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {p0, v2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->decVolume(I)I

    move-result p1

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-decVolume("

    goto :goto_2

    :pswitch_6
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==+incVolume("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {p0, v2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->incVolume(I)I

    move-result p1

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==-incVolume("

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_2

    goto :goto_5

    :cond_2
    if-ne p1, v3, :cond_3

    move v0, v3

    goto :goto_5

    :cond_3
    const/4 p1, 0x6

    if-ne p2, p1, :cond_4

    const/4 v0, 0x3

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    :try_start_3
    const-string p1, "tas.action.ret.value"

    invoke-static {v0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/libspeechcommon/def/ActionRet;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    sget-object p2, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    sget-object p1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p2, "-handlerSysVolumeFocus"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASSystemManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->c:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->c:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->c:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

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
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->c:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 4

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v2, "tas.action.sys.volume.set.enabled"

    new-array v3, v1, [B

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v2, "tas.action.sys.screen.set.enabled"

    new-array v3, v1, [B

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->f:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v2, "tas.action.sys.wireless.set.enabled"

    new-array v3, v1, [B

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->g:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v2, "tas.action.sys.thirdapp.set.enabled"

    new-array v3, v1, [B

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_3
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v2, "tas.action.sys.system.set.enabled"

    new-array v1, v1, [B

    invoke-virtual {v0, v2, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_4
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->uploadThirdAppList(Ljava/util/ArrayList;)V

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

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
    .locals 2

    sget-object p4, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback, caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,callback:"

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

    const/4 p4, 0x0

    const-string v0, "tas.focus.sys.volume"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->f(Ljava/lang/String;[B)[B

    move-result-object p4

    goto :goto_2

    :cond_1
    const-string v0, "tas.focus.sys.screen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e(Ljava/lang/String;[B)[B

    move-result-object p4

    goto :goto_2

    :cond_2
    const-string v0, "tas.focus.sys.wireless.wifi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tas.focus.sys.wireless.mobile.network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tas.focus.sys.wireless.bt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tas.focus.sys.wlan.hotspot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "tas.focus.sys.thirdapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->a(Ljava/lang/String;[B)[B

    move-result-object p4

    goto :goto_2

    :cond_4
    const-string v0, "tas.focus.sys.toggle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b(Ljava/lang/String;[B)[B

    move-result-object p4

    goto :goto_2

    :cond_5
    const-string v0, "tas.focus.sys.help"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->c(Ljava/lang/String;[B)[B

    move-result-object p4

    goto :goto_2

    :cond_6
    const-string v0, "tas.focus.sys.navi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d(Ljava/lang/String;[B)[B

    move-result-object p4

    goto :goto_2

    :cond_7
    :goto_1
    invoke-direct {p0, p2, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p4

    :cond_8
    :goto_2
    return-object p4
.end method

.method public actionComplete(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "+actionComplete"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.sys.action.complete"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "-actionComplete"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isSpeechForground()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "+isSpeechForground"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.sys.is.foreground"

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-virtual {p0, v0, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v2, "-isSpeechForground"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "e_app_foreground_status"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    :goto_0
    return p0
.end method

.method public openHelpPage()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "+openSRHelpPage"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.sys.open.help.page"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "-openSRHelpPage"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenClient iScreenClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->e:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string p1, "tas.action.sys.screen.set.enabled"

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    return-void
.end method

.method public setSystemClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setSystemClient, client:"

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

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->h:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.sys.system.set.enabled"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setSystemClient, client:"

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

.method public setThirdAppClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setThirdAppClient, client:"

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

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->g:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.sys.thirdapp.set.enabled"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setThirdAppClient, client:"

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

.method public setVolumeClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeClient iVolumeClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->d:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string p1, "tas.action.sys.volume.set.enabled"

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    return-void
.end method

.method public setWirelessClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWirelessClient iWirelessClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->f:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string p1, "tas.action.sys.wireless.set.enabled"

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    return-void
.end method

.method public uploadThirdAppList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->i:Ljava/util/ArrayList;

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string v0, "+uploadThirdAppList"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "e_app_name"

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "e_app_pkg_name"

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string v0, "tas.action.sys.thirdapp.upload"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "-uploadThirdAppList"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->b:Ljava/lang/String;

    const-string p1, "uploadThirdAppList return, appList == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
