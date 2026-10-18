.class Lcom/tencent/tai/pal/client/cs/c$3;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/client/cs/c;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/tai/pal/client/cs/c;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;I)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c$3;->c:Lcom/tencent/tai/pal/client/cs/c;

    iput-object p2, p0, Lcom/tencent/tai/pal/client/cs/c$3;->a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    iput p3, p0, Lcom/tencent/tai/pal/client/cs/c$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$3;->a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    iget p0, p0, Lcom/tencent/tai/pal/client/cs/c$3;->b:I

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;->onError(I)V

    return-void
.end method
