.class public Lcom/yftech/transfer/navigation/CarNavigationService;
.super Lcom/yftech/car/navigation/ICarNavigationService$Stub;
.source "CarNavigationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;
    }
.end annotation


# static fields
.field public static final BAIDU_MAP:Ljava/lang/String; = "baidu.map"

.field public static final GAODE_MAP:Ljava/lang/String; = "gaode.map"

.field private static final TAG:Ljava/lang/String; = "CarNavigationService"

.field public static final TENCENT_MAP:Ljava/lang/String; = "tencent.map"


# instance fields
.field private final mCarNavigationCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/yftech/car/navigation/ICarNavigationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

.field private final mNavigationAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yftech/transfer/navigation/AbsNavigationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationListener:Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/yftech/car/navigation/ICarNavigationService$Stub;-><init>()V

    .line 39
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCarNavigationCallbacks:Landroid/os/RemoteCallbackList;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationAdapterMap:Ljava/util/Map;

    .line 42
    new-instance v0, Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;-><init>(Lcom/yftech/transfer/navigation/CarNavigationService;Lcom/yftech/transfer/navigation/CarNavigationService$1;)V

    iput-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationListener:Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;

    .line 45
    iput-object p1, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/yftech/transfer/navigation/CarNavigationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yftech/transfer/navigation/CarNavigationService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCarNavigationCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method


# virtual methods
.method public addNavigation(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationAdapterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationAdapterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->init(Landroid/content/Context;)V

    .line 57
    iget-object p0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationListener:Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;

    invoke-virtual {p1, p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->setOnNavigationListener(Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;)V

    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "=============car navigation service=================="

    .line 158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "map list:"

    .line 159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationAdapterMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "current map: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public goCompany()V
    .locals 0

    return-void
.end method

.method public goHome()V
    .locals 0

    return-void
.end method

.method public goPoiDetailPage(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMapAppStart(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationAdapterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    if-eq v0, p1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationAdapterMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    invoke-virtual {v1}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    invoke-virtual {v0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->stop()V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationAdapterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    invoke-virtual {v0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->start()V

    .line 91
    iput-object p1, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    return-void
.end method

.method public openNaviApp()V
    .locals 0

    return-void
.end method

.method public registerCarNavigationCallback(Lcom/yftech/car/navigation/ICarNavigationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCarNavigationCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCarNavigationCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeNavigation(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationAdapterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    if-ne v0, p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->setOnNavigationListener(Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;)V

    .line 70
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    invoke-virtual {v0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->release()V

    .line 71
    iput-object v1, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCurStartNavigation:Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mNavigationAdapterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public searchKeyword(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unregisterCarNavigationCallback(Lcom/yftech/car/navigation/ICarNavigationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCarNavigationCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/navigation/CarNavigationService;->mCarNavigationCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
