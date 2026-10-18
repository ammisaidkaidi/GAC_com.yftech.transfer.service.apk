.class final Lcom/tencent/tai/pal/client/cs/a/m;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "VehicleRichInfoManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager;


# instance fields
.field private a:Lcom/tencent/tai/pal/vehiclerichinfo/c;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$DrivingSafetyDisclaimerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$OnDrivingControlStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tai/pal/vehiclerichinfo/b;

.field private e:Lcom/tencent/tai/pal/vehiclerichinfo/a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.VEHICLE_RICH_INFO"

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/m$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/m$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/m;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->d:Lcom/tencent/tai/pal/vehiclerichinfo/b;

    .line 39
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/m$2;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/m$2;-><init>(Lcom/tencent/tai/pal/client/cs/a/m;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->e:Lcom/tencent/tai/pal/vehiclerichinfo/a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/m;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/a/m;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->a:Lcom/tencent/tai/pal/vehiclerichinfo/c;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteListener vehicleRichInfoAidl == null"

    .line 173
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->d:Lcom/tencent/tai/pal/vehiclerichinfo/b;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/vehiclerichinfo/c;->a(Lcom/tencent/tai/pal/vehiclerichinfo/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 179
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->a:Lcom/tencent/tai/pal/vehiclerichinfo/c;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteListener vehicleRichInfoAidl == null"

    .line 187
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->d:Lcom/tencent/tai/pal/vehiclerichinfo/b;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/vehiclerichinfo/c;->b(Lcom/tencent/tai/pal/vehiclerichinfo/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 194
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->a:Lcom/tencent/tai/pal/vehiclerichinfo/c;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteDrivingControlStatusChangeListener vehicleRichInfoAidl == null"

    .line 202
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->e:Lcom/tencent/tai/pal/vehiclerichinfo/a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/vehiclerichinfo/c;->a(Lcom/tencent/tai/pal/vehiclerichinfo/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 208
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->a:Lcom/tencent/tai/pal/vehiclerichinfo/c;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteDrivingControlStatusChangeListener vehicleRichInfoAidl == null"

    .line 216
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->e:Lcom/tencent/tai/pal/vehiclerichinfo/a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/vehiclerichinfo/c;->b(Lcom/tencent/tai/pal/vehiclerichinfo/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 222
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 0

    .line 229
    invoke-static {p1}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/vehiclerichinfo/c;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->a:Lcom/tencent/tai/pal/vehiclerichinfo/c;

    .line 230
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->g()V

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->i()V

    :cond_1
    return-void
.end method

.method protected f()V
    .locals 1

    .line 240
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->h()V

    .line 241
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->j()V

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->a:Lcom/tencent/tai/pal/vehiclerichinfo/c;

    return-void
.end method

.method public getDrivingControlStatus()I
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_getDrivingControlStatus_supported:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->a:Lcom/tencent/tai/pal/vehiclerichinfo/c;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getDrivingControlStatus vehicleRichInfoAidl == null"

    .line 157
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->e()V

    .line 162
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclerichinfo/c;->b()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 164
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 153
    :cond_1
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string v0, "getDrivingControlStatus"

    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDrivingSafetyDisclaimerInfo()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_getDrivingSafetyDisclaimerInfo_supported:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->a:Lcom/tencent/tai/pal/vehiclerichinfo/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getDrivingSafetyDisclaimerInfo vehicleRichInfoAidl == null"

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->e()V

    .line 100
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclerichinfo/c;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 102
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1

    .line 91
    :cond_1
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string v0, "getDrivingSafetyDisclaimerInfo"

    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$DrivingSafetyDisclaimerListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "VehicleRichInfoManager"

    const-string p1, "registerDrivingSafetyDisclaimerListener listener is null"

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->g()V

    .line 68
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public registerOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$OnDrivingControlStatusChangeListener;)V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 111
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_registerOnDrivingControlStatusChangeListener_unregisterOnDrivingControlStatusChangeListener_supported:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    const-string p0, "VehicleRichInfoManager"

    const-string p1, "registerOnDrivingControlStatusChangeListener listener is null"

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->i()V

    .line 126
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "registerOnDrivingControlStatusChangeListener"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$DrivingSafetyDisclaimerListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "VehicleRichInfoManager"

    const-string p1, "unregisterDrivingSafetyDisclaimerListener listener is null"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->h()V

    .line 83
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$OnDrivingControlStatusChangeListener;)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_registerOnDrivingControlStatusChangeListener_unregisterOnDrivingControlStatusChangeListener_supported:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    const-string p0, "VehicleRichInfoManager"

    const-string p1, "unregisterOnDrivingControlStatusChangeListener listener is null"

    .line 137
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->j()V

    .line 145
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 134
    :cond_2
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "unregisterOnDrivingControlStatusChangeListener"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
