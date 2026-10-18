.class Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/audio/util/AudioManager;
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

    .line 759
    iput-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "AudioManager.Custom"

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onService Connected |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$502(Lcom/iflytek/autofly/custom/audio/util/AudioManager;Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    .line 765
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$500(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 767
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$500(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$600(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    invoke-interface {p1, p2}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->registerListener(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 769
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 773
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$702(Lcom/iflytek/autofly/custom/audio/util/AudioManager;I)I

    .line 774
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$700(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$800(Lcom/iflytek/autofly/custom/audio/util/AudioManager;I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "AudioManager.Custom"

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onService Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$702(Lcom/iflytek/autofly/custom/audio/util/AudioManager;I)I

    .line 781
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$700(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$800(Lcom/iflytek/autofly/custom/audio/util/AudioManager;I)V

    .line 782
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$502(Lcom/iflytek/autofly/custom/audio/util/AudioManager;Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    return-void
.end method
