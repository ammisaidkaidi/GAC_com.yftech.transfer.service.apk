.class public final Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;
.super Ljava/lang/Object;
.source "PALServiceManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/PALServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PALConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tai/pal/client/PALServiceManager$1;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;->b:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;->a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    return-object p1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;->b:Landroid/content/Context;

    return-object p0
.end method

.method public getManagerStateListener()Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;->a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    return-object p0
.end method
