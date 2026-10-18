.class public abstract Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;
.super Landroid/os/Binder;
.source "IBluetoothServiceAIDL.java"

# interfaces
.implements Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDL"

.field static final TRANSACTION_notifyA2DPConnectStatus:I = 0x5

.field static final TRANSACTION_notifyAvrcpPosition:I = 0x7

.field static final TRANSACTION_notifyCallLogNumber:I = 0x9

.field static final TRANSACTION_notifyCallStatusChanged:I = 0xd

.field static final TRANSACTION_notifyCallTransferToPhone:I = 0xc

.field static final TRANSACTION_notifyConnectStatus:I = 0xe

.field static final TRANSACTION_notifyContactsNumber:I = 0x8

.field static final TRANSACTION_notifyFlyMediaInfoList:I = 0xf

.field static final TRANSACTION_notifyMediaInfo:I = 0x6

.field static final TRANSACTION_notifyMusicStart:I = 0x3

.field static final TRANSACTION_notifyMusicStop:I = 0x4

.field static final TRANSACTION_notifyPhoneCallLog:I = 0xa

.field static final TRANSACTION_notifyPhoneContact:I = 0xb

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDL"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDL"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDL"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 197
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    sget-object p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyFlyMediaInfoList(Ljava/util/List;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 188
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyConnectStatus(I)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 177
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyCallStatusChanged(ILjava/lang/String;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 168
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    .line 171
    :cond_0
    invoke-virtual {p0, v1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyCallTransferToPhone(Z)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 152
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    sget-object p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;

    .line 161
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    .line 162
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyPhoneContact(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;Z)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 136
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 139
    sget-object p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;

    .line 145
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v1, v2

    .line 146
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyPhoneCallLog(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;Z)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 127
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyCallLogNumber(I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 118
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyContactsNumber(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 109
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyAvrcpPosition(J)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 95
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 98
    sget-object p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;

    .line 103
    :cond_5
    invoke-virtual {p0, v3}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyMediaInfo(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 86
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyA2DPConnectStatus(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 79
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyMusicStop()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 72
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->notifyMusicStart()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 60
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->unregisterListener(Landroid/os/IBinder;I)I

    move-result p0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 48
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->registerListener(Landroid/os/IBinder;I)I

    move-result p0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 43
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
