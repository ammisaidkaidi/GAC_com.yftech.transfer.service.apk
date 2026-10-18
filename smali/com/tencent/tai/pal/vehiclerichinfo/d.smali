.class public Lcom/tencent/tai/pal/vehiclerichinfo/d;
.super Lcom/tencent/tai/pal/vehiclerichinfo/c$a;
.source "VehicleRichInfoService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# instance fields
.field private a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

.field private final b:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/vehiclerichinfo/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/vehiclerichinfo/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;

.field private f:Z

.field private g:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a;-><init>()V

    .line 16
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    .line 17
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->d:Z

    .line 20
    new-instance v1, Lcom/tencent/tai/pal/vehiclerichinfo/d$1;

    invoke-direct {v1, p0}, Lcom/tencent/tai/pal/vehiclerichinfo/d$1;-><init>(Lcom/tencent/tai/pal/vehiclerichinfo/d;)V

    iput-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->e:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;

    .line 26
    iput-boolean v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->f:Z

    .line 27
    new-instance v0, Lcom/tencent/tai/pal/vehiclerichinfo/d$2;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/vehiclerichinfo/d$2;-><init>(Lcom/tencent/tai/pal/vehiclerichinfo/d;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->g:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;

    return-void
.end method

.method private a(I)V
    .locals 6

    const-string v0, "PAL_SDK"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleRichInfoService:notifyDrivingControlStatusChange status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 58
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/vehiclerichinfo/a;

    invoke-interface {v3, p1}, Lcom/tencent/tai/pal/vehiclerichinfo/a;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 60
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/vehiclerichinfo/d;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/vehiclerichinfo/d;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "PAL_SDK"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleRichInfoService:notifyDrivingSafetyDisclaimerUpdated json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 41
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/vehiclerichinfo/b;

    invoke-interface {v3, p1}, Lcom/tencent/tai/pal/vehiclerichinfo/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 43
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;->getDrivingSafetyDisclaimerInfo()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleRichInfoService getDrivingSafetyDisclaimerInfo adapter return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public a(Lcom/tencent/tai/pal/service/BaseAdapter;)V
    .locals 4

    .line 70
    instance-of v0, p1, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    if-eqz v0, :cond_2

    .line 71
    check-cast p1, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    .line 72
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 75
    iput-boolean v2, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->f:Z

    .line 76
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    iget-object v3, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->g:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;

    invoke-virtual {v0, v3}, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;->registerOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;)V

    goto :goto_0

    .line 78
    :cond_0
    iput-boolean v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->f:Z

    .line 80
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 82
    :try_start_1
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 84
    iput-boolean v2, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->d:Z

    .line 85
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->e:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;->registerOnDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;)V

    goto :goto_1

    .line 87
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->d:Z

    .line 89
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 80
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(Lcom/tencent/tai/pal/vehiclerichinfo/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 133
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 134
    iget-boolean p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->g:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;->registerOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;)V

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->f:Z

    .line 138
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/tencent/tai/pal/vehiclerichinfo/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 102
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 103
    iget-boolean p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->e:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;->registerOnDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;)V

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->d:Z

    .line 107
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;->getDrivingControlStatus()I

    move-result p0

    const-string v0, "PAL_SDK"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleRichInfoService getDrivingControlStatus adapter return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public b(Lcom/tencent/tai/pal/vehiclerichinfo/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 145
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 146
    iget-boolean p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->g:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;->unregisterOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->f:Z

    .line 150
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Lcom/tencent/tai/pal/vehiclerichinfo/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 114
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 115
    iget-boolean p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->e:Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;->unregisterOnDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;)V

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d;->d:Z

    .line 119
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method
