.class Lcom/tencent/tai/pal/client/cs/c$2;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

.field final synthetic b:Lcom/tencent/tai/pal/client/cs/c;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c$2;->b:Lcom/tencent/tai/pal/client/cs/c;

    iput-object p2, p0, Lcom/tencent/tai/pal/client/cs/c$2;->a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$2;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-virtual {v0}, Lcom/tencent/tai/pal/client/cs/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PAL_SDK"

    const-string v1, "registerManagerStateListenerInner runOnUiThread isServiceConnected==true"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$2;->a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c$2;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/c;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;->onConnected(Lcom/tencent/tai/pal/PlatformSupportInfo;)V

    goto :goto_0

    :cond_0
    const-string p0, "PAL_SDK"

    const-string v0, "registerManagerStateListenerInner runOnUiThread isServiceConnected==false"

    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
