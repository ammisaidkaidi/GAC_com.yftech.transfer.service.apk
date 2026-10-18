.class Lcom/tencent/tai/pal/client/cs/c$7;
.super Ljava/util/TimerTask;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/client/cs/c;->j()V
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

    .line 474
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c$7;->a:Lcom/tencent/tai/pal/client/cs/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$7;->a:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;)I

    move-result v0

    const-string v1, "PAL_SDK"

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keepBoundTimerTask status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 480
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c$7;->a:Lcom/tencent/tai/pal/client/cs/c;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;J)V

    :cond_0
    return-void
.end method
