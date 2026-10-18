.class Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;
.super Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener$Stub;
.source "TboxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/tbox/util/TboxManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;->this$0:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTboxSignalStrength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;->this$0:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->access$000(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;->this$0:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->access$000(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;->onGetTboxSignalStrength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 75
    iget-object v1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;->this$0:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->access$100(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1$1;-><init>(Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onHasTboxNetWork()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;->this$0:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->access$000(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;->this$0:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->access$000(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;->onHasTboxNetWork()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;->this$0:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->access$100(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1$2;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1$2;-><init>(Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
