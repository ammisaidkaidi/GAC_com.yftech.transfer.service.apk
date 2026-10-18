.class public abstract Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "BluetoothAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract enableBluetooth(Z)I
.end method

.method public abstract getConnectionState()I
.end method

.method public abstract getDeviceMac()Ljava/lang/String;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract registerOnDeviceConnectionStateChange(Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;)V
.end method

.method public abstract unregisterOnDeviceConnectionStateChange(Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;)V
.end method
