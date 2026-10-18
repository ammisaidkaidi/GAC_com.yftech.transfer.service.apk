.class Lcom/iflytek/autofly/custom/system/util/SystemManager$1;
.super Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDLListener$Stub;
.source "SystemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/system/util/SystemManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/system/util/SystemManager;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDLListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCarConfig(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$000(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$000(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/system/util/ISystemListener;->onGetCarConfig(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 97
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$100(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/system/util/SystemManager$1$2;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/system/util/SystemManager$1$2;-><init>(Lcom/iflytek/autofly/custom/system/util/SystemManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SystemManager.Custom"

    const-string p1, "onGetCarConfig: mSystemListener is null"

    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onGetUUID()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$000(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$000(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/system/util/ISystemListener;->onGetUUID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$100(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/system/util/SystemManager$1$3;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager$1$3;-><init>(Lcom/iflytek/autofly/custom/system/util/SystemManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SystemManager.Custom"

    const-string v0, "onGetUUID: mSystemListener is null"

    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetVNCode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$000(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$000(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/system/util/ISystemListener;->onGetVNCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$100(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/system/util/SystemManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager$1$1;-><init>(Lcom/iflytek/autofly/custom/system/util/SystemManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SystemManager.Custom"

    const-string v0, "onGetVNCode: mSystemListener is null"

    .line 84
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetVehicleState(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$000(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$000(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/system/util/ISystemListener;->onGetVehicleState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 138
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;->this$0:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->access$100(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/system/util/SystemManager$1$4;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/system/util/SystemManager$1$4;-><init>(Lcom/iflytek/autofly/custom/system/util/SystemManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SystemManager.Custom"

    const-string p1, "onGetVehicleState: mSystemListener is null"

    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p0, -0x3eb

    return p0
.end method
