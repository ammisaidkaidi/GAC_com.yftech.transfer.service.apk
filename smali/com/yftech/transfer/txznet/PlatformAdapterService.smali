.class public Lcom/yftech/transfer/txznet/PlatformAdapterService;
.super Landroid/app/Service;
.source "PlatformAdapterService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformAdapterService"

.field private static final TXZ_NET_PACKAGENAME:Ljava/lang/String; = "com.txznet.music"


# instance fields
.field private mAccessAdapter:Lcom/yftech/transfer/txznet/AccessAdapter;

.field private mBaiduNavigationAdapter:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

.field private mMediaPlayer:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

.field private mNavigationService:Lcom/yftech/transfer/navigation/CarNavigationService;

.field private mediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static LOGI(Ljava/lang/String;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static LOGW(Ljava/lang/String;)V
    .locals 1

    .line 74
    sget-object v0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    sget-object v0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mMediaPlayer:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    .line 44
    invoke-static {}, Lcom/yftech/transfer/media/MediaManager;->getInstance()Lcom/yftech/transfer/media/MediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mMediaPlayer:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/media/MediaManager;->addMediaPlayer(Lcom/yftech/transfer/media/AbsMediaPlayer;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yftech/transfer/media/CarTransferMediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/txznet/PlatformAdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    invoke-static {}, Lcom/yftech/transfer/media/MediaManager;->getInstance()Lcom/yftech/transfer/media/MediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mMediaPlayer:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/media/MediaManager;->mediaPlayerStart(Lcom/yftech/transfer/media/AbsMediaPlayer;)V

    .line 48
    new-instance v0, Lcom/yftech/transfer/navigation/CarNavigationService;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/navigation/CarNavigationService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mNavigationService:Lcom/yftech/transfer/navigation/CarNavigationService;

    .line 49
    new-instance v0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-direct {v0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mBaiduNavigationAdapter:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    .line 50
    iget-object v0, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mNavigationService:Lcom/yftech/transfer/navigation/CarNavigationService;

    iget-object v1, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mBaiduNavigationAdapter:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/navigation/CarNavigationService;->addNavigation(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)V

    .line 51
    iget-object v0, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mNavigationService:Lcom/yftech/transfer/navigation/CarNavigationService;

    iget-object v1, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mBaiduNavigationAdapter:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/navigation/CarNavigationService;->onMapAppStart(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)V

    const-string v0, "car_navigation"

    .line 52
    iget-object v1, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mNavigationService:Lcom/yftech/transfer/navigation/CarNavigationService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 56
    iget-object v0, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mAccessAdapter:Lcom/yftech/transfer/txznet/AccessAdapter;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-virtual {p0}, Lcom/yftech/transfer/txznet/PlatformAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/transfer/txznet/AccessAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mAccessAdapter:Lcom/yftech/transfer/txznet/AccessAdapter;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.txznet.adapter.send"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/yftech/transfer/txznet/PlatformAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mAccessAdapter:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 80
    iget-object p0, p0, Lcom/yftech/transfer/txznet/PlatformAdapterService;->mediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    return-void
.end method
