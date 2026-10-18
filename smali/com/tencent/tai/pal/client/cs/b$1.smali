.class Lcom/tencent/tai/pal/client/cs/b$1;
.super Ljava/lang/Object;
.source "ServiceConnectionHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/b;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/b;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/b$1;->a:Lcom/tencent/tai/pal/client/cs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "PAL_SDK"

    const-string v0, "ServiceConnectionHelper.onServiceConnected"

    .line 182
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/b$1;->a:Lcom/tencent/tai/pal/client/cs/b;

    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/b;->a(Lcom/tencent/tai/pal/client/cs/b;)Lcom/tencent/tai/pal/client/cs/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/b$1;->a:Lcom/tencent/tai/pal/client/cs/b;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/b;->a(Lcom/tencent/tai/pal/client/cs/b;)Lcom/tencent/tai/pal/client/cs/b$a;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/tencent/tai/pal/client/cs/b$a;->a(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "PAL_SDK"

    const-string v0, "ServiceConnectionHelper.onServiceDisconnected"

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/b$1;->a:Lcom/tencent/tai/pal/client/cs/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/tai/pal/client/cs/b;->a(Lcom/tencent/tai/pal/client/cs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/b$1;->a:Lcom/tencent/tai/pal/client/cs/b;

    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/b;->a(Lcom/tencent/tai/pal/client/cs/b;)Lcom/tencent/tai/pal/client/cs/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/b$1;->a:Lcom/tencent/tai/pal/client/cs/b;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/b;->a(Lcom/tencent/tai/pal/client/cs/b;)Lcom/tencent/tai/pal/client/cs/b$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/tai/pal/client/cs/b$a;->d()V

    :cond_0
    return-void
.end method
