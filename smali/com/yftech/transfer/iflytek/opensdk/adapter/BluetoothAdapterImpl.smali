.class public Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;
.source "BluetoothAdapterImpl.java"


# static fields
.field public static final ACTION_CALL_STATE_CHANGED:Ljava/lang/String; = "com.tencent.mm.bluetooth.headsetclient.action.AG_CALL_CHANGED"

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "com.tencent.mm.bluetooth.headsetclient.extra.STATE"

.field public static final EXTRA_CALL_STATE_ACTIVE_CALL:I = 0x0

.field public static final EXTRA_CALL_STATE_CALL_RELEASED:I = 0x6

.field public static final EXTRA_CALL_STATE_DIALING_CALL:I = 0x2

.field public static final EXTRA_CALL_STATE_HELD_CALL:I = 0x1

.field public static final EXTRA_CALL_STATE_INCOMING_CALL:I = 0x4

.field public static final EXTRA_CALL_STATE_RINGING_CALL:I = 0x3

.field public static final EXTRA_CALL_STATE_WAITING_CALL:I = 0x5

.field private static final MSG_RECONNECT_IFlyTekService:I = 0x1

.field private static final RECONNECT_TIME:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterImpl"


# instance fields
.field private mBluetoothConnectState:I

.field private mCarBtContactsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;

.field private mCarBtManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

.field private mCarBtPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private mContext:Landroid/content/Context;

.field private mCurWXPhoneState:I

.field private mFlyContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIFBluetoothPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

.field private mIFlyCustomBTManager:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

.field private mIsCustomBTServiceConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;-><init>()V

    const/4 v0, 0x6

    .line 62
    iput v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCurWXPhoneState:I

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mBluetoothConnectState:I

    .line 75
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$1;-><init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$2;-><init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtContactsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;

    .line 215
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$3;-><init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    .line 253
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;-><init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIFBluetoothPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    .line 85
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mFlyContactList:Ljava/util/List;

    .line 89
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIFBluetoothPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    invoke-static {p1, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIFlyCustomBTManager:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    .line 91
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothSettingsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;Landroid/os/Handler;)V

    .line 92
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    iget-object v1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    .line 93
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtContactsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;

    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothContactsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIFlyCustomBTManager:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIFlyCustomBTManager:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIFBluetoothPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIsCustomBTServiceConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->reConnect()V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/yftech/car/bluetooth/CarBluetoothManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mFlyContactList:Ljava/util/List;

    return-object p0
.end method

.method private reConnect()V
    .locals 4

    .line 109
    iget-boolean v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIsCustomBTServiceConnected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 124
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 126
    iget p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mBluetoothConnectState:I

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 142
    :goto_0
    :pswitch_2
    iput p2, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mBluetoothConnectState:I

    .line 143
    sget-object v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothConnectStateChanged: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ifBtConnectSt = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIFlyCustomBTManager:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->notifyConnectStatus(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    iget-object v1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtContactsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothContactsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;)V

    .line 100
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mCarBtManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothSettingsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;)V

    .line 101
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mIFBluetoothPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    invoke-static {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->unRegisterListener(Ljava/lang/Object;)I

    return-void
.end method

.method public transferContacts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mFlyContactList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 415
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/Contacts;

    .line 416
    new-instance v1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;

    invoke-direct {v1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;-><init>()V

    .line 418
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/Contacts;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->setName(Ljava/lang/String;)V

    .line 419
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 420
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->NUMBER_TYPE_CELL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual {v1, v2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->setNumberList(Ljava/util/HashMap;)V

    .line 426
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->mFlyContactList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
