.class public Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;
.super Lcom/tencent/taes/api/moss/BaseApiImpl;
.source "WeCarMasApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/moss/IWeCarMasApi;


# static fields
.field private static final BACK_APP_TO_BACKGROUND:Ljava/lang/String; = "backAppToBackground"

.field private static final BEGIN:Ljava/lang/String; = "onBeginPlay"

.field private static final CLOSE_MOSS_APP:Ljava/lang/String; = "closeMiniProgram"

.field private static DETAIL_RECOMMEND_APP_LIST:Ljava/lang/String; = "requestDetailRecommendAppList"

.field private static GET_MEDIA_TYPE:Ljava/lang/String; = "getMediaType"

.field private static final GET_MOSS_CLIENT_SHOW:Ljava/lang/String; = "getMossAppClientShow"

.field private static final GET_MOSS_INFO:Ljava/lang/String; = "getMossInfo"

.field private static GET_MOSS_LABEL:Ljava/lang/String; = "getMossLabel"

.field private static final GET_MUSIC_INFO:Ljava/lang/String; = "getMusicInfo"

.field private static final GET_RECENT_APP_LIST:Ljava/lang/String; = "getRecentAppList"

.field private static IS_FIRST_MEDIA_OF_PLAYLIST:Ljava/lang/String; = "isFirstMediaOfPlayList"

.field private static IS_FORWARD_OUT_OF_RANGE:Ljava/lang/String; = "isForwardOutOfRange"

.field private static IS_LAST_MEDIA_OF_PLAYLIST:Ljava/lang/String; = "isLastMediaOfPlayList"

.field private static IS_LOGIN:Ljava/lang/String; = "isLogin"

.field private static IS_MINI_PROGRAM_EXIST:Ljava/lang/String; = "isMiniProgramExist"

.field private static IS_MINI_PROGRAM_OPEN:Ljava/lang/String; = "isMiniProgramOpened"

.field private static IS_MINI_PROGRAM_PLAY:Ljava/lang/String; = "isMiniProgramPlay"

.field private static IS_MOSS_INIT:Ljava/lang/String; = "isMossInited"

.field private static IS_SUPPORT_OPERATION:Ljava/lang/String; = "isSupportOperation"

.field private static final LOAD_ALL_APP:Ljava/lang/String; = "loadAllAppsFromNet"

.field private static LOAD_ALL_APP_CACHE:Ljava/lang/String; = "loadAllAppsFromCache"

.field private static final LOGIN:Ljava/lang/String; = "login"

.field private static NEXT:Ljava/lang/String; = "next"

.field private static final ONEND:Ljava/lang/String; = "onMusicEnd"

.field private static final ONERROR:Ljava/lang/String; = "onMusicError"

.field private static final ONPAUSE:Ljava/lang/String; = "onMusicPause"

.field private static final ONPLAY:Ljava/lang/String; = "onMusicPlay"

.field private static final ONPROGRESS:Ljava/lang/String; = "onProgress"

.field public static final ONSEEKCOMPLETE:Ljava/lang/String; = "onSeekComplete"

.field public static final ONSEEKING:Ljava/lang/String; = "onSeeking"

.field private static final ONSTOP:Ljava/lang/String; = "onMusicStop"

.field private static final ONWAITING:Ljava/lang/String; = "onMusicWaiting"

.field private static final OPEN_MOSS_APP:Ljava/lang/String; = "openMossApp"

.field private static final OPEN_MOSS_IN_SYSTEM_DIALOG:Ljava/lang/String; = "openMossInSystemDialog"

.field private static OPERATION_MEDIA:Ljava/lang/String; = "operationMedia"

.field private static PAUSE:Ljava/lang/String; = "pause"

.field private static PLAY:Ljava/lang/String; = "play"

.field private static PREV:Ljava/lang/String; = "prev"

.field private static RECOMMEND_APP_LIST:Ljava/lang/String; = "requestRecommendAppList"

.field private static final REQUEST_WITH_TAA:Ljava/lang/String; = "requestLbsRecommend"

.field private static SEARCH_APP_LIST:Ljava/lang/String; = "searchAppListFromLabel"

.field private static SERVICE_ERROR:Ljava/lang/String; = "Service is not connection"

.field private static TAG:Ljava/lang/String; = "WeCarMasApiImpl"


# instance fields
.field private callbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Landroid/content/ServiceConnection;

.field private isMossRequestCallback:Z

.field private volatile isServiceBind:Z

.field private mConnectListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/taes/remote/api/IServerConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

.field private mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

.field private minAppFrontListener:Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;

.field protected mossCacheCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private recentAppCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private strTargePos:I

.field protected taaCallback:Lcom/tencent/taes/api/moss/listener/ICallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/taes/api/moss/listener/ICallBack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targeToffet:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/tencent/taes/api/moss/BaseApiImpl;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->callbackHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isMossRequestCallback:Z

    .line 123
    new-instance v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;-><init>(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)V

    iput-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->connection:Landroid/content/ServiceConnection;

    .line 159
    invoke-virtual {p0, p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Lcom/tencent/mosssdk/IMossApiService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;Lcom/tencent/mosssdk/IMossApiService;)Lcom/tencent/mosssdk/IMossApiService;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Lcom/tencent/mosssdk/IMossApiCallback$Stub;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiCallback:Lcom/tencent/mosssdk/IMossApiCallback$Stub;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Ljava/util/Set;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mConnectListenerSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->disconnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->minAppFrontListener:Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;

    return-object p0
.end method

.method private appletList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;"
        }
    .end annotation

    .line 624
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 626
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    const-string v0, " appletList  response is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 630
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "appletList"

    .line 631
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "appletList"

    .line 632
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 633
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 634
    new-instance v1, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;

    invoke-direct {v1}, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;-><init>()V

    .line 635
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "appId"

    .line 636
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->appId:Ljava/lang/String;

    const-string v3, "icon"

    .line 637
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->logoUrl:Ljava/lang/String;

    const-string v3, "name"

    .line 638
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->cnName:Ljava/lang/String;

    const-string v3, "path"

    .line 639
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->pagePath:Ljava/lang/String;

    const-string v3, "opWords"

    .line 640
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->opWords:Ljava/lang/String;

    const-string v3, "banner"

    .line 641
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->banner:Ljava/lang/String;

    .line 642
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_1
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mossAppInfoList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 647
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p0
.end method

.method private disconnected()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mConnectListenerSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 185
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mConnectListenerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 187
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/IServerConnectListener;

    .line 190
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/taes/remote/api/IServerConnectListener;->onDisConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 192
    sget-object v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private message(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 581
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    .line 582
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 584
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private mossAppLists(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MossAppList;",
            ">;"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 598
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    const-string p1, " mossAppLists  response is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 602
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "appletsList"

    .line 603
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "appletsList"

    .line 604
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 605
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 606
    new-instance v2, Lcom/tencent/taes/api/moss/bean/MossAppList;

    invoke-direct {v2}, Lcom/tencent/taes/api/moss/bean/MossAppList;-><init>()V

    .line 607
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 608
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->appletList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v5, "typeName"

    .line 609
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/taes/api/moss/bean/MossAppList;->setTypeName(Ljava/lang/String;)V

    const-string v5, "subtitle"

    .line 610
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/taes/api/moss/bean/MossAppList;->setSubtitle(Ljava/lang/String;)V

    const-string v5, "bgImage"

    .line 611
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/taes/api/moss/bean/MossAppList;->setBgImage(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v2, v4}, Lcom/tencent/taes/api/moss/bean/MossAppList;->setAppletsList(Ljava/util/List;)V

    .line 613
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    :cond_1
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mossAppLists = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 618
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public backAppToBackground()V
    .locals 2

    const-string v0, "backAppToBackground"

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public canMossAppOpen(Ljava/lang/String;)Z
    .locals 2

    .line 847
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appId"

    .line 849
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 850
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->IS_MINI_PROGRAM_EXIST:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 851
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMiniProgramExist  ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 854
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public closeMossApp()V
    .locals 2

    const-string v0, "closeMiniProgram"

    const/4 v1, 0x0

    .line 294
    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public emitEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-eqz v0, :cond_0

    .line 832
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/mosssdk/IMossApiService;->emitEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaType()I
    .locals 2

    .line 876
    :try_start_0
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->GET_MEDIA_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 877
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 879
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getMossAudioBean()Lcom/tencent/taes/api/moss/bean/MossAudioBean;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getMusicInfo"

    .line 660
    invoke-virtual {p0, v1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getMossInfo"

    .line 661
    invoke-virtual {p0, v2, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 662
    sget-object v2, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "musicInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n mossInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 664
    const-class v2, Lcom/tencent/taes/api/moss/bean/MossAudioBean;

    invoke-static {v1, v2}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/api/moss/bean/MossAudioBean;

    .line 665
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "appid"

    .line 667
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/taes/api/moss/bean/MossAudioBean;->appId:Ljava/lang/String;

    const-string p0, "logoUrl"

    .line 668
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/taes/api/moss/bean/MossAudioBean;->logoUrl:Ljava/lang/String;

    const-string p0, "path"

    .line 669
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/taes/api/moss/bean/MossAudioBean;->mossPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 674
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public getMossLabel()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MossLabel;",
            ">;"
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->GET_MOSS_LABEL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    sget-object v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMossLabel : result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$3;

    invoke-direct {v1, p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$3;-><init>(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)V

    .line 413
    invoke-virtual {v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$3;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 412
    invoke-static {v0, p0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getRecentAppList(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->recentAppCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    const-string v0, "getRecentAppList"

    const/4 v1, 0x0

    .line 328
    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_1

    .line 332
    invoke-interface {p1, v0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onSucceeded(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "error: result is empty"

    .line 336
    invoke-interface {p1, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isFirstMediaOfPlayList()Z
    .locals 3

    .line 900
    :try_start_0
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->IS_FIRST_MEDIA_OF_PLAYLIST:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 901
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirst  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 904
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isForwardOutOfRange(I)Z
    .locals 2

    .line 922
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "step"

    .line 924
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 925
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->IS_FORWARD_OUT_OF_RANGE:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 926
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 928
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isLastMediaOfPlayList()Z
    .locals 2

    .line 912
    :try_start_0
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->IS_LAST_MEDIA_OF_PLAYLIST:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 913
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 915
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isLogin(Ljava/lang/String;)Z
    .locals 2

    .line 935
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appId"

    .line 937
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 938
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->IS_LOGIN:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 939
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 941
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isMiniProgramOpened(Ljava/lang/String;)Z
    .locals 2

    .line 861
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appId"

    .line 863
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->IS_MINI_PROGRAM_OPEN:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 865
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMiniProgramOpened  ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 868
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isMiniProgramPlay()Z
    .locals 2

    .line 948
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 950
    :try_start_0
    sget-object v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->IS_MINI_PROGRAM_PLAY:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 951
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 953
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isMossAppForeground(Ljava/lang/String;)Z
    .locals 2

    .line 304
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appId"

    .line 306
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "getMossAppClientShow"

    .line 307
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 308
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 310
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isMossInited()Z
    .locals 2

    .line 994
    :try_start_0
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->IS_MOSS_INIT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 995
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 997
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportOperation(I)I
    .locals 2

    .line 886
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "operation"

    .line 888
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 889
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->IS_SUPPORT_OPERATION:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 890
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 892
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public loadAllAppsFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 353
    :try_start_0
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAllAppsFromCache  : isRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isMossRequestCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \n paramJson = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossCacheCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 357
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isMossRequestCallback:Z

    if-nez p1, :cond_2

    .line 358
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "result"

    .line 359
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 362
    :try_start_1
    invoke-static {p1}, Lcom/tencent/taes/api/moss/bean/ResultBean;->fromJSON(Ljava/lang/String;)Lcom/tencent/taes/api/moss/bean/ResultBean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 364
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    return-object p1

    .line 369
    :cond_1
    iget-object p1, p1, Lcom/tencent/taes/api/moss/bean/ResultBean;->data:Ljava/util/List;

    .line 370
    iget-object p2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossCacheCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-eqz p2, :cond_2

    .line 371
    iget-object p2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossCacheCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    invoke-interface {p2, p1}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onSucceeded(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 375
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 376
    iget-object p2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossCacheCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-eqz p2, :cond_2

    .line 377
    iget-object p2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossCacheCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 380
    iput-boolean p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isMossRequestCallback:Z

    const-string p0, ""

    return-object p0
.end method

.method public loadAllAppsFromCache(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossCacheCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    .line 344
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "onServiceDisconnected"

    .line 345
    invoke-interface {p1, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    return-void

    .line 348
    :cond_0
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->LOAD_ALL_APP_CACHE:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public loadAllAppsFromNet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p1, 0x0

    .line 700
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 701
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "result"

    .line 702
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    iget-object v2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-nez v2, :cond_0

    .line 704
    iput-boolean p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isMossRequestCallback:Z

    const-string p2, ""

    return-object p2

    :cond_0
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    if-nez p2, :cond_1

    const-string p2, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p2

    :cond_1
    const/4 p2, 0x0

    .line 713
    :try_start_1
    invoke-static {v0}, Lcom/tencent/taes/api/moss/bean/ResultBean;->fromJSON(Ljava/lang/String;)Lcom/tencent/taes/api/moss/bean/ResultBean;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 715
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez p2, :cond_2

    const-string p2, ""

    return-object p2

    .line 720
    :cond_2
    iget-object p2, p2, Lcom/tencent/taes/api/moss/bean/ResultBean;->data:Ljava/util/List;

    .line 721
    sget-object v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAllAppsFromNet  : result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-eqz v0, :cond_4

    .line 723
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    invoke-interface {v0, p2}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onSucceeded(Ljava/util/List;)V

    goto :goto_1

    .line 726
    :cond_3
    iput-boolean p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isMossRequestCallback:Z

    .line 727
    iget-object p2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-eqz p2, :cond_4

    .line 728
    iget-object p2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    invoke-interface {p2, v0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 731
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 732
    iput-boolean p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isMossRequestCallback:Z

    .line 733
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-eqz p1, :cond_4

    .line 734
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public loadAllAppsFromNet(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 684
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    const/4 v0, 0x1

    .line 686
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isMossRequestCallback:Z

    .line 687
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "onServiceDisconnected"

    .line 688
    invoke-interface {p1, v0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 689
    iput-boolean p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isMossRequestCallback:Z

    return-void

    :cond_0
    const-string p1, "loadAllAppsFromNet"

    const/4 v0, 0x0

    .line 692
    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 694
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public minAppFrontChange(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 385
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;-><init>(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, ""

    return-object p0
.end method

.method public mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-eqz v0, :cond_0

    .line 747
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/mosssdk/IMossApiService;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 749
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 752
    :cond_0
    invoke-direct {p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->disconnected()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public next()V
    .locals 2

    .line 246
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->NEXT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onMusicStatusChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 770
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 774
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    .line 775
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    .line 776
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "onProgress"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "onMusicWaiting"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "onMusicStop"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "onMusicPlay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "onSeekComplete"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_5
    const-string v1, "onMusicEnd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "onSeeking"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_7
    const-string v1, "onBeginPlay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "onMusicPause"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "onMusicError"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x7

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 805
    :pswitch_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onSeekComplete()V

    goto :goto_1

    .line 802
    :pswitch_1
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onSeeking()V

    goto :goto_1

    .line 799
    :pswitch_2
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onMusicError()V

    goto :goto_1

    .line 796
    :pswitch_3
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onMusicWaiting()V

    goto :goto_1

    .line 793
    :pswitch_4
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onMusicStop()V

    goto :goto_1

    .line 790
    :pswitch_5
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onMusicEnd()V

    goto :goto_1

    .line 787
    :pswitch_6
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onMusicPause()V

    goto :goto_1

    .line 784
    :pswitch_7
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onMusicPlay()V

    goto :goto_1

    .line 781
    :pswitch_8
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-virtual {p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->getMossAudioBean()Lcom/tencent/taes/api/moss/bean/MossAudioBean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onMusicInfoChange(Lcom/tencent/taes/api/moss/bean/MossAudioBean;)V

    goto :goto_1

    :pswitch_9
    const-string p2, "currentPosition"

    .line 778
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string p2, "duration"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->onProgress(JJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 811
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x68cf9dde -> :sswitch_9
        -0x683c49f0 -> :sswitch_8
        -0x41c9c7a2 -> :sswitch_7
        -0x3ad26875 -> :sswitch_6
        -0x2899a88b -> :sswitch_5
        -0x1e0208b0 -> :sswitch_4
        0x15698fda -> :sswitch_3
        0x156b0ca8 -> :sswitch_2
        0x275187e7 -> :sswitch_1
        0x696ee52c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method public onProgress(JJ)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    if-nez v0, :cond_0

    return-void

    .line 760
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;->onProgress(JJ)V

    return-void
.end method

.method public openMossApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 261
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->openMossApp(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public openMossApp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 266
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appId"

    .line 268
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pagePath"

    .line 269
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "position"

    .line 270
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p1, "openMossApp"

    .line 274
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public openMossInSystemDialog(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    .line 279
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appId"

    .line 281
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pagePath"

    .line 282
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "width"

    .line 283
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "height"

    .line 284
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "gravity"

    .line 285
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p1, "openMossInSystemDialog"

    .line 289
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public operationMedia(Ljava/lang/String;)Z
    .locals 3

    .line 960
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "command"

    .line 962
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 963
    iget p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->strTargePos:I

    if-eqz p1, :cond_0

    const-string p1, "strTargePos"

    .line 964
    iget v2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->strTargePos:I

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 966
    :cond_0
    iget p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->targeToffet:I

    if-eqz p1, :cond_1

    const-string p1, "targeToffet"

    .line 967
    iget v2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->targeToffet:I

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 969
    :cond_1
    iput v1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->strTargePos:I

    .line 970
    iput v1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->targeToffet:I

    .line 971
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->OPERATION_MEDIA:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 972
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 974
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method

.method public pause()V
    .locals 2

    .line 241
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->PAUSE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public play()V
    .locals 2

    .line 236
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->PLAY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public prev()V
    .locals 2

    .line 251
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->PREV:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public recentAppDataChange(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 434
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->recentAppCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p1, "getRecentAppList"

    const/4 p2, 0x0

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 438
    new-instance p2, Ljava/util/ArrayList;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 439
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->recentAppCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-eqz p1, :cond_2

    .line 440
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->recentAppCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    invoke-interface {p0, p2}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onSucceeded(Ljava/util/List;)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->recentAppCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-eqz p1, :cond_2

    .line 444
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->recentAppCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    const-string p1, "error: result is empty"

    invoke-interface {p0, p1}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public registerClient(Lcom/tencent/mosssdk/IInvokeChannelClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-eqz v0, :cond_0

    .line 818
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    invoke-interface {p0, p1}, Lcom/tencent/mosssdk/IMossApiService;->registerClient(Lcom/tencent/mosssdk/IInvokeChannelClient;)V

    :cond_0
    return-void
.end method

.method public registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mConnectListenerSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mConnectListenerSet:Ljava/util/Set;

    .line 168
    :cond_1
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerConnectListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mConnectListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-eqz p0, :cond_2

    .line 171
    invoke-interface {p1}, Lcom/tencent/taes/remote/api/IServerConnectListener;->onConnected()V

    :cond_2
    return-void
.end method

.method public registerConnection(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 201
    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 204
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.mossbiz.aidl.audioservice"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.tencent.wecar"

    .line 206
    invoke-virtual {p0, p1, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->checkAppExit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.tencent.wecar"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "com.tencent.wecarmas"

    .line 208
    invoke-virtual {p0, p1, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->checkAppExit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.tencent.wecarmas"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isServiceBind:Z

    .line 218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mContext:Ljava/lang/ref/WeakReference;

    return-void

    .line 211
    :cond_2
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    const-string p1, "don\'t find moss service app, please install \u2018\u817e\u8baf\u968f\u884c\u2019 or \u2018\u5c0f\u573a\u666f\u2019 "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context don\'t be null!~"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerMossCallback(Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    return-void
.end method

.method public requestDetailRecommendAppList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->callbackHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->DETAIL_RECOMMEND_APP_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-nez v0, :cond_0

    .line 531
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestDetailRecommendAppList : callback is null  functionName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 534
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_3

    .line 536
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    .line 537
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "response"

    .line 539
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-virtual {p0, p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->requireSuccess(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 541
    invoke-direct {p0, p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossAppLists(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onSucceeded(Ljava/util/List;)V

    goto :goto_0

    .line 543
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->message(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "error"

    .line 546
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 547
    invoke-interface {v0, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 550
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p0, "response is null"

    .line 553
    invoke-interface {v0, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 556
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public requestDetailRecommendAppList(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MossAppList;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 482
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    const-string p1, "requestDetailRecommendAppList : callback is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->callbackHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->DETAIL_RECOMMEND_APP_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->DETAIL_RECOMMEND_APP_LIST:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 489
    :cond_1
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->SERVICE_ERROR:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requestLbsRecommend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1003
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->taaCallback:Lcom/tencent/taes/api/moss/listener/ICallBack;

    if-eqz p1, :cond_0

    .line 1004
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->taaCallback:Lcom/tencent/taes/api/moss/listener/ICallBack;

    invoke-interface {p0, p2}, Lcom/tencent/taes/api/moss/listener/ICallBack;->onResponse(Ljava/lang/Object;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public requestLbsRecommend(Lcom/tencent/taes/api/moss/listener/ICallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/api/moss/listener/ICallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->taaCallback:Lcom/tencent/taes/api/moss/listener/ICallBack;

    .line 839
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->taaCallback:Lcom/tencent/taes/api/moss/listener/ICallBack;

    if-eqz p1, :cond_0

    .line 840
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->taaCallback:Lcom/tencent/taes/api/moss/listener/ICallBack;

    const-string v0, "onServiceDisconnected"

    invoke-interface {p1, v0}, Lcom/tencent/taes/api/moss/listener/ICallBack;->onFailure(Ljava/lang/String;)V

    :cond_0
    const-string p1, "requestLbsRecommend"

    const/4 v0, 0x0

    .line 842
    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public requestRecommendAppList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->callbackHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->RECOMMEND_APP_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-nez v0, :cond_0

    .line 497
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestRecommendAppList : callback is null  functionName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 500
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_3

    .line 502
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    .line 503
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "response"

    .line 505
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 506
    invoke-virtual {p0, p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->requireSuccess(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 507
    invoke-direct {p0, p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->appletList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onSucceeded(Ljava/util/List;)V

    goto :goto_0

    .line 509
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->message(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "error"

    .line 512
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 513
    invoke-interface {v0, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 516
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p0, "response is null"

    .line 519
    invoke-interface {v0, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 522
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public requestRecommendAppList(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 468
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    const-string p1, "requestRecommendAppList : callback is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->callbackHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->RECOMMEND_APP_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->RECOMMEND_APP_LIST:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 475
    :cond_1
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->SERVICE_ERROR:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requireSuccess(Ljava/lang/String;)Z
    .locals 0

    .line 566
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 567
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 571
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public searchAppListFromLabel(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "labelId"

    .line 421
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 422
    sget-object p1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->SEARCH_APP_LIST:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 423
    sget-object v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchAppListFromLabel : result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$4;

    invoke-direct {v0, p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$4;-><init>(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)V

    .line 425
    invoke-virtual {v0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$4;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 424
    invoke-static {p1, p0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 428
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setIMinAppFrontListener(Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->minAppFrontListener:Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;

    return-void
.end method

.method public startWeChatBindActivity()V
    .locals 2

    const-string v0, "login"

    const/4 v1, 0x0

    .line 317
    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mossApiInvoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public strTargePos(I)Lcom/tencent/taes/api/moss/IWeCarMasApi;
    .locals 0

    .line 981
    iput p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->strTargePos:I

    return-object p0
.end method

.method public targeToffet(I)Lcom/tencent/taes/api/moss/IWeCarMasApi;
    .locals 0

    .line 987
    iput p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->targeToffet:I

    return-object p0
.end method

.method public unRegisterConnection()V
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->isServiceBind:Z

    if-nez v0, :cond_0

    .line 224
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    const-string v0, "service not bind."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    .line 228
    :cond_2
    :goto_0
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    const-string v0, "context is null."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterMossCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossAudioCallbackRef:Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;

    return-void
.end method

.method public unregisterClient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    if-eqz v0, :cond_0

    .line 825
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mMossApiService:Lcom/tencent/mosssdk/IMossApiService;

    invoke-interface {p0}, Lcom/tencent/mosssdk/IMossApiService;->unregisterClient()V

    :cond_0
    return-void
.end method

.method public unregisterConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mConnectListenerSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->mConnectListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 179
    sget-object p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterConnectListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
