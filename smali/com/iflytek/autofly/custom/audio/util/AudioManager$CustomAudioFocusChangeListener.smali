.class Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/audio/util/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAudioFocusChangeListener"
.end annotation


# instance fields
.field private customDispatcher:Landroid/os/IBinder;

.field private deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field final synthetic this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager;Landroid/os/IBinder;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->this$0:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->customDispatcher:Landroid/os/IBinder;

    .line 76
    new-instance p2, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;

    invoke-direct {p2, p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener$1;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;Lcom/iflytek/autofly/custom/audio/util/AudioManager;)V

    iput-object p2, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 104
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->customDispatcher:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;)Landroid/os/IBinder;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->customDispatcher:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0

    .line 113
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;->customDispatcher:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/iflytek/autofly/custom/audio/aidl/ICustomAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/autofly/custom/audio/aidl/ICustomAudioFocusDispatcher;

    move-result-object p0

    .line 114
    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/ICustomAudioFocusDispatcher;->dispatchAudioFocusChange(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
