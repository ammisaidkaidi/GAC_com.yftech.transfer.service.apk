.class public Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;
.super Ljava/lang/Object;
.source "PersonaliseTTSPresenter.java"


# static fields
.field private static final ACTION_DATA_SIZE:I = 0x30

.field private static final BASIC_URL:Ljava/lang/String; = "https://gw.tai.qq.com/personaltts"

.field private static final LIST_DATA_URL:Ljava/lang/String; = "/getCarTTSList"

.field private static final QRCODE_URL:Ljava/lang/String; = "/qrcode"

.field private static final TAG:Ljava/lang/String; = "PersonaliseTTSPresenter"


# instance fields
.field private mIsCurrentRequestPicture:Z

.field private mLocalDbData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginStateListener:Lcom/tencent/wecar/tts/client/login/ILoginStateListener;

.field private mNetCallBack:Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;

.field private mNetPicCallBack:Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;

.field private mTtsDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;


# direct methods
.method public constructor <init>(Lcom/tencent/wecar/tts/client/view/IPersonaliseView;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mIsCurrentRequestPicture:Z

    .line 43
    new-instance v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;-><init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mLoginStateListener:Lcom/tencent/wecar/tts/client/login/ILoginStateListener;

    .line 89
    new-instance v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;

    invoke-direct {v0, p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;-><init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mNetCallBack:Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;

    .line 167
    new-instance v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;

    invoke-direct {v0, p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;-><init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mNetPicCallBack:Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mLocalDbData:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mTtsDataList:Ljava/util/ArrayList;

    .line 198
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->listDataRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->makeList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mTtsDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mNetPicCallBack:Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;Ljava/lang/String;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->showErrMsg(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mLocalDbData:Ljava/util/ArrayList;

    return-object p0
.end method

.method private listDataRequest()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mTtsDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    invoke-direct {v1}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;-><init>()V

    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;->queryByUserId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mTtsDataList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mTtsDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mTtsDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 332
    iget-object v3, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mLocalDbData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getTaskid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mTtsDataList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showInfoView(Ljava/util/ArrayList;)V

    .line 335
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadLinearLayout(Z)V

    goto :goto_1

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadingView(Z)V

    .line 339
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "seqId"

    const-string v2, "listData"

    .line 340
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    const-string v2, "0"

    .line 341
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userid"

    .line 342
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wecarid"

    .line 343
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getWeCarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://gw.tai.qq.com/personaltts/getCarTTSList"

    .line 344
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mNetCallBack:Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;

    invoke-static {v1, v0, p0}, Lcom/tencent/wecar/tts/client/net/TtsNetWork;->request(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;)V

    return-void
.end method

.method private makeList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 131
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    move-object/from16 v3, p1

    .line 133
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 134
    iget-object v5, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mTtsDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 135
    invoke-virtual {v6}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getTaskid()Ljava/lang/String;

    move-result-object v7

    const-string v8, "taskid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    invoke-virtual {v6}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object v7

    const-string v8, "nickname"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "nickname"

    .line 137
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->setNickname(Ljava/lang/String;)V

    .line 138
    new-instance v7, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    invoke-direct {v7}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;-><init>()V

    invoke-virtual {v7, v6}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;->update(Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;)V

    .line 139
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getITtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v7

    invoke-virtual {v6}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getModelname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setChooseTts(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v5, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mLocalDbData:Ljava/util/ArrayList;

    const-string v6, "taskid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "nickname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 148
    :cond_2
    new-instance v5, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    const-string v6, "demoWavPath"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "modelPath"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "modelSize"

    .line 149
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v6, "modelname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "nickname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "status"

    .line 150
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "taskid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "trainProgress"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v6, "voiceType"

    .line 151
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v16

    move-object v6, v5

    invoke-direct/range {v6 .. v16}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 148
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v5, Landroid/util/ArrayMap;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    const-string v6, "userid"

    .line 154
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "voicetype"

    const-string v7, "voiceType"

    .line 155
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "nickname"

    const-string v7, "nickname"

    .line 156
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/tencent/taes/report/EventHelper;->getInstance()Lcom/tencent/taes/report/EventHelper;

    move-result-object v4

    const-string v6, "customtts_voicepacket_count"

    invoke-virtual {v4, v6, v5}, Lcom/tencent/taes/report/EventHelper;->userAction(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PersonaliseTTSPresenter"

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v1
.end method

.method private showErrMsg(Ljava/lang/String;Z)V
    .locals 1

    .line 301
    new-instance v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;-><init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showUI()V
    .locals 4

    .line 258
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->isLogged()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoginButton(Z)V

    .line 261
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showRecordButton(Z)V

    .line 263
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->listDataRequest()V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showAttentionPicture(Z)V

    .line 266
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    const-string v3, "\u65e0\u81ea\u5236\u8bed\u97f3\u5305\uff0c\u5f55\u5236\u8bed\u97f3\u5305\u9700\u5148\u767b\u5f55"

    invoke-interface {v0, v3}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoginButton(Z)V

    .line 268
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {p0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showRecordButton(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    const-string v0, "PersonaliseTTSPresenter"

    const-string v1, "init"

    .line 205
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mIsCurrentRequestPicture:Z

    .line 207
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mLoginStateListener:Lcom/tencent/wecar/tts/client/login/ILoginStateListener;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->registerLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V

    .line 254
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->showUI()V

    return-void
.end method

.method public login()V
    .locals 1

    const-string p0, "PersonaliseTTSPresenter"

    const-string v0, "Login"

    .line 273
    invoke-static {p0, v0}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->login()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "PersonaliseTTSPresenter"

    const-string v1, "onDestroy"

    .line 375
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mLoginStateListener:Lcom/tencent/wecar/tts/client/login/ILoginStateListener;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->unregisterLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V

    return-void
.end method

.method public recordVoice()V
    .locals 3

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mIsCurrentRequestPicture:Z

    .line 282
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showRecordButton(Z)V

    .line 283
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v1, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadLinearLayout(Z)V

    .line 284
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v1, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showRetryButton(Z)V

    .line 285
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v1, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showAppletQRCode(Z)V

    .line 286
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v1, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showTtsList(Z)V

    .line 287
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v1, v0}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadingView(Z)V

    .line 288
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u4e8c\u7ef4\u7801"

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoginButton(Z)V

    .line 291
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showAttentionPicture(Z)V

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "seqId"

    const-string v2, "QRCode"

    .line 293
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    const-string v2, "0"

    .line 294
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userid"

    .line 295
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wecarid"

    .line 296
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getWeCarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://gw.tai.qq.com/personaltts/qrcode"

    .line 297
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mNetCallBack:Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;

    invoke-static {v1, v0, p0}, Lcom/tencent/wecar/tts/client/net/TtsNetWork;->request(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;)V

    return-void
.end method

.method public retry()V
    .locals 3

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mIsCurrentRequestPicture:Z

    .line 349
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v1, v0}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showRetryButton(Z)V

    .line 350
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mLocalDbData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadLinearLayout(Z)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    const-string v2, "\u6b63\u5728\u52a0\u8f7d"

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mView:Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadingView(Z)V

    .line 356
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "seqId"

    const-string v2, "listData"

    .line 357
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    const-string v2, "0"

    .line 358
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userid"

    .line 359
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wecarid"

    .line 360
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getWeCarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://gw.tai.qq.com/personaltts/getCarTTSList"

    .line 361
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mNetCallBack:Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;

    invoke-static {v1, v0, p0}, Lcom/tencent/wecar/tts/client/net/TtsNetWork;->request(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;)V

    return-void
.end method

.method showErrorMsgByUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/getCarTTSList"

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 366
    iget-boolean p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->mIsCurrentRequestPicture:Z

    if-nez p1, :cond_1

    const-string p1, "\u52a0\u8f7d\u5931\u8d25"

    const/4 v0, 0x1

    .line 367
    invoke-direct {p0, p1, v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->showErrMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "\u52a0\u8f7d\u5931\u8d25"

    const/4 v0, 0x0

    .line 370
    invoke-direct {p0, p1, v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->showErrMsg(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
