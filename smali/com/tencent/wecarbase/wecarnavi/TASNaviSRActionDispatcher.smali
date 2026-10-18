.class public Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;
.super Ljava/lang/Object;
.source "TASNaviSRActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;
    }
.end annotation


# static fields
.field private static final DAY_NIGHT_KEY_TYPE:I = 0x3e9

.field private static final EXTRA_FROM_TOUCH:Ljava/lang/String; = "EXTRA_FROM_TOUCH"

.field private static final FEEDBACK_TTS_TEMPLATE_ID_PREFIX:Ljava/lang/String; = "m"

.field private static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"

.field private static final MSG_SESSION_NEW:I = 0x2

.field private static final MSG_SESSION_RECEIVED:I = 0x3

.field private static final MSG_SESSION_TIMEOUT:I = 0x1

.field private static final NAVI_HOME_KEY_TYPE:I = 0x3f8

.field private static final ROUTE_PREFERENCE_KEY_TYPE:I = 0x400

.field private static final SEARCH_ON_THE_WAY_KEY_TYPE:I = 0xbbc

.field private static final START_NAVI_KEY_TYPE:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "TASNaviSRActionDispatcher"

.field private static volatile sInstance:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;


# instance fields
.field private mFeedbackReceiver:Landroid/content/BroadcastReceiver;

.field private mFeedbackTtsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;

.field private mSessionIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mSessionid:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mSessionIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mListener:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;

    .line 30
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mFeedbackTtsMap:Ljava/util/Map;

    .line 171
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$2;-><init>(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mFeedbackReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TNFeedbackReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v1, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$1;-><init>(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mSessionIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mListener:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mSessionid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;
    .locals 2

    .line 50
    sget-object v0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->sInstance:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->sInstance:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    invoke-direct {v1}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->sInstance:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->sInstance:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    return-object v0
.end method

.method private sendActionBroadCast(ILandroid/os/Bundle;)V
    .locals 2

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "WECARNAVIAUTO_STANDARD_BROADCAST_RECV"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TAG"

    .line 157
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mSessionid:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_TPYE"

    .line 158
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 160
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/16 p0, 0x20

    .line 162
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 p0, 0x3ea

    if-ne p0, p1, :cond_1

    const/high16 p0, 0x10000000

    .line 164
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    :cond_1
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 167
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public action(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x2710

    .line 134
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->action(ILandroid/os/Bundle;I)V

    return-void
.end method

.method public action(ILandroid/os/Bundle;I)V
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mSessionid:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 144
    iput v1, v0, Landroid/os/Message;->what:I

    .line 145
    iget-object v1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mSessionid:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x2

    .line 148
    iput v0, p3, Landroid/os/Message;->what:I

    .line 149
    iget-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mSessionid:Ljava/lang/String;

    iput-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->sendActionBroadCast(ILandroid/os/Bundle;)V

    return-void
.end method

.method public init()V
    .locals 4

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "WECARNAVIAUTO_STANDARD_BROADCAST_FEEDBACK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mFeedbackReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method setFeedbackListener(Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mListener:Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher$OnFeedbackListener;

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 66
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->mFeedbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
