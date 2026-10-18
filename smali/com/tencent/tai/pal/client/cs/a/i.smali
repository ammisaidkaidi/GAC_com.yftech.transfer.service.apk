.class final Lcom/tencent/tai/pal/client/cs/a/i;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "ScreenManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALScreenManager;


# static fields
.field private static final a:Ljava/lang/String; = "i"


# instance fields
.field private b:Lcom/tencent/tai/pal/screen/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.SCREEN"

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/i;->b:Lcom/tencent/tai/pal/screen/a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 3

    .line 25
    sget-object v0, Lcom/tencent/tai/pal/client/cs/a/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected binder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p1}, Lcom/tencent/tai/pal/screen/a$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/screen/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/i;->b:Lcom/tencent/tai/pal/screen/a;

    return-void
.end method

.method public adjustScreenBrightness(II)I
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/i;->b:Lcom/tencent/tai/pal/screen/a;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "adjustScreenBrightness screenApiAidl == null"

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/i;->e()V

    .line 45
    :try_start_0
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 46
    sget-object v2, Lcom/tencent/tai/pal/c;->d:Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {p0, v2}, Lcom/tencent/tai/pal/VersionInfo;->compareTo(Lcom/tencent/tai/pal/VersionInfo;)I

    move-result p0

    if-ltz p0, :cond_1

    .line 47
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/screen/a;->b(II)I

    move-result p0

    return p0

    .line 49
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/screen/a;->a(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method protected f()V
    .locals 2

    .line 31
    sget-object v0, Lcom/tencent/tai/pal/client/cs/a/i;->a:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/i;->b:Lcom/tencent/tai/pal/screen/a;

    return-void
.end method

.method public getScreenBrightness()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/i;->b:Lcom/tencent/tai/pal/screen/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getScreenBrightness screenApiAidl == null"

    .line 62
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/i;->e()V

    .line 67
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/screen/a;->a()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getScreenMAXBrightness()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/i;->b:Lcom/tencent/tai/pal/screen/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getScreenMAXBrightness screenApiAidl == null"

    .line 78
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/i;->e()V

    .line 83
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/screen/a;->b()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public isScreenMute()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/i;->b:Lcom/tencent/tai/pal/screen/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "isScreenMute screenApiAidl == null"

    .line 94
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/i;->e()V

    .line 99
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/screen/a;->d()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method
