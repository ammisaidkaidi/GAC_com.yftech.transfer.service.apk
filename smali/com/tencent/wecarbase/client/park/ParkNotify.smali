.class public Lcom/tencent/wecarbase/client/park/ParkNotify;
.super Ljava/lang/Object;
.source "ParkNotify.java"


# static fields
.field private static final mParkSpLogo:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mParkSpName:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/tencent/wecarbase/client/park/ParkNotify;


# instance fields
.field private final MAX_PASS_TIME:J

.field private final TAG:Ljava/lang/String;

.field private final mLogoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/client/park/ParkNotify;->mParkSpLogo:Landroid/support/v4/util/ArrayMap;

    .line 32
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/client/park/ParkNotify;->mParkSpName:Landroid/support/v4/util/ArrayMap;

    .line 35
    sget-object v0, Lcom/tencent/wecarbase/client/park/ParkNotify;->mParkSpLogo:Landroid/support/v4/util/ArrayMap;

    const-string v1, "etcp"

    const-string v2, "icon_park_sp_etcp"

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/tencent/wecarbase/client/park/ParkNotify;->mParkSpLogo:Landroid/support/v4/util/ArrayMap;

    const-string v1, "easypark"

    const-string v2, "icon_park_sp_easypark"

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/tencent/wecarbase/client/park/ParkNotify;->mParkSpName:Landroid/support/v4/util/ArrayMap;

    const-string v1, "etcp"

    const-string v2, "ETCP"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/tencent/wecarbase/client/park/ParkNotify;->mParkSpName:Landroid/support/v4/util/ArrayMap;

    const-string v1, "easypark"

    const-string v2, "\u505c\u7b80\u5355"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/client/park/ParkNotify;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x78

    .line 25
    iput-wide v0, p0, Lcom/tencent/wecarbase/client/park/ParkNotify;->MAX_PASS_TIME:J

    const-string v0, "http://wxmycar.map.qq.com/pic/logo"

    .line 29
    iput-object v0, p0, Lcom/tencent/wecarbase/client/park/ParkNotify;->mLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/client/park/ParkNotify;
    .locals 2

    .line 43
    sget-object v0, Lcom/tencent/wecarbase/client/park/ParkNotify;->sInstance:Lcom/tencent/wecarbase/client/park/ParkNotify;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/tencent/wecarbase/client/park/ParkNotify;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/client/park/ParkNotify;->sInstance:Lcom/tencent/wecarbase/client/park/ParkNotify;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/tencent/wecarbase/client/park/ParkNotify;

    invoke-direct {v1}, Lcom/tencent/wecarbase/client/park/ParkNotify;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/client/park/ParkNotify;->sInstance:Lcom/tencent/wecarbase/client/park/ParkNotify;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/client/park/ParkNotify;->sInstance:Lcom/tencent/wecarbase/client/park/ParkNotify;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    const-string v0, "content"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "event_time"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/tencent/wecarbase/client/park/ParkNotify;->TAG:Ljava/lang/String;

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

    const-string v0, "title"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "detail"

    .line 88
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "voice_text"

    .line 90
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra"

    .line 92
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "extra"

    .line 93
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v3, "park_sp"

    .line 96
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "park_sp"

    .line 97
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_3

    .line 103
    sget-object v3, Lcom/tencent/wecarbase/client/park/ParkNotify;->mParkSpName:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 104
    sget-object v3, Lcom/tencent/wecarbase/client/park/ParkNotify;->mParkSpLogo:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    move-object p1, v4

    .line 109
    :goto_1
    invoke-static {v2}, Lcom/tencent/wecarbase/common/ReflectUtils;->playTTS(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v0, v1, v4, p1}, Lcom/tencent/wecarbase/client/park/ParkNotify;->showPopupView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 117
    iget-object p0, p0, Lcom/tencent/wecarbase/client/park/ParkNotify;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParkNotify , error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public showPopupView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 123
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->showPopupWindowParkAutoClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    return-void
.end method
