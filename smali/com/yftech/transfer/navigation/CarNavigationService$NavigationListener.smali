.class Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;
.super Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;
.source "CarNavigationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/navigation/CarNavigationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/navigation/CarNavigationService;


# direct methods
.method private constructor <init>(Lcom/yftech/transfer/navigation/CarNavigationService;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;->this$0:Lcom/yftech/transfer/navigation/CarNavigationService;

    invoke-direct {p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/transfer/navigation/CarNavigationService;Lcom/yftech/transfer/navigation/CarNavigationService$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;-><init>(Lcom/yftech/transfer/navigation/CarNavigationService;)V

    return-void
.end method


# virtual methods
.method public onManeuverChanged(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;Lcom/yftech/car/navigation/CarNavigationManeuver;)V
    .locals 3

    .line 136
    invoke-static {}, Lcom/yftech/transfer/navigation/CarNavigationService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onManeuverChanged, adapter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", info:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;->this$0:Lcom/yftech/transfer/navigation/CarNavigationService;

    invoke-static {p1}, Lcom/yftech/transfer/navigation/CarNavigationService;->access$200(Lcom/yftech/transfer/navigation/CarNavigationService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    monitor-enter p1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;->this$0:Lcom/yftech/transfer/navigation/CarNavigationService;

    invoke-static {v0}, Lcom/yftech/transfer/navigation/CarNavigationService;->access$200(Lcom/yftech/transfer/navigation/CarNavigationService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 146
    :try_start_1
    iget-object v1, p0, Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;->this$0:Lcom/yftech/transfer/navigation/CarNavigationService;

    invoke-static {v1}, Lcom/yftech/transfer/navigation/CarNavigationService;->access$200(Lcom/yftech/transfer/navigation/CarNavigationService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/navigation/ICarNavigationCallback;

    invoke-interface {v1, p2}, Lcom/yftech/car/navigation/ICarNavigationCallback;->onManeuverChanged(Lcom/yftech/car/navigation/CarNavigationManeuver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 148
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p0, p0, Lcom/yftech/transfer/navigation/CarNavigationService$NavigationListener;->this$0:Lcom/yftech/transfer/navigation/CarNavigationService;

    invoke-static {p0}, Lcom/yftech/transfer/navigation/CarNavigationService;->access$200(Lcom/yftech/transfer/navigation/CarNavigationService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 152
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
