.class public Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;
.super Ljava/lang/Object;
.source "NaviDispatchLayerAdapter.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;
.implements Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;
.implements Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;
.implements Lcom/tencent/taes/TaesSDK$InitListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/tencent/taes/remote/api/IServerConnectListener;
.implements Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;


# static fields
.field private static final DISPLAY_SEC_SCREEN:Ljava/lang/String; = "SecScreen"

.field private static NAVI_DISPATCH_LAYER_ADAPTER:Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter; = null

.field private static final START_NAVI:I = 0x1

.field private static final STOP_NAVI:I = 0x2

.field private static isInitSuccess:Z

.field private static mCheckRunnable:Ljava/lang/Runnable;

.field private static mContext:Landroid/content/Context;

.field private static mH:Landroid/os/Handler;

.field private static mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

.field private static mMapSurfaceView:Landroid/view/SurfaceView;

.field private static volatile mPresentation:Landroid/app/Presentation;


# instance fields
.field private isConnectedMap:Z

.field private isNaviStart:Z

.field private mSurfaceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->NAVI_DISPATCH_LAYER_ADAPTER:Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->isInitSuccess:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mH:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter$1;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter$1;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mCheckRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->isNaviStart:Z

    .line 39
    iput-boolean v0, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->isConnectedMap:Z

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mSurfaceId:J

    return-void
.end method

.method private static initMapSurface(Landroid/content/Context;)V
    .locals 7

    .line 70
    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/tencent/taes/TaesSDK;->getMapApi()Lcom/tencent/taes/api/map/IMapApi;

    move-result-object v0

    sput-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    .line 72
    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    sget-object v1, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->NAVI_DISPATCH_LAYER_ADAPTER:Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;

    invoke-interface {v0, v1}, Lcom/tencent/taes/api/map/IMapApi;->registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V

    .line 74
    :cond_0
    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mPresentation:Landroid/app/Presentation;

    if-nez v0, :cond_4

    const-string v0, "display"

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 76
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 77
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    const/4 v1, 0x0

    .line 79
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 80
    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecScreen"

    .line 81
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 86
    new-instance v0, Landroid/app/Presentation;

    invoke-direct {v0, p0, v1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    sput-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mPresentation:Landroid/app/Presentation;

    .line 87
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mPresentation:Landroid/app/Presentation;

    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->setContentView(I)V

    .line 88
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mPresentation:Landroid/app/Presentation;

    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceView;

    sput-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mMapSurfaceView:Landroid/view/SurfaceView;

    .line 89
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mMapSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->NAVI_DISPATCH_LAYER_ADAPTER:Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_1

    .line 91
    :cond_3
    const-class p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "the target dispay is null!!!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_4
    :goto_1
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mPresentation:Landroid/app/Presentation;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->isShowing()Z

    move-result p0

    if-nez p0, :cond_5

    .line 98
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->show()V

    :cond_5
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3

    .line 107
    sput-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mContext:Landroid/content/Context;

    .line 108
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mH:Landroid/os/Handler;

    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mH:Landroid/os/Handler;

    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onDisConnected()V
    .locals 4

    .line 178
    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mSurfaceId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    iget-wide v1, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mSurfaceId:J

    invoke-interface {v0, v1, v2}, Lcom/tencent/taes/api/map/IMapApi;->removedSurface(J)Z

    :cond_0
    return-void
.end method

.method public onETAInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;)V
    .locals 1

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onETAInfoChanged remainTimeInSecond:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainTimeInSecond:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",remainDisInMetre:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainDisInMetre:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return-void
.end method

.method public onGuideInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;)V
    .locals 0

    return-void
.end method

.method public onInitError(Ljava/lang/String;I)V
    .locals 2

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NaviDispatchLayerAdapter TAESSDK init error ,onInitError:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGW(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 124
    sput-boolean p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->isInitSuccess:Z

    .line 125
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mH:Landroid/os/Handler;

    sget-object p1, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mH:Landroid/os/Handler;

    sget-object p1, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onInitSuccess()V
    .locals 0

    return-void
.end method

.method public onResult(JZ)V
    .locals 0

    .line 185
    iput-wide p1, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mSurfaceId:J

    return-void
.end method

.method public onStartStopEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;)V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7

    .line 160
    sget-object p2, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    if-eqz p2, :cond_0

    iget-wide p2, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mSurfaceId:J

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    .line 161
    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    iget-wide v1, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mSurfaceId:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    const/16 v4, 0x258

    const/16 v5, 0x1e0

    sget-object v6, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->NAVI_DISPATCH_LAYER_ADAPTER:Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;

    invoke-interface/range {v0 .. v6}, Lcom/tencent/taes/api/map/IMapApi;->updateSurface(JLandroid/view/Surface;IILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7

    .line 153
    sget-object p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    if-eqz p0, :cond_0

    .line 154
    sget-object v0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/16 v2, 0x258

    const/16 v3, 0x1e0

    const/4 v4, 0x2

    const/16 v5, 0x3c

    sget-object v6, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->NAVI_DISPATCH_LAYER_ADAPTER:Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;

    invoke-interface/range {v0 .. v6}, Lcom/tencent/taes/api/map/IMapApi;->createSurface(Landroid/view/Surface;IIIILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 167
    sget-object p1, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mSurfaceId:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 168
    sget-object p1, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mIMapApi:Lcom/tencent/taes/api/map/IMapApi;

    iget-wide v0, p0, Lcom/yftech/transfer/tencent/navi/NaviDispatchLayerAdapter;->mSurfaceId:J

    invoke-interface {p1, v0, v1}, Lcom/tencent/taes/api/map/IMapApi;->onPause(J)Z

    :cond_0
    return-void
.end method
