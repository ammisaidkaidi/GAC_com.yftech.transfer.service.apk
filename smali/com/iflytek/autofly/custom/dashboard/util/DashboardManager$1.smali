.class Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;
.super Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub;
.source "DashboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckDashboardValid()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$000(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$000(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;->onCheckDashboardValid()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 78
    iget-object v2, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {v2}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$100(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1$1;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1$1;-><init>(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "DashboardManager.Custom"

    const-string v0, "onCheckDashboardValid exception"

    .line 84
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string p0, "DashboardManager.Custom"

    const-string v0, "onCheckDashboardValid: mDashboardListener is null"

    .line 88
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onGetDashboradStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$000(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$000(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;->onGetDashboradStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DashboardManager.Custom"

    const-string p1, "onGetDashboradStatus: mDashboardListener is null"

    .line 139
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSendData(III[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$000(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$000(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;->onSendData(III[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    iget-object p2, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$100(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1$2;

    invoke-direct {p3, p0, p1}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1$2;-><init>(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;Ljava/lang/Exception;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "DashboardManager.Custom"

    const-string p1, "onSendData: mDashboardListener is null"

    .line 108
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSendDataString(IIILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$000(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$000(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;->onSendDataString(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    iget-object p2, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;->this$0:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->access$100(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1$3;

    invoke-direct {p3, p0, p1}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1$3;-><init>(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;Ljava/lang/Exception;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "DashboardManager.Custom"

    const-string p1, "onSendData: mDashboardListener is null"

    .line 128
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
