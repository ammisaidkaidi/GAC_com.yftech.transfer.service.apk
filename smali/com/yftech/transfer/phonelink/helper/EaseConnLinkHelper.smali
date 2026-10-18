.class public Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;
.super Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;
.source "EaseConnLinkHelper.java"


# static fields
.field public static final ACTION_APP_OPEN:Ljava/lang/String; = "net.easyconn.app.open"

.field public static final ACTION_APP_PAUSE:Ljava/lang/String; = "net.easyconn.app.pause"

.field public static final ACTION_APP_QUIT:Ljava/lang/String; = "net.easyconn.app.quit"

.field public static final ACTION_APP_RESUME:Ljava/lang/String; = "net.easyconn.app.resume"

.field public static final ACTION_BT_A2DP_ACQUIRE:Ljava/lang/String; = "net.easyconn.a2dp.acquire"

.field public static final ACTION_BT_CALL:Ljava/lang/String; = "net.easyconn.bluetooth.call"

.field public static final ACTION_BT_CHECK:Ljava/lang/String; = "net.easyconn.bt.checkstatus"

.field public static final ACTION_BT_CONNECTED_NOTIFY:Ljava/lang/String; = "net.easyconn.bt.connected"

.field public static final ACTION_BT_OFF_NOTIFY:Ljava/lang/String; = "net.easyconn.bt.closed"

.field public static final ACTION_BT_ON_NOTIFY:Ljava/lang/String; = "net.easyconn.bt.opened"

.field public static final ACTION_EXIT_APP:Ljava/lang/String; = "net.easyconn.action.EXIT_APP"

.field public static final ACTION_IPHONE_PAUSE:Ljava/lang/String; = "net.easyconn.iphone.pause"

.field public static final ACTION_IPHONE_RESUME:Ljava/lang/String; = "net.easyconn.iphone.resume"

.field public static final ACTION_LINK_IN:Ljava/lang/String; = "net.easyconn.link.in"

.field public static final ACTION_LINK_OUT:Ljava/lang/String; = "net.easyconn.link.out"

.field public static final ACTION_MIRRORING_MODE:Ljava/lang/String; = "net.easyconn.screen.mirroring_mode"

.field public static final ACTION_MIRRORING_MODE_QUIT:Ljava/lang/String; = "net.easyconn.screen.mirroring_mode.quit"

.field public static final ACTION_MIRROR_IN:Ljava/lang/String; = "net.easyconn.mirror.in"

.field public static final ACTION_MIRROR_OUT:Ljava/lang/String; = "net.easyconn.mirror.out"

.field public static final ACTION_REGISTED:Ljava/lang/String; = "net.easyconn.registed"

.field public static final ACTION_SCREEN_PAUSE:Ljava/lang/String; = "net.easyconn.screen.pause"

.field public static final ACTION_SCREEN_RESUME:Ljava/lang/String; = "net.easyconn.screen.resume"

.field public static final ACTION_TO_BACK:Ljava/lang/String; = "net.easyconn.action.SWITCH_BACKGROUND"


# instance fields
.field private isConnected:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;-><init>()V

    .line 78
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;-><init>(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2;-><init>(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->mBluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->isConnected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->isConnected:Z

    return p1
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#sendBroadcast action:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 214
    sget-object p0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->isConnected:Z

    const-string v0, "net.easyconn.action.EXIT_APP"

    .line 209
    invoke-direct {p0, v0}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#init()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "net.easyconn.app.open"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.app.quit"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.link.in"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.link.out"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.mirror.in"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.mirror.out"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.screen.resume"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.screen.pause"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.iphone.resume"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.iphone.pause"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.registed"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.screen.mirroring_mode"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.screen.mirroring_mode.quit"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.app.resume"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.app.pause"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.a2dp.acquire"

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    sget-object v1, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->mBluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    .line 187
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public isConnected()Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->isConnected:Z

    return p0
.end method

.method public linkName()Ljava/lang/String;
    .locals 0

    const-string p0, "easyconn"

    return-object p0
.end method

.method public next()V
    .locals 0

    .line 229
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->next()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 224
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 219
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->play()V

    return-void
.end method

.method public previous()V
    .locals 0

    .line 234
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->pre()V

    return-void
.end method

.method public startPage(I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "net.easyconn.action.SWITCH_BACKGROUND"

    .line 201
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->sendBroadcast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public uninit()V
    .locals 2

    .line 192
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->mBluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    invoke-static {p0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    return-void
.end method
