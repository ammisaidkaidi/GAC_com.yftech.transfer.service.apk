.class Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;
.super Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/audio/util/AudioManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbandonAudioFocus(Landroid/os/IBinder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    .line 271
    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$200(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    if-nez p1, :cond_0

    return v1

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->access$100(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->access$300(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 278
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onAbandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 281
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$8;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$8;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return v1
.end method

.method public onCloseChannel(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onCloseChannel(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 152
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$2;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$2;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onGet3DSoundMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onGet3DSoundMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 354
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$12;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$12;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onGetCurrentChannel()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onGetCurrentChannel()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 170
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$3;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$3;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onGetEQ(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onGetEQ(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 318
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$10;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$10;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onGetEQMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onGetEQMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 206
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$5;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$5;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onGetLastMusicSourceChannel()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onGetLastMusicSourceChannel()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 300
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$9;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$9;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onIsAudioFocusOccupy()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onIsAudioFocusOccupy()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 188
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$4;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$4;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestAudioFocus(Landroid/os/IBinder;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    .line 243
    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$200(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-direct {v0, v1, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager;Landroid/os/IBinder;)V

    .line 246
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$200(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object p1

    invoke-interface {p1, v0, p2, p3}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onRequestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 252
    iget-object p2, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$7;

    invoke-direct {p3, p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$7;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onSet3DSoundMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onSet3DSoundMode(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 372
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$13;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$13;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onSetEQ(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onSetEQ(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 336
    iget-object p2, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$11;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$11;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onSetEQMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onSetEQMode(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 224
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$6;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$6;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method

.method public onSwitchChannel(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onSwitchChannel(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 134
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$1;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3eb

    return p0
.end method
