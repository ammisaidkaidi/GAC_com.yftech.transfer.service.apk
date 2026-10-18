.class Lcom/tencent/wecarbase/client/TaiUpdateManager$1;
.super Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener$Stub;
.source "TaiUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/client/TaiUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/client/TaiUpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/TaiUpdateManager;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tencent/wecarbase/client/TaiUpdateManager$1;->this$0:Lcom/tencent/wecarbase/client/TaiUpdateManager;

    invoke-direct {p0}, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/tencent/wecarbase/client/TaiUpdateManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncVersionInfo, onResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
