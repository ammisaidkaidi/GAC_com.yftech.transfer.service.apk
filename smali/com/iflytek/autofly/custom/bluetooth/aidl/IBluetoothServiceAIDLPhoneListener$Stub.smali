.class public abstract Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;
.super Landroid/os/Binder;
.source "IBluetoothServiceAIDLPhoneListener.java"

# interfaces
.implements Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener"

.field static final TRANSACTION_onAccept:I = 0x7

.field static final TRANSACTION_onCall:I = 0x3

.field static final TRANSACTION_onGetBluetoothDevice:I = 0xd

.field static final TRANSACTION_onGetCallLogList:I = 0xe

.field static final TRANSACTION_onGetConnectionState:I = 0x2

.field static final TRANSACTION_onGetContactByName:I = 0x9

.field static final TRANSACTION_onGetContactByNumber:I = 0xa

.field static final TRANSACTION_onGetContactList:I = 0x8

.field static final TRANSACTION_onGetName:I = 0x1

.field static final TRANSACTION_onHang:I = 0x5

.field static final TRANSACTION_onLaunchActivity:I = 0xc

.field static final TRANSACTION_onRecall:I = 0x4

.field static final TRANSACTION_onReject:I = 0x6

.field static final TRANSACTION_onSyncPhoneBook:I = 0xf

.field static final TRANSACTION_onTransfer:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 180
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onSyncPhoneBook(I)I

    move-result p0

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 172
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onGetCallLogList()Ljava/util/List;

    move-result-object p0

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 158
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onGetBluetoothDevice()Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;

    move-result-object p0

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {p0, p3, v2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 166
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 148
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onLaunchActivity(I)I

    move-result p0

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 140
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onTransfer()I

    move-result p0

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 130
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onGetContactByNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 120
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onGetContactByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 112
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onGetContactList()Ljava/util/List;

    move-result-object p0

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 102
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onAccept(Ljava/lang/String;)I

    move-result p0

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 92
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onReject(Ljava/lang/String;)I

    move-result p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 82
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onHang(Ljava/lang/String;)I

    move-result p0

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 74
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onRecall()I

    move-result p0

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 64
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onCall(Ljava/lang/String;)I

    move-result p0

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 56
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onGetConnectionState()I

    move-result p0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 48
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener$Stub;->onGetName()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 43
    :cond_1
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
