.class public Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;
.super Ljava/lang/Object;
.source "CloudSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$Singleton;
    }
.end annotation


# static fields
.field public static final SPEAKER_DAJI:Ljava/lang/String; = "daji"

.field public static final SPEAKER_LIBAI:Ljava/lang/String; = "libai"

.field public static final SPEAKER_WY:Ljava/lang/String; = "wy"

.field private static final TAG:Ljava/lang/String; = "CloudSettingManager"


# instance fields
.field private mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->initcloudSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->getVoiceType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->setVoiceType(Ljava/lang/String;)V

    return-void
.end method

.method private cloudSettingPush()V
    .locals 4

    .line 141
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Push"

    invoke-virtual {v0, v1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getModuleHostPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudSettingManager"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts SceneLifeCycle.onLoadLocalCompsComplete: pushHostPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "com.tencent.taes.push.PushDispatchService"

    .line 147
    invoke-static {}, Lcom/tencent/taespushclient/TaesPushClient;->getInstance()Lcom/tencent/taespushclient/TaesPushClient;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/taespushclient/TaesPushClient;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/tencent/taespushclient/TaesPushClient;->getInstance()Lcom/tencent/taespushclient/TaesPushClient;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$3;

    invoke-direct {v1, p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$3;-><init>(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/tencent/taespushclient/TaesPushClient;->addPushDispatchLitener(Lcom/tencent/taespushclient/IPushDispatchLitener;)V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;
    .locals 1

    .line 47
    invoke-static {}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$Singleton;->access$100()Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    move-result-object v0

    return-object v0
.end method

.method private getVoiceType()Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/TtsManager;->getRemoteApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->getTtsSpeaker()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initIAccountApi()V
    .locals 3

    const-string v0, "CloudSettingManager"

    const-string v1, "initIAccountApi"

    .line 81
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Account"

    new-instance v2, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$1;-><init>(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    return-void
.end method

.method private initcloudSetting()V
    .locals 7

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v1, Lcom/tencent/taes/cloud/SettingItem;

    const-string v2, "role_type"

    new-instance v3, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$2;

    invoke-direct {v3, p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$2;-><init>(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;)V

    invoke-direct {v1, v2, v3}, Lcom/tencent/taes/cloud/SettingItem;-><init>(Ljava/lang/String;Lcom/tencent/taes/cloud/SettingItem$Listener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v1

    const-string v2, "Account"

    const-class v3, Lcom/tencent/taes/remote/api/account/IAccountApi;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 119
    iget-object v1, v1, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/taes/remote/api/account/IAccountApi;

    iput-object v1, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    .line 120
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {v1}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getWeCarAccount()Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {v1}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->getWeCarId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->getWeCarId()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->getChannel()Ljava/lang/String;

    move-result-object v3

    .line 128
    :goto_0
    invoke-virtual {v1}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->getWxAccount()Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 129
    invoke-virtual {v1}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->getWxAccount()Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->getUserId()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v1, "CloudSettingManager"

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tts init initcloudSetting channel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", wecarId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v4, v3, v0}, Lcom/tencent/taes/cloud/CloudSetting;->intCloudSettingsParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "CloudSettingManager"

    const-string v1, "Tts init initcloudSetting wecarid null:"

    .line 123
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "CloudSettingManager"

    const-string v1, "initAccount: getApi Err!"

    .line 135
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_2
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->cloudSettingPush()V

    return-void
.end method

.method private setVoiceType(Ljava/lang/String;)V
    .locals 1

    const-string p0, "role_type"

    .line 59
    invoke-static {p0}, Lcom/tencent/taes/cloud/CloudSetting;->uploadSettings(Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0xee2

    if-eq p0, v0, :cond_2

    const v0, 0x2eee7c

    if-eq p0, v0, :cond_1

    const v0, 0x623216d

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "libai"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    const-string p0, "daji"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const-string p0, "wy"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 63
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/TtsManager;->getRemoteApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object p0

    const-string p1, "wy"

    const-string v0, "\u53ee\u5f53"

    invoke-interface {p0, p1, v0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setTtsSpeakerInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :pswitch_0
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/TtsManager;->getRemoteApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object p0

    const-string p1, "libai"

    const-string v0, "\u674e\u767d"

    invoke-interface {p0, p1, v0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setTtsSpeakerInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :pswitch_1
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/TtsManager;->getRemoteApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object p0

    const-string p1, "daji"

    const-string v0, "\u59b2\u5df1"

    invoke-interface {p0, p1, v0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setTtsSpeakerInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->initIAccountApi()V

    return-void
.end method

.method public uploadTtsSpeakerSettings()V
    .locals 0

    const-string p0, "role_type"

    .line 55
    invoke-static {p0}, Lcom/tencent/taes/cloud/CloudSetting;->uploadSettings(Ljava/lang/String;)I

    return-void
.end method
