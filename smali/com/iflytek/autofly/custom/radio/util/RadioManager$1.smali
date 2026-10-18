.class Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;
.super Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDLListener$Stub;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/radio/util/RadioManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDLListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseDevice()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onCloseDevice()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$2;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$2;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onGetBand()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onGetBand()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 272
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$12;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$12;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onGetFrequency()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onGetFrequency()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 254
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$11;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$11;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onGetRadioListInfo()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onGetRadioListInfo()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 362
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$17;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$17;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetRadioMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onGetRadioMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 308
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$14;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$14;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onGetScanStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onGetScanStatus()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 326
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$15;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$15;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onGetSignalStrength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onGetSignalStrength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 344
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$16;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$16;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onOpenDevice()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onOpenDevice()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$1;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onScanNext()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onScanNext()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 200
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$8;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$8;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onScanPrevious()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onScanPrevious()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 218
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$9;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$9;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onScanRadio(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onScanRadio(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 128
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$4;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$4;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onSetBand(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onSetBand(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 110
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$3;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$3;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onSetFrequency(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onSetFrequency(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 236
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$10;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$10;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onStartPlay()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onStartPlay()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 164
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$6;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$6;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onStopPlay()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onStopPlay()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 182
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$7;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$7;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onStopScan()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onStopScan()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$5;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$5;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method

.method public onSwitchRadioMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onSwitchRadioMode(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 290
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;->this$0:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$13;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1$13;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method
