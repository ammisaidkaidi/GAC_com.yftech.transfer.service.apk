.class Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper$1;
.super Ljava/lang/Object;
.source "DeathRecipientHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->listenBinderDeath(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper$1;->this$0:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper$1;->this$0:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    invoke-static {v0}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->access$000(Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper$1;->this$0:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    invoke-static {p0}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->access$000(Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    :cond_0
    return-void
.end method
