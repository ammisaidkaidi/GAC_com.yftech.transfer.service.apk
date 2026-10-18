.class Lcom/tencent/tai/pal/client/cs/c$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/c;
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

    .line 52
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c$1;->a:Lcom/tencent/tai/pal/client/cs/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$1;->a:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;)I

    move-result v0

    const-string v1, "PAL_SDK"

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PALServiceManager.mBindServiceRunnable status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c$1;->a:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/c;->b(Lcom/tencent/tai/pal/client/cs/c;)V

    :cond_0
    return-void
.end method
