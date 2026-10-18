.class public abstract Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;
.super Landroid/os/Binder;
.source "ITtsService.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/tts/ITtsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/tts/ITtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/tts/ITtsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.taes.remote.api.tts.ITtsService"

.field static final TRANSACTION_addPlayingListener:I = 0x9

.field static final TRANSACTION_addSpeakerListener:I = 0x8

.field static final TRANSACTION_addTtsSpeakerChooseListener:I = 0x20

.field static final TRANSACTION_addTtsSpeakerListener:I = 0xc

.field static final TRANSACTION_getAppendTtsSpeakerList:I = 0x12

.field static final TRANSACTION_getAvailableTtsSpeaker:I = 0xf

.field static final TRANSACTION_getChooseTtsId:I = 0x1e

.field static final TRANSACTION_getChooseTtsName:I = 0x1f

.field static final TRANSACTION_getCustomSpeaker:I = 0x19

.field static final TRANSACTION_getQrCodeUrl:I = 0x11

.field static final TRANSACTION_getSpeaker:I = 0x7

.field static final TRANSACTION_getTtsRecordPcmValue:I = 0x16

.field static final TRANSACTION_getTtsSpeaker:I = 0xb

.field static final TRANSACTION_getTtsSpeakerName:I = 0x1c

.field static final TRANSACTION_getVersion:I = 0x10

.field static final TRANSACTION_initTts:I = 0x1

.field static final TRANSACTION_isInited:I = 0x2

.field static final TRANSACTION_isOfficialTtsSpeaker:I = 0xe

.field static final TRANSACTION_playTts:I = 0x3

.field static final TRANSACTION_playTtsByAudioAttribute:I = 0x4

.field static final TRANSACTION_registerInitListener:I = 0x1a

.field static final TRANSACTION_registerTtsSpeakerNotification:I = 0x13

.field static final TRANSACTION_setAppendTtsSpeakerPath:I = 0xd

.field static final TRANSACTION_setChooseTts:I = 0x1d

.field static final TRANSACTION_setCustomSpeaker:I = 0x18

.field static final TRANSACTION_setOfficialSpeaker:I = 0x17

.field static final TRANSACTION_setSpeaker:I = 0x6

.field static final TRANSACTION_setTtsRecordPcm:I = 0x15

.field static final TRANSACTION_setTtsSpeaker:I = 0xa

.field static final TRANSACTION_setTtsSpeakerInfo:I = 0x1b

.field static final TRANSACTION_stopPlay:I = 0x5

.field static final TRANSACTION_unRegisterTtsSpeakerNotification:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.taes.remote.api.tts.ITtsService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/ITtsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.taes.remote.api.tts.ITtsService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/taes/remote/api/tts/ITtsService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.tencent.taes.remote.api.tts.ITtsService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 355
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 346
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseCallback;

    move-result-object p1

    .line 349
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->addTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseCallback;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 338
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getChooseTtsName()Ljava/lang/String;

    move-result-object p0

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 330
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getChooseTtsId()Ljava/lang/String;

    move-result-object p0

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 319
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->setChooseTts(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 311
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getTtsSpeakerName()Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 300
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->setTtsSpeakerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 291
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback;

    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->registerInitListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 283
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getCustomSpeaker()Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 274
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->setCustomSpeaker(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 267
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->setOfficialSpeaker()V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 259
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getTtsRecordPcmValue()Z

    move-result p0

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 250
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    .line 253
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->setTtsRecordPcm(Z)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 243
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->unRegisterTtsSpeakerNotification()V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 234
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/tts/listener/ITtsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/ITtsResponseCallback;

    move-result-object p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->registerTtsSpeakerNotification(Lcom/tencent/taes/remote/api/tts/listener/ITtsResponseCallback;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 221
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/tts/listener/ITtsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/ITtsResponseCallback;

    move-result-object p2

    .line 228
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getAppendTtsSpeakerList(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/ITtsResponseCallback;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 208
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/tts/listener/IQrCodeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/IQrCodeCallback;

    move-result-object p2

    .line 215
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getQrCodeUrl(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/IQrCodeCallback;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 200
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getVersion()Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 192
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getAvailableTtsSpeaker()[Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v2

    .line 184
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->isOfficialTtsSpeaker()Z

    move-result p0

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 174
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->setAppendTtsSpeakerPath(Ljava/lang/String;)I

    move-result p0

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 165
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->addTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 157
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getTtsSpeaker()Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 148
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->setTtsSpeaker(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 139
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/tts/listener/IPlayingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/IPlayingCallback;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->addPlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingCallback;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 130
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/tts/listener/ISpeakerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/ISpeakerCallback;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->addSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ISpeakerCallback;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 122
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->getSpeaker()I

    move-result p0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 113
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->setSpeaker(I)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 104
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->stopPlay(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 83
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioAttributes;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 97
    :goto_0
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->playTtsByAudioAttribute(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback;Landroid/media/AudioAttributes;)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 65
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback;

    move-result-object v7

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    move-object v3, p0

    .line 76
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->playTts(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback;Z)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 57
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->isInited()Z

    move-result p0

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 48
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->initTts(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
