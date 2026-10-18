.class Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;
.super Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;
.source "BluetoothPhoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onAccept(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 189
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$7;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$7;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onCall(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onCall(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 117
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$3;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$3;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onGetBluetoothDevice()Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onGetBluetoothDevice()Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 298
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$13;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$13;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetCallLogList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onGetCallLogList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 316
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$14;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$14;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetConnectionState()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onGetConnectionState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 99
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$2;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$2;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onGetContactByName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onGetContactByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 225
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$9;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$9;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetContactByNumber(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onGetContactByNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 243
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$10;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$10;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetContactList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onGetContactList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 207
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$8;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$8;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onGetName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$1;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onHang(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onHang(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 153
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$5;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$5;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onLaunchActivity(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onLaunchActivity(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 279
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$12;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$12;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onRecall()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onRecall()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$4;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$4;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onReject(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onReject(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 171
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$6;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$6;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onSyncPhoneBook(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onSyncPhoneBook(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 334
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$15;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$15;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onTransfer()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onTransfer()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 261
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$11;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1$11;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method
