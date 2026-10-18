.class public final Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;
.super Ljava/lang/Object;
.source "PALServiceManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 416
    iput-object p1, p0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->a:Landroid/content/Context;

    return-void

    .line 414
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal argument null context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;
    .locals 2

    .line 436
    new-instance v0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;-><init>(Lcom/tencent/tai/pal/client/PALServiceManager$1;)V

    .line 437
    iget-object v1, p0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;->a(Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;Landroid/content/Context;)Landroid/content/Context;

    .line 438
    iget-object p0, p0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    invoke-static {v0, p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;->a(Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    return-object v0
.end method

.method public listener(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    return-object p0
.end method
