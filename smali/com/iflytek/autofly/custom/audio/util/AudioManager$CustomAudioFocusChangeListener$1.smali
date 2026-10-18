.class Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

.field final synthetic val$this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;Lcom/iflytek/autofly/custom/audio/util/AudioManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;->this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    iput-object p2, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;->val$this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;->this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    iget-object v0, v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;->this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    iget-object v0, v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    .line 82
    invoke-static {v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$200(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;->this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->access$100(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;->this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->access$100(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;->this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    invoke-static {v2}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->access$300(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 89
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;->this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    iget-object v1, v1, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onAbandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;->this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;

    iget-object v1, v1, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-static {v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1$1;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
