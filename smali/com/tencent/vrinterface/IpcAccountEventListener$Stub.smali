.class public abstract Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;
.super Landroid/os/Binder;
.source "IpcAccountEventListener.java"

# interfaces
.implements Lcom/tencent/vrinterface/IpcAccountEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vrinterface/IpcAccountEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcAccountEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.vrinterface.IpcAccountEventListener"

.field static final TRANSACTION_onWXAccountBind:I = 0x2

.field static final TRANSACTION_onWXAccountUnbind:I = 0x3

.field static final TRANSACTION_onWXAccountUpdate:I = 0x1

.field static final TRANSACTION_onWeCarIdChanged:I = 0x5

.field static final TRANSACTION_onWeCarIdRegistered:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.vrinterface.IpcAccountEventListener"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcAccountEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.vrinterface.IpcAccountEventListener"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/vrinterface/IpcAccountEventListener;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/vrinterface/IpcAccountEventListener;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.vrinterface.IpcAccountEventListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 113
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    sget-object p1, Lcom/tencent/vrcommon/account/VrAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/vrcommon/account/VrAccount;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 122
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 123
    sget-object p4, Lcom/tencent/vrcommon/account/VrAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/tencent/vrcommon/account/VrAccount;

    .line 128
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;->onWeCarIdChanged(Lcom/tencent/vrcommon/account/VrAccount;Lcom/tencent/vrcommon/account/VrAccount;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 99
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    sget-object p1, Lcom/tencent/vrcommon/account/VrAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/tencent/vrcommon/account/VrAccount;

    .line 107
    :cond_2
    invoke-virtual {p0, v1}, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;->onWeCarIdRegistered(Lcom/tencent/vrcommon/account/VrAccount;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 85
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 88
    sget-object p1, Lcom/tencent/vrcommon/account/VrAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/tencent/vrcommon/account/VrAccount;

    .line 93
    :cond_3
    invoke-virtual {p0, v1}, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;->onWXAccountUnbind(Lcom/tencent/vrcommon/account/VrAccount;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 71
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 74
    sget-object p1, Lcom/tencent/vrcommon/account/VrAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/tencent/vrcommon/account/VrAccount;

    .line 79
    :cond_4
    invoke-virtual {p0, v1}, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;->onWXAccountBind(Lcom/tencent/vrcommon/account/VrAccount;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 50
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 53
    sget-object p1, Lcom/tencent/vrcommon/account/VrAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/vrcommon/account/VrAccount;

    goto :goto_1

    :cond_5
    move-object p1, v1

    .line 59
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    .line 60
    sget-object p4, Lcom/tencent/vrcommon/account/VrAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/tencent/vrcommon/account/VrAccount;

    .line 65
    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;->onWXAccountUpdate(Lcom/tencent/vrcommon/account/VrAccount;Lcom/tencent/vrcommon/account/VrAccount;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 45
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
