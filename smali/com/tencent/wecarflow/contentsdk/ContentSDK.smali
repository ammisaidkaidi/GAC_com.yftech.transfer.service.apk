.class public Lcom/tencent/wecarflow/contentsdk/ContentSDK;
.super Ljava/lang/Object;
.source "ContentSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarflow/contentsdk/ContentSDK$Holder;
    }
.end annotation


# static fields
.field public static final CODE_NOT_CONNECTED:I = 0x7d1

.field public static final CODE_REMOTE_EXCEPTION:I = 0x7d2

.field public static final CODE_SERVICE_ERROR:I = 0x7d3

.field public static final CODE_SUCCESS:I = 0x7d0


# instance fields
.field private final BIND_CLS_NAME:Ljava/lang/String;

.field private final FLOW_BIND_ACTION:Ljava/lang/String;

.field private final FLOW_PKG_NAME:Ljava/lang/String;

.field private final FLOW_START_ACTION:Ljava/lang/String;

.field private final MAX_RET:I

.field private final MSG_BOOK:I

.field private final MSG_MUSIC:I

.field private final MSG_NEWS:I

.field private final MSG_PROGRAM:I

.field private final MSG_RADIO:I

.field private final MSG_RECOMMEND:I

.field private final MSG_SONG_BY_NAME:I

.field private final MSG_SONG_BY_SINGER:I

.field private final TAG:Ljava/lang/String;

.field private bServiceConnected:Z

.field private mBookListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

.field private mNewsListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

.field private mRadioListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

.field private mReceiveMessenger:Landroid/os/Messenger;

.field private mRecommendListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

.field private mSendMessenger:Landroid/os/Messenger;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FlowContentContentSDK"

    .line 49
    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->TAG:Ljava/lang/String;

    const-string v0, "com.tencent.wecarflow"

    .line 51
    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->FLOW_PKG_NAME:Ljava/lang/String;

    const-string v0, "com.tencent.wecarflow.service_init"

    .line 52
    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->FLOW_START_ACTION:Ljava/lang/String;

    const-string v0, "com.tencent.wecarflow.service_content_bind"

    .line 53
    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->FLOW_BIND_ACTION:Ljava/lang/String;

    const-string v0, "com.tencent.wecarflow.content.FlowContentService"

    .line 54
    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->BIND_CLS_NAME:Ljava/lang/String;

    const/16 v0, 0x64

    .line 61
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->MSG_RECOMMEND:I

    const/16 v0, 0x65

    .line 62
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->MSG_MUSIC:I

    const/16 v0, 0x66

    .line 63
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->MSG_RADIO:I

    const/16 v0, 0x67

    .line 64
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->MSG_BOOK:I

    const/16 v0, 0x68

    .line 65
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->MSG_NEWS:I

    const/16 v0, 0x69

    .line 67
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->MSG_SONG_BY_NAME:I

    const/16 v0, 0x6a

    .line 68
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->MSG_SONG_BY_SINGER:I

    const/16 v0, 0x6b

    .line 69
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->MSG_PROGRAM:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mListeners:Ljava/util/List;

    .line 199
    new-instance v0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;-><init>(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V

    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 253
    new-instance v0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;

    invoke-direct {v0, p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;-><init>(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V

    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    .line 331
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->MAX_RET:I

    const-string p0, "FlowContentContentSDK"

    const-string v0, "sdk version : 1.0.1.1"

    .line 87
    invoke-static {p0, v0}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->parse(Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;IZ)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->parse(Ljava/lang/String;ILjava/lang/Class;IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mNewsListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mRadioListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mBookListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mMusicListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mRecommendListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendSearchResponse(Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->bServiceConnected:Z

    return p1
.end method

.method static synthetic access$302(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mSendMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$402(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mReceiveMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->addMessenger()V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->notifyServiceConnected()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->notifyServiceDisconnected()V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->notifyBindDied()V

    return-void
.end method

.method private addMessenger()V
    .locals 2

    const-string v0, "FlowContentContentSDK"

    const-string v1, "addMessenger"

    .line 182
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xbb9

    .line 184
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 185
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 186
    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 187
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarflow/contentsdk/ContentSDK;
    .locals 1

    .line 95
    invoke-static {}, Lcom/tencent/wecarflow/contentsdk/ContentSDK$Holder;->access$100()Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    move-result-object v0

    return-object v0
.end method

.method private notifyBindDied()V
    .locals 2

    const-string v0, "FlowContentContentSDK"

    const-string v1, "notifyBindDied: "

    .line 175
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarflow/contentsdk/ConnectionListener;

    .line 177
    invoke-interface {v0}, Lcom/tencent/wecarflow/contentsdk/ConnectionListener;->onConnectionDied()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyServiceConnected()V
    .locals 2

    const-string v0, "FlowContentContentSDK"

    const-string v1, "notifyServiceConnected"

    .line 161
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarflow/contentsdk/ConnectionListener;

    .line 163
    invoke-interface {v0}, Lcom/tencent/wecarflow/contentsdk/ConnectionListener;->onConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyServiceDisconnected()V
    .locals 2

    const-string v0, "FlowContentContentSDK"

    const-string v1, "notifyServiceDisconnected"

    .line 168
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarflow/contentsdk/ConnectionListener;

    .line 170
    invoke-interface {v0}, Lcom/tencent/wecarflow/contentsdk/ConnectionListener;->onDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parse(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->parse(Ljava/lang/String;ILjava/lang/Class;IZ)V

    return-void
.end method

.method private parse(Ljava/lang/String;ILjava/lang/Class;IZ)V
    .locals 9

    .line 231
    invoke-static {}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->getInstance()Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;

    move-result-object v0

    new-instance v8, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p5

    move-object v5, p3

    move v6, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;-><init>(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ZLjava/lang/Class;II)V

    invoke-virtual {v0, v8}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeMessenger()V
    .locals 2

    const-string v0, "FlowContentContentSDK"

    const-string v1, "removeMessenger"

    .line 191
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xbba

    .line 193
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 194
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 195
    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 196
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method private sendMessage(Landroid/os/Message;)I
    .locals 3

    const-string v0, "FlowContentContentSDK"

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->bServiceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->bServiceConnected:Z

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mSendMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const-string p0, "FlowContentContentSDK"

    const-string p1, "sendMessage success: "

    .line 381
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x7d0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "FlowContentContentSDK"

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 p0, 0x7d2

    return p0

    :cond_0
    const/16 p0, 0x7d1

    return p0
.end method

.method private sendSearchResponse(Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 335
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mMusicListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    invoke-interface {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentListener;->onContentGot(Ljava/lang/Object;)V

    return-void

    .line 340
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    instance-of v2, p1, Lcom/tencent/wecarflow/contentsdk/bean/SearchSongResponseBean;

    if-eqz v2, :cond_1

    .line 342
    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/SearchSongResponseBean;

    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/SearchSongResponseBean;->getSonglist()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 343
    :cond_1
    instance-of v2, p1, Lcom/tencent/wecarflow/contentsdk/bean/SearchSingerResponseBean;

    if-eqz v2, :cond_2

    .line 344
    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/SearchSingerResponseBean;

    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/SearchSingerResponseBean;->getSingerList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 345
    :cond_2
    instance-of v2, p1, Lcom/tencent/wecarflow/contentsdk/bean/SearchProgramResponseBean;

    if-eqz v2, :cond_3

    .line 346
    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/SearchProgramResponseBean;

    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/SearchProgramResponseBean;->getAlbumlist()Ljava/util/List;

    move-result-object v1

    :cond_3
    :goto_0
    const/4 p1, 0x5

    .line 349
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 350
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 351
    iget-object p2, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mMusicListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tencent/wecarflow/contentsdk/ContentListener;->onContentGot(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 371
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mMusicListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    invoke-interface {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentListener;->onContentGot(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public bindContentService(Landroid/content/Context;)V
    .locals 4

    const-string v0, "FlowContentContentSDK"

    const-string v1, "bindPlayService"

    .line 104
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.wecarflow"

    const-string v2, "com.tencent.wecarflow.content.FlowContentService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 107
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.tencent.wecarflow.service_content_bind"

    .line 108
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 111
    invoke-virtual {p1, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public clickBookItem(Lcom/tencent/wecarflow/contentsdk/bean/AudioBookTabBean;Lcom/tencent/wecarflow/contentsdk/bean/BookBriefInfo;)V
    .locals 4

    .line 544
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x125f

    .line 545
    iput v1, v0, Landroid/os/Message;->what:I

    .line 546
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tabId"

    .line 547
    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/AudioBookTabBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tabName"

    .line 548
    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/AudioBookTabBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemData"

    .line 549
    invoke-static {p2}, Lcom/tencent/wecarflow/contentsdk/utils/GsonUtils;->convert2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 551
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public clickMusicItem(Lcom/tencent/wecarflow/contentsdk/bean/MusicTabBean;Lcom/tencent/wecarflow/contentsdk/bean/MusicTabItemBean;)V
    .locals 4

    .line 561
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x125d

    .line 562
    iput v1, v0, Landroid/os/Message;->what:I

    .line 563
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tabId"

    .line 564
    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/MusicTabBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tabName"

    .line 565
    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/MusicTabBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemData"

    .line 566
    invoke-static {p2}, Lcom/tencent/wecarflow/contentsdk/utils/GsonUtils;->convert2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 568
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public clickNewsItem(Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;Lcom/tencent/wecarflow/contentsdk/bean/NewsTabItemBean;)V
    .locals 4

    .line 510
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1260

    .line 511
    iput v1, v0, Landroid/os/Message;->what:I

    .line 512
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tabId"

    .line 513
    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tabName"

    .line 514
    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemData"

    .line 515
    invoke-static {p2}, Lcom/tencent/wecarflow/contentsdk/utils/GsonUtils;->convert2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 517
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public clickRadioItem(Lcom/tencent/wecarflow/contentsdk/bean/RadioTabBean;Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;)V
    .locals 4

    .line 527
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x125e

    .line 528
    iput v1, v0, Landroid/os/Message;->what:I

    .line 529
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tabId"

    .line 530
    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/RadioTabBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tabName"

    .line 531
    invoke-virtual {p1}, Lcom/tencent/wecarflow/contentsdk/bean/RadioTabBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemData"

    .line 532
    invoke-static {p2}, Lcom/tencent/wecarflow/contentsdk/utils/GsonUtils;->convert2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 534
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public clickRecommendItem(Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendItem;)V
    .locals 4

    .line 577
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x125c

    .line 578
    iput v1, v0, Landroid/os/Message;->what:I

    .line 579
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tabId"

    const-string v3, ""

    .line 580
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tabName"

    const-string v3, ""

    .line 581
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "itemData"

    .line 582
    invoke-static {p1}, Lcom/tencent/wecarflow/contentsdk/utils/GsonUtils;->convert2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 584
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public clickSearchProgramItem(Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;)V
    .locals 3

    .line 621
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1263

    .line 622
    iput v1, v0, Landroid/os/Message;->what:I

    .line 623
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "itemData"

    .line 624
    invoke-static {p1}, Lcom/tencent/wecarflow/contentsdk/utils/GsonUtils;->convert2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 626
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public clickSearchSingerItem(Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;)V
    .locals 3

    .line 607
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1262

    .line 608
    iput v1, v0, Landroid/os/Message;->what:I

    .line 609
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "itemData"

    .line 610
    invoke-static {p1}, Lcom/tencent/wecarflow/contentsdk/utils/GsonUtils;->convert2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 612
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public clickSearchSongByNameItem(Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;I)V
    .locals 2

    .line 593
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x1261

    .line 594
    iput v0, p1, Landroid/os/Message;->what:I

    .line 595
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "song_index"

    .line 596
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 597
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 598
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public getBookInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V
    .locals 1

    .line 424
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mBookListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    .line 425
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xfa3

    .line 426
    iput v0, p1, Landroid/os/Message;->what:I

    .line 427
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public getMusicInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V
    .locals 1

    .line 448
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mMusicListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    .line 449
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xfa1

    .line 450
    iput v0, p1, Landroid/os/Message;->what:I

    .line 451
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public getNewsInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V
    .locals 1

    .line 436
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mNewsListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    .line 437
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xfa4

    .line 438
    iput v0, p1, Landroid/os/Message;->what:I

    .line 439
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public getRadioInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V
    .locals 1

    .line 412
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mRadioListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    .line 413
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xfa2

    .line 414
    iput v0, p1, Landroid/os/Message;->what:I

    .line 415
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public getRecommendInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;I)V
    .locals 1

    .line 399
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mRecommendListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    .line 400
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xfa0

    .line 401
    iput v0, p1, Landroid/os/Message;->what:I

    .line 402
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 403
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public registerConnectionListener(Lcom/tencent/wecarflow/contentsdk/ConnectionListener;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public searchProgram(Lcom/tencent/wecarflow/contentsdk/ContentListener;Ljava/lang/String;I)V
    .locals 2

    .line 493
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mMusicListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    .line 494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xfa7

    .line 495
    iput v0, p1, Landroid/os/Message;->what:I

    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "program_name"

    .line 497
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "num"

    .line 498
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 499
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 500
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public searchSongByName(Lcom/tencent/wecarflow/contentsdk/ContentListener;Ljava/lang/String;I)V
    .locals 2

    .line 460
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mMusicListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    .line 461
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xfa5

    .line 462
    iput v0, p1, Landroid/os/Message;->what:I

    .line 463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "song_name"

    .line 464
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "num"

    .line 465
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 467
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public searchSongBySinger(Lcom/tencent/wecarflow/contentsdk/ContentListener;Ljava/lang/String;I)V
    .locals 2

    .line 476
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mMusicListener:Lcom/tencent/wecarflow/contentsdk/ContentListener;

    .line 477
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xfa6

    .line 478
    iput v0, p1, Landroid/os/Message;->what:I

    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "singer_name"

    .line 480
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "num"

    .line 481
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 484
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public unbindPlayService(Landroid/content/Context;)V
    .locals 2

    const-string v0, "FlowContentContentSDK"

    const-string v1, "unbindPlayService"

    .line 132
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->bServiceConnected:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->removeMessenger()V

    .line 135
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->bServiceConnected:Z

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mSendMessenger:Landroid/os/Messenger;

    .line 138
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mReceiveMessenger:Landroid/os/Messenger;

    :cond_0
    return-void
.end method

.method public unregisterConnectionListener(Lcom/tencent/wecarflow/contentsdk/ConnectionListener;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
