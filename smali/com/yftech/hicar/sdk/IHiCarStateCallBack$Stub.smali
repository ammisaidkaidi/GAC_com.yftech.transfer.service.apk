.class public abstract Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;
.super Landroid/os/Binder;
.source "IHiCarStateCallBack.java"

# interfaces
.implements Lcom/yftech/hicar/sdk/IHiCarStateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/hicar/sdk/IHiCarStateCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yftech.hicar.sdk.IHiCarStateCallBack"

.field static final TRANSACTION_callStateChange:I = 0x3

.field static final TRANSACTION_connectStateChange:I = 0x2

.field static final TRANSACTION_deviceListChange:I = 0x5

.field static final TRANSACTION_initSuccess:I = 0x1

.field static final TRANSACTION_reConnectStateChange:I = 0x6

.field static final TRANSACTION_voiceStateChange:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yftech.hicar.sdk.IHiCarStateCallBack"

    .line 42
    invoke-virtual {p0, p0, v0}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yftech/hicar/sdk/IHiCarStateCallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yftech.hicar.sdk.IHiCarStateCallBack"

    .line 53
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    instance-of v1, v0, Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yftech/hicar/sdk/IHiCarStateCallBack;
    .locals 1

    .line 257
    sget-object v0, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub$Proxy;->sDefaultImpl:Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yftech/hicar/sdk/IHiCarStateCallBack;)Z
    .locals 1

    .line 247
    sget-object v0, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub$Proxy;->sDefaultImpl:Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 251
    sput-object p0, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub$Proxy;->sDefaultImpl:Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 248
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string v0, "com.yftech.hicar.sdk.IHiCarStateCallBack"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 111
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p0, v1, p1}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;->reConnectStateChange(ZLjava/lang/String;)V

    return v2

    .line 105
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;->deviceListChange()V

    return v2

    .line 97
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    .line 100
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;->voiceStateChange(Z)V

    return v2

    .line 89
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;->callStateChange(I)V

    return v2

    .line 81
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    .line 84
    :cond_2
    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;->connectStateChange(Z)V

    return v2

    .line 75
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;->initSuccess()V

    return v2

    .line 70
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
