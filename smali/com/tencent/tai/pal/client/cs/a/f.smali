.class public final Lcom/tencent/tai/pal/client/cs/a/f;
.super Ljava/lang/Object;
.source "ManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Class;)Lcom/tencent/tai/pal/client/cs/a;
    .locals 1

    .line 21
    const-class p0, Lcom/tencent/tai/pal/client/PALAudioManager;

    if-ne p2, p0, :cond_0

    .line 22
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/a;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 23
    :cond_0
    const-class p0, Lcom/tencent/tai/pal/client/PALBluetoothManager;

    if-ne p2, p0, :cond_1

    .line 24
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/b;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/b;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 25
    :cond_1
    const-class p0, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager;

    if-ne p2, p0, :cond_2

    .line 26
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/c;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 27
    :cond_2
    const-class p0, Lcom/tencent/tai/pal/client/PALPowerManager;

    if-ne p2, p0, :cond_3

    .line 28
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/h;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 29
    :cond_3
    const-class p0, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager;

    if-ne p2, p0, :cond_4

    .line 30
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/l;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/l;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 31
    :cond_4
    const-class p0, Lcom/tencent/tai/pal/client/PALInsManager;

    if-ne p2, p0, :cond_5

    .line 32
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/e;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/e;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_5
    const-class p0, Lcom/tencent/tai/pal/client/PALScreenManager;

    if-ne p2, p0, :cond_6

    .line 34
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/i;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/i;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 35
    :cond_6
    const-class p0, Lcom/tencent/tai/pal/client/PALNetworkManager;

    if-ne p2, p0, :cond_7

    .line 36
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/g;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/g;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 37
    :cond_7
    const-class p0, Lcom/tencent/tai/pal/client/PALTelephoneManager;

    if-ne p2, p0, :cond_8

    .line 38
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/k;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 39
    :cond_8
    const-class p0, Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager;

    if-ne p2, p0, :cond_9

    .line 40
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/m;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/m;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 41
    :cond_9
    const-class p0, Lcom/tencent/tai/pal/client/PALExtensibleManager;

    if-ne p2, p0, :cond_a

    .line 42
    new-instance p0, Lcom/tencent/tai/pal/client/cs/a/d;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/d;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p0

    .line 44
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
