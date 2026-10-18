.class public abstract Lcom/autochips/carplayapp/IServiceInterface$Stub;
.super Landroid/os/Binder;
.source "IServiceInterface.java"

# interfaces
.implements Lcom/autochips/carplayapp/IServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/carplayapp/IServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/carplayapp/IServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autochips.carplayapp.IServiceInterface"

.field static final TRANSACTION_onSurfaceAvailableChanged:I = 0x2

.field static final TRANSACTION_onUiVisibilityChanged:I = 0x3

.field static final TRANSACTION_registerActivityCallback:I = 0x6

.field static final TRANSACTION_requestDeviceUI:I = 0x8

.field static final TRANSACTION_requestSiri:I = 0x5

.field static final TRANSACTION_showCarPlay:I = 0x1

.field static final TRANSACTION_unregisterActivityCallback:I = 0x7

.field static final TRANSACTION_updateTouchScreen:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.autochips.carplayapp.IServiceInterface"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autochips/carplayapp/IServiceInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.autochips.carplayapp.IServiceInterface"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/autochips/carplayapp/IServiceInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/autochips/carplayapp/IServiceInterface;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/autochips/carplayapp/IServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/autochips/carplayapp/IServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.autochips.carplayapp.IServiceInterface"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 122
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->requestDeviceUI()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 113
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/carplayapp/IActivityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/carplayapp/IActivityCallback;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->unregisterActivityCallback(Lcom/autochips/carplayapp/IActivityCallback;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 104
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/carplayapp/IActivityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/carplayapp/IActivityCallback;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->registerActivityCallback(Lcom/autochips/carplayapp/IActivityCallback;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 95
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->requestSiri(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 82
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 89
    invoke-virtual {p0, v1, p1, p2}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->updateTouchScreen(ZII)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 73
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    .line 76
    :cond_1
    invoke-virtual {p0, v1}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->onUiVisibilityChanged(Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 55
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    move p4, v2

    goto :goto_1

    :cond_3
    move p4, v1

    .line 66
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    move v1, v2

    .line 67
    :cond_4
    invoke-virtual {p0, p1, p4, v1}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->onSurfaceAvailableChanged(Landroid/view/Surface;ZZ)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->showCarPlay()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
