.class public Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "BluetoothPhoneCallBackImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;
    }
.end annotation


# static fields
.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;-><init>()V

    return-void
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;)Z
    .locals 1

    .line 38
    sget-object v0, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBluetoothHfpConnectStatusChanged bluetoothDevice:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",state:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 54
    sget-object p0, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;->onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBluetoothPhoneCallStateChanged:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 44
    sget-object p0, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
