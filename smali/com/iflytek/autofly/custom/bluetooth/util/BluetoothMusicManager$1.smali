.class Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;
.super Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;
.source "BluetoothMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseA2dpStream()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onCloseA2dpStream()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 259
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$11;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$11;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onConnectA2DP()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onConnectA2DP()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$1;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onDisconnectA2DP()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onDisconnectA2DP()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$2;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$2;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onGetA2DPConnectionState()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onGetA2DPConnectionState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 115
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$3;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$3;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onGetFlyMediaInfoList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onGetFlyMediaInfoList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 276
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$12;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$12;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method public onGetMusicStatus()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onGetMusicStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 169
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$6;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$6;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onNextMusic()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onNextMusic()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 205
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$8;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$8;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onOpenA2dpStream()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onOpenA2dpStream()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 241
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$10;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$10;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onPause()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onPause()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 151
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$5;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$5;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onPlay()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onPlay()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 133
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$4;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$4;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onPreviousMusic()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onPreviousMusic()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 223
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$9;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$9;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onStopMusic()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onStopMusic()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 187
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$7;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1$7;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method
