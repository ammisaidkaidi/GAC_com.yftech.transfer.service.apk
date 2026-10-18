.class public interface abstract Lcom/tencent/tai/pal/client/PALBluetoothManager;
.super Ljava/lang/Object;
.source "PALBluetoothManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALBluetoothManager$BluetoothDeviceConnectionStateListener;
    }
.end annotation


# virtual methods
.method public abstract enableBluetooth(Z)I
.end method

.method public abstract getConnectionState()I
.end method

.method public abstract getDeviceMac()Ljava/lang/String;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract registerBluetoothDeviceConnectionStateListener(Lcom/tencent/tai/pal/client/PALBluetoothManager$BluetoothDeviceConnectionStateListener;)V
.end method

.method public abstract unregisterBluetoothDeviceConnectionStateListener(Lcom/tencent/tai/pal/client/PALBluetoothManager$BluetoothDeviceConnectionStateListener;)V
.end method
