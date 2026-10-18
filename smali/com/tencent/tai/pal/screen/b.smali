.class public Lcom/tencent/tai/pal/screen/b;
.super Lcom/tencent/tai/pal/screen/a$a;
.source "ScreenService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:Lcom/tencent/tai/pal/screen/ScreenAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tencent/tai/pal/screen/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/screen/ScreenAdapter;->getScreenBrightness()I

    move-result p0

    return p0
.end method

.method public a(Lcom/tencent/tai/pal/service/BaseAdapter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 61
    instance-of v0, p1, Lcom/tencent/tai/pal/screen/ScreenAdapter;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/tencent/tai/pal/screen/ScreenAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    return-void

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param not ScreenAdapter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter should not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tai/pal/screen/ScreenAdapter;->adjustScreenBrightness(II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/screen/ScreenAdapter;->getScreenMAXBrightness()I

    move-result p0

    return p0
.end method

.method public b(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tai/pal/screen/ScreenAdapter;->adjustScreenBrightness(II)I

    move-result p0

    return p0
.end method

.method public c()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/screen/b;->b:Lcom/tencent/tai/pal/screen/ScreenAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/screen/ScreenAdapter;->isScreenMute()Z

    move-result p0

    return p0
.end method
