.class public abstract Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;
.super Landroid/os/Binder;
.source "IHiCarInterface.java"

# interfaces
.implements Lcom/yftech/hicar/sdk/IHiCarInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/hicar/sdk/IHiCarInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/hicar/sdk/IHiCarInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yftech.hicar.sdk.IHiCarInterface"

.field static final TRANSACTION_callState:I = 0x3

.field static final TRANSACTION_callStateChange:I = 0x13

.field static final TRANSACTION_callSwitch:I = 0xd

.field static final TRANSACTION_connectState:I = 0x2

.field static final TRANSACTION_connectStateChange:I = 0x12

.field static final TRANSACTION_deleteDevice:I = 0x6

.field static final TRANSACTION_deviceListChange:I = 0x15

.field static final TRANSACTION_disConnectDevice:I = 0x7

.field static final TRANSACTION_enableUSB:I = 0x8

.field static final TRANSACTION_getDeviceList:I = 0x4

.field static final TRANSACTION_initSuccess:I = 0x11

.field static final TRANSACTION_isInitSuccess:I = 0x1

.field static final TRANSACTION_isVoiceWakeUp:I = 0x5

.field static final TRANSACTION_mainPageSwitch:I = 0xe

.field static final TRANSACTION_mediaSwitch:I = 0x9

.field static final TRANSACTION_nextMedia:I = 0xb

.field static final TRANSACTION_previousMedia:I = 0xa

.field static final TRANSACTION_registerCallBack:I = 0xf

.field static final TRANSACTION_requestNewConnect:I = 0x18

.field static final TRANSACTION_requestReConnect:I = 0x17

.field static final TRANSACTION_supportWireless:I = 0x16

.field static final TRANSACTION_unregisterCallBack:I = 0x10

.field static final TRANSACTION_voiceStateChange:I = 0x14

.field static final TRANSACTION_voiceSwitch:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yftech.hicar.sdk.IHiCarInterface"

    .line 111
    invoke-virtual {p0, p0, v0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yftech/hicar/sdk/IHiCarInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yftech.hicar.sdk.IHiCarInterface"

    .line 122
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    instance-of v1, v0, Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v1, :cond_1

    .line 124
    check-cast v0, Lcom/yftech/hicar/sdk/IHiCarInterface;

    return-object v0

    .line 126
    :cond_1
    new-instance v0, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yftech/hicar/sdk/IHiCarInterface;
    .locals 1

    .line 904
    sget-object v0, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub$Proxy;->sDefaultImpl:Lcom/yftech/hicar/sdk/IHiCarInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yftech/hicar/sdk/IHiCarInterface;)Z
    .locals 1

    .line 894
    sget-object v0, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub$Proxy;->sDefaultImpl:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 898
    sput-object p0, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub$Proxy;->sDefaultImpl:Lcom/yftech/hicar/sdk/IHiCarInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 895
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

    const-string v0, "com.yftech.hicar.sdk.IHiCarInterface"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 361
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 353
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->requestNewConnect()Z

    move-result p0

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 343
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->requestReConnect(Ljava/lang/String;)Z

    move-result p0

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 335
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->supportWireless()Z

    move-result p0

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 328
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->deviceListChange()V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 319
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    .line 322
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->voiceStateChange(Z)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 310
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 313
    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->callStateChange(I)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 301
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    .line 304
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->connectStateChange(Z)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 294
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->initSuccess()V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 285
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    move-result-object p1

    .line 288
    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->unregisterCallBack(Lcom/yftech/hicar/sdk/IHiCarStateCallBack;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 276
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/hicar/sdk/IHiCarStateCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    move-result-object p1

    .line 279
    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->registerCallBack(Lcom/yftech/hicar/sdk/IHiCarStateCallBack;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 266
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->mainPageSwitch(Ljava/lang/String;)Z

    move-result p0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 256
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    .line 259
    :cond_2
    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->callSwitch(Z)Z

    move-result p0

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 246
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    .line 249
    :cond_3
    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->voiceSwitch(Z)Z

    move-result p0

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 238
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->nextMedia()Z

    move-result p0

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 230
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->previousMedia()Z

    move-result p0

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 220
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v1, v2

    .line 223
    :cond_4
    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->mediaSwitch(Z)Z

    move-result p0

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 210
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v1, v2

    .line 213
    :cond_5
    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->enableUSB(Z)Z

    move-result p0

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 200
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v1, v2

    .line 203
    :cond_6
    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->disConnectDevice(Z)Z

    move-result p0

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 190
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->deleteDevice(Ljava/lang/String;)Z

    move-result p0

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 182
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->isVoiceWakeUp()Z

    move-result p0

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 174
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->getDeviceList()Ljava/util/List;

    move-result-object p0

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 166
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->callState()I

    move-result p0

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 152
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->connectState()Lcom/yftech/hicar/sdk/ConnectStateEntity;

    move-result-object p0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_7

    .line 156
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {p0, p3, v2}, Lcom/yftech/hicar/sdk/ConnectStateEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 160
    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 144
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->isInitSuccess()Z

    move-result p0

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 139
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
