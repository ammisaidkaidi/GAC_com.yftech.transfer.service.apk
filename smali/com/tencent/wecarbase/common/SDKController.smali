.class public Lcom/tencent/wecarbase/common/SDKController;
.super Ljava/lang/Object;
.source "SDKController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;,
        Lcom/tencent/wecarbase/common/SDKController$CommandListener;
    }
.end annotation


# static fields
.field private static final ACTION_SDK_COMMAND:Ljava/lang/String; = "com.tencent.wecarbase.ACTION_SDK_COMMAND"

.field private static final CMD_CLOSE_LOG:Ljava/lang/String; = "close_log"

.field private static final CMD_OPEN_LOG:Ljava/lang/String; = "open_log"

.field private static final EXTRA_COMMAND:Ljava/lang/String; = "command"

.field private static INSTANCE:Lcom/tencent/wecarbase/common/SDKController;

.field private static sCommandListener:Lcom/tencent/wecarbase/common/SDKController$CommandListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCommandReceiver:Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/tencent/wecarbase/common/SDKController;

    invoke-direct {v0}, Lcom/tencent/wecarbase/common/SDKController;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/common/SDKController;->INSTANCE:Lcom/tencent/wecarbase/common/SDKController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/common/SDKController;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecarbase/common/SDKController$CommandListener;
    .locals 1

    .line 16
    sget-object v0, Lcom/tencent/wecarbase/common/SDKController;->sCommandListener:Lcom/tencent/wecarbase/common/SDKController$CommandListener;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/common/SDKController;
    .locals 1

    .line 25
    sget-object v0, Lcom/tencent/wecarbase/common/SDKController;->INSTANCE:Lcom/tencent/wecarbase/common/SDKController;

    return-object v0
.end method

.method public static setCommandListener(Lcom/tencent/wecarbase/common/SDKController$CommandListener;)V
    .locals 0

    .line 58
    sput-object p0, Lcom/tencent/wecarbase/common/SDKController;->sCommandListener:Lcom/tencent/wecarbase/common/SDKController$CommandListener;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/common/SDKController;->mContext:Landroid/content/Context;

    .line 45
    iget-object p1, p0, Lcom/tencent/wecarbase/common/SDKController;->mCommandReceiver:Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;-><init>(Lcom/tencent/wecarbase/common/SDKController$1;)V

    iput-object p1, p0, Lcom/tencent/wecarbase/common/SDKController;->mCommandReceiver:Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;

    .line 48
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.tencent.wecarbase.ACTION_SDK_COMMAND"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/tencent/wecarbase/common/SDKController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/wecarbase/common/SDKController;->mCommandReceiver:Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unInit()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/tencent/wecarbase/common/SDKController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/tencent/wecarbase/common/SDKController;->mCommandReceiver:Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/common/SDKController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wecarbase/common/SDKController;->mCommandReceiver:Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    iput-object v1, p0, Lcom/tencent/wecarbase/common/SDKController;->mCommandReceiver:Lcom/tencent/wecarbase/common/SDKController$CommandReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    iget-object v2, p0, Lcom/tencent/wecarbase/common/SDKController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/tencent/wecarbase/common/SDKController;->mContext:Landroid/content/Context;

    :cond_1
    return-void
.end method
