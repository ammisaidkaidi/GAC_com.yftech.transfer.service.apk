.class public Lcom/yftech/transfer/phonelink/manager/BlueToothManager;
.super Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;
.source "BlueToothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/phonelink/manager/BlueToothManager$BlueToothObservor;
    }
.end annotation


# static fields
.field public static final ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/phonelink/manager/BlueToothManager$BlueToothObservor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bluetoothMusicCallBackImp:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;

.field private bluetoothPhoneCallBackImp:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;

.field private bluetoothSettingsCallBackImp:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;

.field private bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

.field private enableState:I

.field private initD:Lio/reactivex/disposables/Disposable;

.field private isServiceConnected:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->observors:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->isServiceConnected:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothPhoneCallBackImp:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;

    .line 45
    new-instance v0, Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothMusicCallBackImp:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;

    .line 46
    new-instance v0, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothSettingsCallBackImp:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;

    .line 47
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;-><init>(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    const/4 v0, -0x1

    .line 180
    iput v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->enableState:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->enableState:I

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->enableState:I

    return p1
.end method

.method static synthetic access$202(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->isServiceConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothSettingsCallBackImp:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothPhoneCallBackImp:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothMusicCallBackImp:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/HashSet;
    .locals 1

    .line 38
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->observors:Ljava/util/HashSet;

    return-object v0
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/phonelink/manager/BlueToothManager$BlueToothObservor;)Z
    .locals 1

    .line 408
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/phonelink/manager/BlueToothManager$BlueToothObservor;)V
    .locals 1

    .line 400
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/phonelink/manager/BlueToothManager$BlueToothObservor;)V
    .locals 1

    .line 404
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "call:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->dial(Ljava/lang/String;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public connectAudio()V
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    const-string v1, "connectAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPairedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 367
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_2

    goto :goto_0

    .line 372
    :cond_2
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v1, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 373
    iget-object v3, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectAudio device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",hfpState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    .line 375
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestConnect(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 376
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestConnect(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public disConnect()V
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    const-string v1, "disConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPairedDevices()Ljava/util/List;

    move-result-object v0

    .line 279
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getRemoteDevices()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 280
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pairedDevices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remoteDevices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_2

    goto :goto_0

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disConnect device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v1, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 289
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v1, v4}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v3

    .line 290
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disConnect device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",hfpState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",a2dpState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-eq v4, v2, :cond_3

    if-ne v4, v3, :cond_1

    .line 292
    :cond_3
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/16 v0, 0x1000

    invoke-virtual {p0, v1, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestDisconnected(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public disConnectAudio()V
    .locals 9

    .line 342
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    const-string v1, "disConnectAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPairedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 344
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v1, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 352
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v1, v5}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    .line 354
    iget-object v6, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disConnectAudio device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",a2dpSinkState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",rcpSinkState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    if-eq v6, v2, :cond_3

    if-ne v6, v4, :cond_1

    .line 357
    :cond_3
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestDisconnected(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 358
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, v1, v5}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestDisconnected(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 2

    .line 322
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getBluetoothName()Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#getBluetoothName bluetoothName:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCallState()I
    .locals 2

    .line 313
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPhoneCalls()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 314
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 316
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x7

    return p0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 11

    .line 227
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPairedDevices()Ljava/util/List;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#getConnectedDevice pairedDevices:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 229
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 231
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 235
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_3

    goto :goto_0

    .line 238
    :cond_3
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v2, v4}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v3

    .line 239
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v2, v5}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    .line 240
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v2, v6}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v7, v3, :cond_5

    if-ne v8, v3, :cond_4

    goto :goto_1

    :cond_4
    move v9, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v9, v8

    :goto_2
    if-eq v7, v4, :cond_7

    if-ne v8, v4, :cond_6

    goto :goto_3

    :cond_6
    move v10, v6

    goto :goto_4

    :cond_7
    :goto_3
    move v10, v8

    :goto_4
    if-eq v7, v5, :cond_8

    if-ne v8, v5, :cond_9

    :cond_8
    move v6, v8

    .line 244
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "#getConnectedDevice dpEnableState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",vrcEnableState:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",headsetEnableState:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v9, :cond_a

    if-nez v10, :cond_a

    if-eqz v6, :cond_2

    :cond_a
    return-object v2

    :cond_b
    return-object v1

    :cond_c
    :goto_5
    return-object v1
.end method

.method public getEnableState()I
    .locals 2

    .line 195
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getEnableState()I

    move-result p0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEnableState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public init()V
    .locals 3

    .line 135
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$3;-><init>(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 153
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 154
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;

    invoke-direct {v1, p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;-><init>(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)V

    new-instance v2, Lcom/yftech/transfer/phonelink/consumer/ExceptionConsumer;

    invoke-direct {v2}, Lcom/yftech/transfer/phonelink/consumer/ExceptionConsumer;-><init>()V

    .line 155
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->initD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public isA2DPConnected()Z
    .locals 2

    .line 97
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "isA2DPConnected:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return v0
.end method

.method public isA2DP_SINKConnected()Z
    .locals 2

    .line 91
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "isA2DP_SINKConnected:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return v0
.end method

.method public isAVRCP_CONTROLLERConnected()Z
    .locals 2

    .line 79
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result p0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAVRCP_CONTROLLERConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public isBlueToothConnected()Z
    .locals 2

    .line 73
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result p0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBlueToothConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public isEnable()Z
    .locals 2

    .line 189
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getEnableState()I

    move-result p0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/16 v0, 0xc

    if-eq v0, p0, :cond_1

    const/16 v0, 0xb

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isHEADSET_CLIENTConnected()Z
    .locals 2

    .line 85
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result p0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHEADSET_CLIENTConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public isMusicEnable()Z
    .locals 5

    .line 201
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPairedDevices()Ljava/util/List;

    move-result-object p0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMusicEnable pairedDevices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 203
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 205
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 209
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMusicEnable device,connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 212
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_3

    goto :goto_0

    .line 215
    :cond_3
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v1, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 216
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v1, v4}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v3, v2, :cond_4

    if-ne v3, v1, :cond_2

    .line 218
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isMusicEnable dpEnableState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isMusicEnable vrcEnableState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v0
.end method

.method public isOnCall()Z
    .locals 3

    .line 333
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPhoneCalls()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 334
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 338
    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p0

    if-ne v1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 128
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPlayingBluetoothMusic()Z

    move-result v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "isPlaying isPlayingBluetoothMusic:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return v0
.end method

.method public isServiceConnected()Z
    .locals 0

    .line 412
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->isServiceConnected:Z

    return p0
.end method

.method public next()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->nextBluetoothMusic()Z

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "next"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 113
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->pauseBluetoothMusic()Z

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public play()V
    .locals 2

    .line 103
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->startBluetoothMusic(Z)Z

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "play"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public playAuto()V
    .locals 2

    .line 108
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->startBluetoothMusic(Z)Z

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "playAuto"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public pre()V
    .locals 1

    .line 123
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->previousBluetoothMusic()Z

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "pre"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setBluetoothDisable()Z
    .locals 2

    .line 268
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setScanMode(II)Z

    move-result p0

    const-string v0, "setBluetoothDisable: setScanMode(20,0)"

    .line 269
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public setBluetoothEnable()Z
    .locals 2

    .line 257
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setScanMode(II)Z

    move-result p0

    const-string v0, "setBluetoothEnable: setScanMode(23,0)"

    .line 258
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public setEnable(Z)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 184
    :goto_0
    iput v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->enableState:I

    .line 185
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setEnabled(Z)Z

    return-void
.end method

.method public uninit()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->initD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->initD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 386
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothSettingsCallBackImp:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothSettingsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;)V

    .line 387
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothPhoneCallBackImp:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    .line 388
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothMusicCallBackImp:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;)V

    .line 389
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    invoke-static {p0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    return-void
.end method
