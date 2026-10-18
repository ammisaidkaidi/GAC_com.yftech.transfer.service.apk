.class public Lcom/yftech/transfer/phonelink/CarLifeLinkService;
.super Landroid/app/Service;
.source "CarLifeLinkService.java"


# static fields
.field public static final stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

.field private bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

.field private carInputObservor:Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;

.field private carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/yftech/transfer/phonelink/CarLifeLinkService$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/CarLifeLinkService$1;-><init>(Lcom/yftech/transfer/phonelink/CarLifeLinkService;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    .line 54
    new-instance v0, Lcom/yftech/transfer/phonelink/CarLifeLinkService$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/CarLifeLinkService$2;-><init>(Lcom/yftech/transfer/phonelink/CarLifeLinkService;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->carInputObservor:Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;

    .line 74
    new-instance v0, Lcom/yftech/transfer/phonelink/CarLifeLinkService$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/CarLifeLinkService$3;-><init>(Lcom/yftech/transfer/phonelink/CarLifeLinkService;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    .line 83
    new-instance v0, Lcom/yftech/transfer/phonelink/CarLifeLinkService$4;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/CarLifeLinkService$4;-><init>(Lcom/yftech/transfer/phonelink/CarLifeLinkService;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/phonelink/CarLifeLinkService;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static startCarlifeVR()V
    .locals 1

    .line 134
    sget-object v0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->vr_hardkey_event()V

    return-void
.end method

.method public static switched_devicemode(Z)V
    .locals 1

    .line 138
    sget-object v0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    invoke-virtual {v0, p0}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->switched_devicemode(Z)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 120
    sget-object p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "CarLifeLinkService onCreate"

    .line 111
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 113
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->carInputObservor:Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarInputListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;)V

    .line 114
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->registerObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 115
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    invoke-static {p0}, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 127
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->carInputObservor:Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarInputListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;)V

    .line 128
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->unregisterObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 129
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    invoke-static {p0}, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;)V

    return-void
.end method
