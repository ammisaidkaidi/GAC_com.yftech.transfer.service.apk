.class Lcom/tencent/tai/pal/client/cs/a/a$2;
.super Lcom/tencent/tai/pal/audio/c$a;
.source "AudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/a;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a$2;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-direct {p0}, Lcom/tencent/tai/pal/audio/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a$2;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/a/a;->c(Lcom/tencent/tai/pal/client/cs/a/a;)Lcom/tencent/tai/pal/client/cs/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tai/pal/client/cs/a/a$a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 529
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a$2;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->c(Lcom/tencent/tai/pal/client/cs/a/a;)Lcom/tencent/tai/pal/client/cs/a/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a$a;->a()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
