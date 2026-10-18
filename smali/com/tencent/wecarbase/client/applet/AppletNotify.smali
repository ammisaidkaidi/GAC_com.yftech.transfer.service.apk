.class public Lcom/tencent/wecarbase/client/applet/AppletNotify;
.super Ljava/lang/Object;
.source "AppletNotify.java"


# static fields
.field private static final NEGATIVE_SEMANTIC:Ljava/lang/String; = "negative_semantic"

.field private static final POSITIVE_SEMANTIC:Ljava/lang/String; = "positive_semantic"

.field private static final SCENE_ID:Ljava/lang/String; = "scene_popup_view"

.field private static volatile sInstance:Lcom/tencent/wecarbase/client/applet/AppletNotify;


# instance fields
.field private final MAX_PASS_TIME:J

.field private final TAG:Ljava/lang/String;

.field private mAsrHelper:Lcom/tencent/wecarbase/helper/AsrHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x78

    .line 34
    iput-wide v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->MAX_PASS_TIME:J

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/client/applet/AppletNotify;)Lcom/tencent/wecarbase/helper/AsrHelper;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->mAsrHelper:Lcom/tencent/wecarbase/helper/AsrHelper;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/client/applet/AppletNotify;
    .locals 2

    .line 43
    sget-object v0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->sInstance:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/tencent/wecarbase/client/applet/AppletNotify;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/client/applet/AppletNotify;->sInstance:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/tencent/wecarbase/client/applet/AppletNotify;

    invoke-direct {v1}, Lcom/tencent/wecarbase/client/applet/AppletNotify;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/client/applet/AppletNotify;->sInstance:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->sInstance:Lcom/tencent/wecarbase/client/applet/AppletNotify;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Lorg/json/JSONObject;)V
    .locals 9

    :try_start_0
    const-string v0, "content"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "event_time"

    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pass time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tips_message"

    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tips"

    .line 108
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "tts"

    .line 112
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "next_action"

    .line 113
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "mini_program"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "url"

    .line 135
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "icon_url"

    .line 136
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :try_start_1
    invoke-static {}, Lcom/tencent/wecarbase/client/SpeechManager;->getInstance()Lcom/tencent/wecarbase/client/SpeechManager;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wecarbase/client/SpeechManager;->init(Landroid/content/Context;)V

    .line 140
    iget-object v1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->mAsrHelper:Lcom/tencent/wecarbase/helper/AsrHelper;

    if-nez v1, :cond_1

    .line 141
    new-instance v1, Lcom/tencent/wecarbase/helper/AsrHelper;

    invoke-direct {v1}, Lcom/tencent/wecarbase/helper/AsrHelper;-><init>()V

    iput-object v1, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->mAsrHelper:Lcom/tencent/wecarbase/helper/AsrHelper;

    .line 143
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "positive_semantic"

    .line 145
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 147
    :try_start_2
    iget-object v2, p0, Lcom/tencent/wecarbase/client/applet/AppletNotify;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoClassDefFoundError:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    invoke-static {v4}, Lcom/tencent/wecarbase/common/ReflectUtils;->playTTS(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 154
    new-instance v8, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;

    invoke-direct {v8, p0, v0, p1}, Lcom/tencent/wecarbase/client/applet/AppletNotify$1;-><init>(Lcom/tencent/wecarbase/client/applet/AppletNotify;Ljava/lang/String;Ljava/util/HashMap;)V

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->showPopupView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public showPopupView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)V
    .locals 7

    .line 243
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->showPopupWebAppAutoClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    return-void
.end method
