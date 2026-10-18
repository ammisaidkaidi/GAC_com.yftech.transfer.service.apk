.class public Lcom/tencent/tai/pal/power/c;
.super Lcom/tencent/tai/pal/power/a$a;
.source "PowerService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# instance fields
.field private a:Lcom/tencent/tai/pal/power/PowerAdapter;

.field private b:Z

.field private c:Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;

.field private final d:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/power/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/tencent/tai/pal/power/a$a;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/tencent/tai/pal/power/c;->b:Z

    .line 22
    new-instance v0, Lcom/tencent/tai/pal/power/c$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/power/c$1;-><init>(Lcom/tencent/tai/pal/power/c;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/power/c;->c:Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;

    .line 29
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/power/PowerAdapter;->getPowerType()I

    move-result p0

    const-string v0, "PAL_SDK"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerService:getPowerType result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public a(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/power/PowerAdapter;->getPowerLevelAfterDriving(I)I

    move-result p0

    const-string p1, "PAL_SDK"

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerService:getPowerLevelAfterDriving powerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public a(Lcom/tencent/tai/pal/power/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PAL_SDK"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerService:registerCallback callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 39
    iget-object p1, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 40
    iget-boolean p1, p0, Lcom/tencent/tai/pal/power/c;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/power/c;->c:Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/power/PowerAdapter;->registerOnPowerLevelLowListener(Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/tencent/tai/pal/power/c;->b:Z

    .line 44
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

.method public a(Lcom/tencent/tai/pal/service/BaseAdapter;)V
    .locals 1

    .line 109
    instance-of v0, p1, Lcom/tencent/tai/pal/power/PowerAdapter;

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Lcom/tencent/tai/pal/power/PowerAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    .line 111
    iget-object p1, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/tencent/tai/pal/power/c;->b:Z

    .line 115
    iget-object v0, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    iget-object p0, p0, Lcom/tencent/tai/pal/power/c;->c:Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;

    invoke-virtual {v0, p0}, Lcom/tencent/tai/pal/power/PowerAdapter;->registerOnPowerLevelLowListener(Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/tencent/tai/pal/power/c;->b:Z

    .line 119
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/power/PowerAdapter;->getPowerInfo()Lcom/tencent/tai/pal/power/PowerInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/power/PowerInfo;->toJson(Lcom/tencent/tai/pal/power/PowerInfo;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerService:getPowerInfo json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public b(I)V
    .locals 6

    const-string v0, "PAL_SDK"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerService:notifyPowerLevelLow powerLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 97
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/power/b;

    invoke-interface {v3, p1}, Lcom/tencent/tai/pal/power/b;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 99
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public b(Lcom/tencent/tai/pal/power/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PAL_SDK"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerService:unregisterCallback callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 52
    iget-object p1, p0, Lcom/tencent/tai/pal/power/c;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 53
    iget-boolean p1, p0, Lcom/tencent/tai/pal/power/c;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/tencent/tai/pal/power/c;->a:Lcom/tencent/tai/pal/power/PowerAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/power/c;->c:Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/power/PowerAdapter;->unregisterOnPowerLevelLowListener(Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/tencent/tai/pal/power/c;->b:Z

    .line 57
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
