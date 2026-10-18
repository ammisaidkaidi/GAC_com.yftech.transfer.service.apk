.class Lcom/tencent/wecarbase/client/AccountManager$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/client/AccountManager;->onServiceConnectedOk(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/client/AccountManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/AccountManager;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/tencent/wecarbase/client/AccountManager$1;->this$0:Lcom/tencent/wecarbase/client/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 343
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onServiceConnectedOk preLoadConfig"

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/tencent/wecarbase/client/TAIConfigManager;->getInstance()Lcom/tencent/wecarbase/client/TAIConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/TAIConfigManager;->preLoadConfig()V

    return-void
.end method
