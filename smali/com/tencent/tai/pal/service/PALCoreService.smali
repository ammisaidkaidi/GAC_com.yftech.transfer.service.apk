.class public Lcom/tencent/tai/pal/service/PALCoreService;
.super Landroid/app/Service;
.source "PALCoreService.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# static fields
.field private static a:Z = false


# instance fields
.field private b:Lcom/tencent/tai/pal/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    new-instance v0, Lcom/tencent/tai/pal/service/PALCoreService$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/service/PALCoreService$1;-><init>(Lcom/tencent/tai/pal/service/PALCoreService;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/service/PALCoreService;->b:Lcom/tencent/tai/pal/b$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/tencent/tai/pal/service/PALCoreService;->b:Lcom/tencent/tai/pal/b$a;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "PAL_SDK"

    const-string v1, "PALCoreService.onCreate"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/tencent/tai/pal/service/b;->a()Lcom/tencent/tai/pal/service/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tai/pal/service/b;->a(Landroid/content/Context;)V

    .line 86
    sget-boolean v0, Lcom/tencent/tai/pal/service/PALCoreService;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 87
    sput-boolean v0, Lcom/tencent/tai/pal/service/PALCoreService;->a:Z

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tai_pal_core_service_start_up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    .line 89
    invoke-virtual {p0}, Lcom/tencent/tai/pal/service/PALCoreService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/service/PALCoreService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    invoke-static {}, Lcom/tencent/tai/pal/a;->a()V

    return-void
.end method
