.class Lcom/yftech/transfer/txznet/AccessAdapter;
.super Landroid/content/BroadcastReceiver;
.source "AccessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_SYS_TO_TXZ:Ljava/lang/String; = "com.txznet.adapter.recv"

.field public static final ACTION_TXZ_TO_SYS:Ljava/lang/String; = "com.txznet.adapter.send"

.field private static final INVOKE_QUEUE_COUNT:I = 0x64

.field private static final INVOKE_TIMEOUT_TIME:J = 0xbb8L

.field private static final KEY_ACTION_STR:Ljava/lang/String; = "action"

.field private static final KEY_ACTION_VALUE_TTS:Ljava/lang/String; = "txz.tts.speak"

.field private static final KEY_TTS_STR:Ljava/lang/String; = "tts"

.field private static final KEY_TYPE:Ljava/lang/String; = "key_type"


# instance fields
.field private isTimeout:Z

.field private mAdapterImpls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/yftech/transfer/txznet/access/AbsBaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAppAdapterImpl:Lcom/yftech/transfer/txznet/access/AppAdapterImpl;

.field private mAudioAdapterImpl:Lcom/yftech/transfer/txznet/access/AudioAdapterImpl;

.field private mBluetoothAdapterImpl:Lcom/yftech/transfer/txznet/access/BluetoothAdapterImpl;

.field private mContext:Landroid/content/Context;

.field private mDVRAdapterImpl:Lcom/yftech/transfer/txznet/access/DVRAdapterImpl;

.field private mH:Landroid/os/Handler;

.field private mIntentQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mInvokeIntentRunnable:Ljava/lang/Runnable;

.field private mInvokeIntentThread:Ljava/lang/Thread;

.field private mInvokeTimeOutRunnable:Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

.field private mMediaAdapterImpl:Lcom/yftech/transfer/txznet/access/MediaAdapterImpl;

.field private mScreenAdapterImpl:Lcom/yftech/transfer/txznet/access/ScreenAdapterImpl;

.field private mSystemAdapterImpl:Lcom/yftech/transfer/txznet/access/SystemAdapterImpl;

.field private mVehicleControlAdapterImpl:Lcom/yftech/transfer/txznet/access/VehicleControlAdapterImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->isTimeout:Z

    .line 52
    new-instance v0, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;-><init>(Lcom/yftech/transfer/txznet/AccessAdapter;)V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeTimeOutRunnable:Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    .line 55
    new-instance v0, Lcom/yftech/transfer/txznet/access/SystemAdapterImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/access/SystemAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mSystemAdapterImpl:Lcom/yftech/transfer/txznet/access/SystemAdapterImpl;

    .line 56
    new-instance v0, Lcom/yftech/transfer/txznet/access/VehicleControlAdapterImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/access/VehicleControlAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mVehicleControlAdapterImpl:Lcom/yftech/transfer/txznet/access/VehicleControlAdapterImpl;

    .line 57
    new-instance v0, Lcom/yftech/transfer/txznet/access/AppAdapterImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/access/AppAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAppAdapterImpl:Lcom/yftech/transfer/txznet/access/AppAdapterImpl;

    .line 58
    new-instance v0, Lcom/yftech/transfer/txznet/access/BluetoothAdapterImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/access/BluetoothAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mBluetoothAdapterImpl:Lcom/yftech/transfer/txznet/access/BluetoothAdapterImpl;

    .line 59
    new-instance v0, Lcom/yftech/transfer/txznet/access/MediaAdapterImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/access/MediaAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mMediaAdapterImpl:Lcom/yftech/transfer/txznet/access/MediaAdapterImpl;

    .line 60
    new-instance v0, Lcom/yftech/transfer/txznet/access/DVRAdapterImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/access/DVRAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mDVRAdapterImpl:Lcom/yftech/transfer/txznet/access/DVRAdapterImpl;

    .line 61
    new-instance v0, Lcom/yftech/transfer/txznet/access/AudioAdapterImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/access/AudioAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAudioAdapterImpl:Lcom/yftech/transfer/txznet/access/AudioAdapterImpl;

    .line 62
    new-instance v0, Lcom/yftech/transfer/txznet/access/ScreenAdapterImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/access/ScreenAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mScreenAdapterImpl:Lcom/yftech/transfer/txznet/access/ScreenAdapterImpl;

    .line 85
    new-instance v0, Lcom/yftech/transfer/txznet/AccessAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/txznet/AccessAdapter$1;-><init>(Lcom/yftech/transfer/txznet/AccessAdapter;)V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeIntentRunnable:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mContext:Landroid/content/Context;

    .line 66
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mH:Landroid/os/Handler;

    .line 68
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    const/16 v0, 0x3f2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mSystemAdapterImpl:Lcom/yftech/transfer/txznet/access/SystemAdapterImpl;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    const/16 v0, 0x438

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mVehicleControlAdapterImpl:Lcom/yftech/transfer/txznet/access/VehicleControlAdapterImpl;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAppAdapterImpl:Lcom/yftech/transfer/txznet/access/AppAdapterImpl;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    const/16 v0, 0x410

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mBluetoothAdapterImpl:Lcom/yftech/transfer/txznet/access/BluetoothAdapterImpl;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    const/16 v0, 0x42e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mDVRAdapterImpl:Lcom/yftech/transfer/txznet/access/DVRAdapterImpl;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    const/16 v0, 0x424

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mMediaAdapterImpl:Lcom/yftech/transfer/txznet/access/MediaAdapterImpl;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    const/16 v0, 0x41a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mMediaAdapterImpl:Lcom/yftech/transfer/txznet/access/MediaAdapterImpl;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    const/16 v0, 0x406

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAudioAdapterImpl:Lcom/yftech/transfer/txznet/access/AudioAdapterImpl;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    const/16 v0, 0x3fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mScreenAdapterImpl:Lcom/yftech/transfer/txznet/access/ScreenAdapterImpl;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeIntentThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeIntentThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeIntentRunnable:Ljava/lang/Runnable;

    const-class v1, Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeIntentThread:Ljava/lang/Thread;

    .line 80
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeIntentThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/txznet/AccessAdapter;)Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeTimeOutRunnable:Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/transfer/txznet/AccessAdapter;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/transfer/txznet/AccessAdapter;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->isTimeout:Z

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/util/Map;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mAdapterImpls:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/transfer/txznet/AccessAdapter;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/lang/Thread;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeIntentThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/transfer/txznet/AccessAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeIntentThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mInvokeIntentRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
