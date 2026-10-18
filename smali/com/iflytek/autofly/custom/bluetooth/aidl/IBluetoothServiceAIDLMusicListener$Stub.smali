.class public abstract Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;
.super Landroid/os/Binder;
.source "IBluetoothServiceAIDLMusicListener.java"

# interfaces
.implements Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener"

.field static final TRANSACTION_onCloseA2dpStream:I = 0xb

.field static final TRANSACTION_onConnectA2DP:I = 0x1

.field static final TRANSACTION_onDisconnectA2DP:I = 0x2

.field static final TRANSACTION_onGetA2DPConnectionState:I = 0x3

.field static final TRANSACTION_onGetFlyMediaInfoList:I = 0xc

.field static final TRANSACTION_onGetMusicStatus:I = 0x6

.field static final TRANSACTION_onNextMusic:I = 0x8

.field static final TRANSACTION_onOpenA2dpStream:I = 0xa

.field static final TRANSACTION_onPause:I = 0x5

.field static final TRANSACTION_onPlay:I = 0x4

.field static final TRANSACTION_onPreviousMusic:I = 0x9

.field static final TRANSACTION_onStopMusic:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 136
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onGetFlyMediaInfoList()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 128
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onCloseA2dpStream()I

    move-result p0

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 120
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onOpenA2dpStream()I

    move-result p0

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 112
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onPreviousMusic()I

    move-result p0

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 104
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onNextMusic()I

    move-result p0

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 96
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onStopMusic()I

    move-result p0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 88
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onGetMusicStatus()I

    move-result p0

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 80
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onPause()I

    move-result p0

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 72
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onPlay()I

    move-result p0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 64
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onGetA2DPConnectionState()I

    move-result p0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 56
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onDisconnectA2DP()I

    move-result p0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 48
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener$Stub;->onConnectA2DP()I

    move-result p0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
