.class public abstract Lcom/tencent/taes/remote/api/location/ILocationService$Stub;
.super Landroid/os/Binder;
.source "ILocationService.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/location/ILocationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/location/ILocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/location/ILocationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.taes.remote.api.location.ILocationService"

.field static final TRANSACTION_getCurLocation:I = 0x4

.field static final TRANSACTION_getGpsSignalLevel:I = 0x8

.field static final TRANSACTION_getGpsTime:I = 0x7

.field static final TRANSACTION_getLastValidDistrict:I = 0x5

.field static final TRANSACTION_getLastValidLocation:I = 0x6

.field static final TRANSACTION_getLocationSDKVersion:I = 0xc

.field static final TRANSACTION_getSatellitesNum:I = 0x3

.field static final TRANSACTION_hasSensor:I = 0xa

.field static final TRANSACTION_hasWecarId:I = 0x15

.field static final TRANSACTION_isGpsAvailable:I = 0x2

.field static final TRANSACTION_isSimulateLocation:I = 0x19

.field static final TRANSACTION_isSupportIns:I = 0xb

.field static final TRANSACTION_registerDistrictChangedListener:I = 0xf

.field static final TRANSACTION_registerLocationInfoListener:I = 0xd

.field static final TRANSACTION_registerNemaInfoListener:I = 0x13

.field static final TRANSACTION_registerSatellitesChangedListener:I = 0x11

.field static final TRANSACTION_restartWithWeCarId:I = 0x16

.field static final TRANSACTION_setIsUseCarSpeed:I = 0x9

.field static final TRANSACTION_startLocation:I = 0x1

.field static final TRANSACTION_startSimulateLocation:I = 0x17

.field static final TRANSACTION_stopSimulateLocation:I = 0x18

.field static final TRANSACTION_unregisterDistrictChangedListener:I = 0x10

.field static final TRANSACTION_unregisterLocationInfoListener:I = 0xe

.field static final TRANSACTION_unregisterNemaInfoListener:I = 0x14

.field static final TRANSACTION_unregisterSatellitesChangedListener:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.taes.remote.api.location.ILocationService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/ILocationService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.taes.remote.api.location.ILocationService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/taes/remote/api/location/ILocationService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/taes/remote/api/location/ILocationService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.taes.remote.api.location.ILocationService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 271
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->isSimulateLocation()Z

    move-result p0

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 264
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->stopSimulateLocation()V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 255
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->startSimulateLocation(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 246
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->restartWithWeCarId(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 238
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->hasWecarId()Z

    move-result p0

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 229
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/listener/INemaListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/listener/INemaListener;

    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->unregisterNemaInfoListener(Lcom/tencent/taes/remote/api/location/listener/INemaListener;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 220
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/listener/INemaListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/listener/INemaListener;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->registerNemaInfoListener(Lcom/tencent/taes/remote/api/location/listener/INemaListener;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 211
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;

    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->unregisterSatellitesChangedListener(Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 202
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;

    move-result-object p1

    .line 205
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->registerSatellitesChangedListener(Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 193
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->unregisterDistrictChangedListener(Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 184
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->registerDistrictChangedListener(Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 175
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/listener/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/listener/ILocationListener;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->unregisterLocationInfoListener(Lcom/tencent/taes/remote/api/location/listener/ILocationListener;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 166
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/listener/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/listener/ILocationListener;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->registerLocationInfoListener(Lcom/tencent/taes/remote/api/location/listener/ILocationListener;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 158
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->getLocationSDKVersion()Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 150
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->isSupportIns()Z

    move-result p0

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 142
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->hasSensor()Z

    move-result p0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 133
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    .line 136
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->setIsUseCarSpeed(Z)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 125
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->getGpsSignalLevel()I

    move-result p0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 117
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->getGpsTime()J

    move-result-wide p0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 103
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->getLastValidLocation()Lcom/tencent/taes/remote/api/location/bean/LatLng;

    move-result-object p0

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p0, p3, v2}, Lcom/tencent/taes/remote/api/location/bean/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 89
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->getLastValidDistrict()Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;

    move-result-object p0

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p0, p3, v2}, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 75
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->getCurLocation()Lcom/tencent/taes/remote/api/location/bean/LocationBean;

    move-result-object p0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p0, p3, v2}, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v2

    .line 67
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->getSatellitesNum()I

    move-result p0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 59
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->isGpsAvailable()Z

    move-result p0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 50
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->startLocation(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 45
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
