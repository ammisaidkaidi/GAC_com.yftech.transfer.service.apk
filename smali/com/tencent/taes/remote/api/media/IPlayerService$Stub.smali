.class public abstract Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;
.super Landroid/os/Binder;
.source "IPlayerService.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/media/IPlayerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/media/IPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/media/IPlayerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.taes.remote.api.media.IPlayerService"

.field static final TRANSACTION_addAudioFocusListener:I = 0x2c

.field static final TRANSACTION_addPlayListListener:I = 0x14

.field static final TRANSACTION_addPlayModeListener:I = 0x1f

.field static final TRANSACTION_addSearchListener:I = 0x21

.field static final TRANSACTION_decreaseVolume:I = 0xd

.field static final TRANSACTION_destroy:I = 0x5

.field static final TRANSACTION_getAudioFocus:I = 0x26

.field static final TRANSACTION_getCurrentPosition:I = 0x9

.field static final TRANSACTION_getDuration:I = 0x7

.field static final TRANSACTION_getFirst:I = 0x18

.field static final TRANSACTION_getNextWhenComplete:I = 0x1b

.field static final TRANSACTION_getPlayIndex:I = 0x17

.field static final TRANSACTION_getPlayList:I = 0x11

.field static final TRANSACTION_getPlayListBatch:I = 0x12

.field static final TRANSACTION_getPlayListSize:I = 0x13

.field static final TRANSACTION_getPlayMode:I = 0x23

.field static final TRANSACTION_getUploadPosition:I = 0x8

.field static final TRANSACTION_hasAudioFocus:I = 0x6

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_initTTSPlayer:I = 0x24

.field static final TRANSACTION_isBuffering:I = 0x27

.field static final TRANSACTION_isPlaying:I = 0xb

.field static final TRANSACTION_isSeekable:I = 0x28

.field static final TRANSACTION_isSupportShuffleMode:I = 0x29

.field static final TRANSACTION_likeItem:I = 0x2b

.field static final TRANSACTION_next:I = 0x1a

.field static final TRANSACTION_pause:I = 0x3

.field static final TRANSACTION_play:I = 0x2

.field static final TRANSACTION_pre:I = 0x19

.field static final TRANSACTION_removePlayListener:I = 0x15

.field static final TRANSACTION_removePlayModeListener:I = 0x20

.field static final TRANSACTION_removeSearchListener:I = 0x22

.field static final TRANSACTION_resumeVolume:I = 0xc

.field static final TRANSACTION_seekTo:I = 0xa

.field static final TRANSACTION_setDeviceId:I = 0x25

.field static final TRANSACTION_setPlayIndex:I = 0x16

.field static final TRANSACTION_setPlayList:I = 0xf

.field static final TRANSACTION_setPlayListBatch:I = 0x10

.field static final TRANSACTION_setPlayListener:I = 0xe

.field static final TRANSACTION_setPlayMode:I = 0x1d

.field static final TRANSACTION_setRecommendMode:I = 0x1c

.field static final TRANSACTION_stop:I = 0x4

.field static final TRANSACTION_switchPlayMode:I = 0x1e

.field static final TRANSACTION_updateListItem:I = 0x2a


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.taes.remote.api.media.IPlayerService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/IPlayerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.taes.remote.api.media.IPlayerService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/taes/remote/api/media/IPlayerService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.taes.remote.api.media.IPlayerService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 456
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 447
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/listener/IAudioFocusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/listener/IAudioFocusListener;

    move-result-object p1

    .line 450
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->addAudioFocusListener(Lcom/tencent/taes/remote/api/media/listener/IAudioFocusListener;)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 434
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v3, v2

    .line 441
    :cond_0
    invoke-virtual {p0, p1, p4, v3}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->likeItem(Ljava/lang/String;IZ)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 416
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    sget-object v0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/tencent/taes/remote/api/media/bean/MediaBean;

    .line 428
    :cond_1
    invoke-virtual {p0, p1, p4, v1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->updateListItem(Ljava/lang/String;ILcom/tencent/taes/remote/api/media/bean/MediaBean;)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 408
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->isSupportShuffleMode()Z

    move-result p0

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 400
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->isSeekable()Z

    move-result p0

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 392
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->isBuffering()Z

    move-result p0

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 384
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getAudioFocus()I

    move-result p0

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 375
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->setDeviceId(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 368
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->initTTSPlayer()V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 360
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getPlayMode()I

    move-result p0

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 351
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/listener/ISearchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/listener/ISearchListener;

    move-result-object p1

    .line 354
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->removeSearchListener(Lcom/tencent/taes/remote/api/media/listener/ISearchListener;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 342
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/listener/ISearchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/listener/ISearchListener;

    move-result-object p1

    .line 345
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->addSearchListener(Lcom/tencent/taes/remote/api/media/listener/ISearchListener;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 333
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;

    move-result-object p1

    .line 336
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->removePlayModeListener(Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 324
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;

    move-result-object p1

    .line 327
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->addPlayModeListener(Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 315
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->switchPlayMode(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 304
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->setPlayMode(Ljava/lang/String;I)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 293
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->setRecommendMode(Ljava/lang/String;I)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 283
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 286
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getNextWhenComplete(I)I

    move-result p0

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 273
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 276
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->next(I)I

    move-result p0

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 263
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 266
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->pre(I)I

    move-result p0

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 255
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getFirst()I

    move-result p0

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 247
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getPlayIndex()I

    move-result p0

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 236
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->setPlayIndex(Ljava/lang/String;I)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 227
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/listener/IPlayListListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/listener/IPlayListListener;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->removePlayListener(Lcom/tencent/taes/remote/api/media/listener/IPlayListListener;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 218
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/listener/IPlayListListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/listener/IPlayListListener;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->addPlayListListener(Lcom/tencent/taes/remote/api/media/listener/IPlayListListener;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 210
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getPlayListSize()I

    move-result p0

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 200
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 203
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getPlayListBatch(I)Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 192
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getPlayList()Ljava/util/List;

    move-result-object p0

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 177
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 181
    sget-object p4, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 186
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->setPlayListBatch(Ljava/lang/String;Ljava/util/List;II)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 166
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 170
    sget-object p4, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->setPlayList(Ljava/lang/String;Ljava/util/List;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 157
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/listener/IPlayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/listener/IPlayerListener;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->setPlayListener(Lcom/tencent/taes/remote/api/media/listener/IPlayerListener;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 150
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->decreaseVolume()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 143
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->resumeVolume()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 135
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->isPlaying()Z

    move-result p0

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 126
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->seekTo(J)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 118
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getCurrentPosition()J

    move-result-wide p0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 110
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getUploadPosition()J

    move-result-wide p0

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 102
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->getDuration()J

    move-result-wide p0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 94
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->hasAudioFocus()Z

    move-result p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 87
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->destroy()V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 80
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->stop()V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 71
    :pswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v3, v2

    .line 74
    :cond_2
    invoke-virtual {p0, v3}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->pause(Z)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 62
    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v3, v2

    .line 65
    :cond_3
    invoke-virtual {p0, v3}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->play(Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 51
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 56
    :cond_4
    invoke-virtual {p0, v1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->init(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
