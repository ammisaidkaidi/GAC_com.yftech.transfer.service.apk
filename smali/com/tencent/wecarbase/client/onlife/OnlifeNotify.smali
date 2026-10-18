.class public Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;
.super Ljava/lang/Object;
.source "OnlifeNotify.java"


# static fields
.field private static volatile sInstance:Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;
    .locals 2

    .line 20
    sget-object v0, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;->sInstance:Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;->sInstance:Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;

    invoke-direct {v1}, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;->sInstance:Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;->sInstance:Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "content"

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "title"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "detail"

    .line 50
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "voice_text"

    .line 51
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/tencent/wecarbase/common/ReflectUtils;->playTTS(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->showPopupWindowParkAutoClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    iget-object p0, p0, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlifeNotify, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
