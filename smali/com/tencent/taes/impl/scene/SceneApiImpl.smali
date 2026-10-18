.class public Lcom/tencent/taes/impl/scene/SceneApiImpl;
.super Lcom/tencent/taes/impl/base/AbstractApi;
.source "SceneApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/scene/ISceneApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneApiImpl"


# instance fields
.field private mIntentAction:Ljava/lang/String;

.field private mIntentScheme:Ljava/lang/String;

.field private mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

.field private mSceneBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;

.field private mSceneInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/scene/bean/SceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/scene/listener/SceneInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneTipsInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/AbstractApi;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoListeners:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneTipsInfoListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    .line 47
    new-instance v0, Lcom/tencent/taes/impl/scene/SceneApiImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl$1;-><init>(Lcom/tencent/taes/impl/scene/SceneApiImpl;)V

    iput-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;

    .line 62
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Operate"

    new-instance v2, Lcom/tencent/taes/impl/scene/SceneApiImpl$2;

    invoke-direct {v2, p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl$2;-><init>(Lcom/tencent/taes/impl/scene/SceneApiImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    .line 74
    invoke-static {}, Lcom/tencent/taes/util/config/ConfigManager;->getInstance()Lcom/tencent/taes/util/config/ConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/util/config/ConfigManager;->getConfigInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/taes/util/config/ConfigInfo;

    move-result-object v0

    const-string v1, "intentApiScheme"

    invoke-virtual {v0, v1}, Lcom/tencent/taes/util/config/ConfigInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mIntentScheme:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/tencent/taes/util/config/ConfigManager;->getInstance()Lcom/tencent/taes/util/config/ConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/util/config/ConfigManager;->getConfigInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/taes/util/config/ConfigInfo;

    move-result-object v0

    const-string v1, "intentApiAction"

    invoke-virtual {v0, v1}, Lcom/tencent/taes/util/config/ConfigInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mIntentAction:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/impl/scene/SceneApiImpl;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/taes/impl/scene/SceneApiImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/taes/impl/scene/SceneApiImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->convertToSceneInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/taes/impl/scene/SceneApiImpl;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/taes/impl/scene/SceneApiImpl;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->getOperateRemoteApi()V

    return-void
.end method

.method private clearListener()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneTipsInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private convertToSceneInfo(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/scene/bean/SceneInfo;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;

    if-eqz v0, :cond_0

    .line 154
    new-instance v1, Lcom/tencent/taes/api/scene/bean/SceneInfo;

    invoke-direct {v1}, Lcom/tencent/taes/api/scene/bean/SceneInfo;-><init>()V

    .line 155
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setUuid(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->getBgImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setBgImage(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setIcon(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->getIconText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setIconText(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setTitle(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setSubTitle(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->getValidStartTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setValidStartTime(I)V

    .line 162
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->getValidEndTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setValidEndTime(I)V

    .line 163
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->getVanishTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setVanishTime(I)V

    .line 164
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->isClosable()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/taes/api/scene/bean/SceneInfo;->setClosable(Z)V

    .line 165
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getOperateRemoteApi()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Operate"

    const-class v2, Lcom/tencent/taes/remote/api/operate/IOperateApi;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v0, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/taes/remote/api/operate/IOperateApi;

    iput-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    .line 87
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->initListener()V

    const-string v0, "SceneApiImpl"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAESFrameworkManager.getInstance().getOperateRemoteApi mOperateApi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "SceneApiImpl"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAESFrameworkManager.getInstance().getOperateRemoteApi \u83b7\u53d6\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->codeDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private initListener()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    iget-object v1, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->registerSceneBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;)V

    .line 104
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneTipsInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;

    .line 105
    iget-object v2, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->registerSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    return-void
.end method

.method private unInitListener()V
    .locals 3

    const-string v0, "SceneApiImpl"

    const-string v1, "unInitListener"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    iget-object v1, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->unregisterSceneBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;)V

    .line 118
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/api/scene/listener/SceneInfoListener;

    .line 119
    invoke-virtual {p0, v1}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->unregisterSceneInfoListener(Lcom/tencent/taes/api/scene/listener/SceneInfoListener;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneTipsInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;

    .line 122
    iget-object v2, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->unregisterSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchActions(Lcom/tencent/scenebizsdk/model/widgets/ActionData;)V
    .locals 2

    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "dispatchSceneActionsFromClient"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "actions"

    .line 264
    iget-object p1, p1, Lcom/tencent/scenebizsdk/model/widgets/ActionData;->action:Ljava/util/List;

    invoke-static {p1}, Lcom/tencent/taes/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    const-string v0, "SceneApiImpl"

    const-string v1, "dispose"

    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->unInitListener()V

    .line 313
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->clearListener()V

    .line 314
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->unInit()V

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public getSceneInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/scene/bean/SceneInfo;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    if-nez v0, :cond_0

    const-string v0, "SceneApiImpl"

    const-string v1, "getSceneInfoList Exception\uff1amOperateApi is null"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->getOperateRemoteApi()V

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    invoke-interface {v0}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->getSceneBannerInfoList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->convertToSceneInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSceneTipsInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneTipsInfo;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    if-nez v0, :cond_0

    const-string v0, "SceneApiImpl"

    const-string v1, "getSceneInfoList Exception\uff1amOperateApi is null"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->getOperateRemoteApi()V

    const/4 p0, 0x0

    return-object p0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->getSceneTipsInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public registerMsgValidator(ILcom/tencent/sceneengine/IMessageValidator;)V
    .locals 0

    .line 252
    invoke-static {}, Lcom/tencent/scenebizsdk/SceneManager;->getInstance()Lcom/tencent/scenebizsdk/SceneManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/scenebizsdk/SceneManager;->registerMsgValidator(ILcom/tencent/sceneengine/IMessageValidator;)V

    return-void
.end method

.method public registerSceneInfoListener(Lcom/tencent/taes/api/scene/listener/SceneInfoListener;)V
    .locals 3

    const-string v0, "SceneApiImpl"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSceneInfoListener mSceneInfoList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 187
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/tencent/taes/api/scene/listener/SceneInfoListener;->onSceneInfo(Ljava/util/List;)V

    :cond_2
    const-string p0, "SceneApiImpl"

    const-string p1, "registerSceneBannerInfoListener"

    .line 189
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerSceneMsgListener(Lcom/tencent/scenebizsdk/IMsgListener;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-static {}, Lcom/tencent/scenebizsdk/SceneManager;->getInstance()Lcom/tencent/scenebizsdk/SceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/scenebizsdk/SceneManager;->registerSceneMsgListener(Lcom/tencent/scenebizsdk/IMsgListener;)V

    .line 227
    iget-object p1, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    if-eqz p1, :cond_1

    .line 228
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->getSceneWeakPushInfos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 229
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 230
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;

    .line 232
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "operationMessage"

    .line 233
    invoke-static {p1}, Lcom/tencent/taes/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    invoke-static {}, Lcom/tencent/scenebizsdk/SceneManager;->getInstance()Lcom/tencent/scenebizsdk/SceneManager;

    move-result-object v1

    .line 235
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/tencent/scenebizsdk/SceneManager;->dispatchSceneMsg(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneTipsInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneTipsInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    if-nez v0, :cond_2

    const-string p1, "SceneApiImpl"

    const-string v0, "registerSubscribeMessageListener Exception\uff1amOperateApi is null "

    .line 287
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->getOperateRemoteApi()V

    return-void

    .line 291
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->registerSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V

    return-void
.end method

.method public showSceneDetail(Ljava/lang/String;Z)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    if-nez v0, :cond_0

    const-string p1, "SceneApiImpl"

    const-string p2, "showSceneDetail Exception\uff1amOperateApi is null"

    .line 213
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->getOperateRemoteApi()V

    const/4 p0, 0x0

    return p0

    .line 217
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->showSceneBannerDetail(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public unregisterMsgValidator(I)V
    .locals 0

    .line 257
    invoke-static {}, Lcom/tencent/scenebizsdk/SceneManager;->getInstance()Lcom/tencent/scenebizsdk/SceneManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/scenebizsdk/SceneManager;->unregisterMsgValidator(I)V

    return-void
.end method

.method public unregisterSceneInfoListener(Lcom/tencent/taes/api/scene/listener/SceneInfoListener;)V
    .locals 2

    const-string v0, "SceneApiImpl"

    const-string v1, "unregisterSceneInfoListener"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterSceneMsgListener(Lcom/tencent/scenebizsdk/IMsgListener;)V
    .locals 0

    .line 247
    invoke-static {}, Lcom/tencent/scenebizsdk/SceneManager;->getInstance()Lcom/tencent/scenebizsdk/SceneManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/scenebizsdk/SceneManager;->unregisterSceneMsgListener(Lcom/tencent/scenebizsdk/IMsgListener;)V

    return-void
.end method

.method public unregisterSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V
    .locals 2

    const-string v0, "SceneApiImpl"

    const-string v1, "unregisterSceneTipsInfoListener"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mSceneTipsInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    if-nez v0, :cond_1

    const-string p1, "SceneApiImpl"

    const-string v0, "unregisterSceneTipsInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 302
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->getOperateRemoteApi()V

    return-void

    .line 306
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl;->mOperateApi:Lcom/tencent/taes/remote/api/operate/IOperateApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateApi;->unregisterSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V

    return-void
.end method
