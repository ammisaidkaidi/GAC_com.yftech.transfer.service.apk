.class public Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;
.super Ljava/lang/Object;
.source "SDKAuthManager.java"


# static fields
.field private static final AUTH_STATUS_SUCC:I = 0x0

.field private static final LBS_SERVICE_HUD_SDK:Ljava/lang/String; = "lbs_navi_hudsdk"

.field private static final TAG:Ljava/lang/String; = "SDKAuthManager"

.field private static sInstance:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;


# instance fields
.field private mAppAuthListener:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

.field private mAuthManager:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;

.field private mAuthManagerListener:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

.field private mIsAuthFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mIsAuthFailed:Z

    .line 30
    new-instance v0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager$1;

    invoke-direct {v0, p0}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager$1;-><init>(Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;)V

    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mAuthManagerListener:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    .line 67
    invoke-static {p1}, Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mAuthManager:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;

    return-void
.end method

.method static synthetic access$0(Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;I)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->getAuthStatusDesc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mIsAuthFailed:Z

    return-void
.end method

.method static synthetic access$3(Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;)Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mAppAuthListener:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    return-object p0
.end method

.method private authenticate()V
    .locals 5

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mAuthManager:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;

    const-string v2, "lbs_navi_hudsdk"

    .line 85
    iget-object v3, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mAuthManagerListener:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    const/4 v4, 0x0

    .line 84
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;)I

    move-result v0

    .line 86
    sget-object v1, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "authenticate: code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mIsAuthFailed:Z

    goto :goto_0

    .line 94
    :pswitch_0
    iput-boolean v4, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mIsAuthFailed:Z

    goto :goto_0

    .line 90
    :cond_0
    iput-boolean v4, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mIsAuthFailed:Z

    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAuthStatusDesc(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_5

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/16 p0, 0xd2

    if-eq p1, p0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 p0, 0xca

    if-lt p1, p0, :cond_0

    const/16 p0, 0xcd

    if-gt p1, p0, :cond_0

    const-string p0, "\u65e0\u8bf7\u6c42\u6743\u9650"

    return-object p0

    :cond_0
    const/16 p0, 0x12d

    if-lt p1, p0, :cond_1

    const/16 p0, 0x163

    if-gt p1, p0, :cond_1

    const-string p0, "\u914d\u989d\u4e0d\u5b58\u5728"

    return-object p0

    :cond_1
    const-string p0, "\u672a\u77e5\u72b6\u6001\u7801"

    return-object p0

    :pswitch_0
    const-string p0, "\u7528\u6237\u3001ak\u88ab\u5c01\u7981"

    return-object p0

    :pswitch_1
    const-string p0, "\u7528\u6237uid\uff0cak\u4e0d\u5b58\u5728"

    return-object p0

    :pswitch_2
    const-string p0, "mcode\u7b7e\u540d\u503c\u4e0d\u6b63\u786e"

    return-object p0

    :pswitch_3
    const-string p0, "\u8be5\u670d\u52a1\u5df2\u7ecf\u88ab\u5f00\u53d1\u8005\u7981\u7528"

    return-object p0

    :cond_2
    :pswitch_4
    const-string p0, "\u65e0\u8bf7\u6c42\u6743\u9650"

    return-object p0

    :cond_3
    const-string p0, "ak\u4e0d\u5b58\u5728"

    return-object p0

    :cond_4
    const-string p0, "\u53c2\u6570\u9519\u8bef"

    return-object p0

    :cond_5
    const-string p0, "\u901a\u8fc7\u6821\u9a8c"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe7
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;
    .locals 3

    .line 51
    sget-object v0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->sInstance:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->sInstance:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    if-nez v1, :cond_0

    .line 54
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/HUDModuleManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    invoke-direct {v2, v1}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->sInstance:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->sInstance:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    return-object v0
.end method


# virtual methods
.method public authenticate(Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mAppAuthListener:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    .line 76
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->authenticate()V

    return-void
.end method

.method public isAuthFailed()Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->mIsAuthFailed:Z

    return p0
.end method
