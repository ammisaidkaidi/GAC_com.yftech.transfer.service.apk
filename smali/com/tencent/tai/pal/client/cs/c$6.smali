.class Lcom/tencent/tai/pal/client/cs/c$6;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/client/cs/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/c;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/c;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c$6;->a:Lcom/tencent/tai/pal/client/cs/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$6;->a:Lcom/tencent/tai/pal/client/cs/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/b;)Lcom/tencent/tai/pal/b;

    .line 453
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$6;->a:Lcom/tencent/tai/pal/client/cs/c;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;I)I

    .line 454
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$6;->a:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v0, v1}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/PlatformSupportInfo;)Lcom/tencent/tai/pal/PlatformSupportInfo;

    .line 455
    invoke-static {v1}, Lcom/tencent/tai/pal/VersionInfo;->setRemoteVersion(Lcom/tencent/tai/pal/VersionInfo;)V

    .line 456
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$6;->a:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v0, v2}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;Z)V

    .line 457
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c$6;->a:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {p0, v2, v1}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;ZLcom/tencent/tai/pal/PlatformSupportInfo;)V

    return-void
.end method
