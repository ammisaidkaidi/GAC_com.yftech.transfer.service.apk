.class public Landroid/hardware/audioadapter/V1_0/DspManager;
.super Ljava/lang/Object;
.source "DspManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# static fields
.field public static final CHANNEL_MEDIA:I = 0x1

.field public static final CHANNEL_NAVI:I = 0x3

.field public static final CHANNEL_PHONE:I = 0x4

.field public static final CHANNEL_RADAR:I = 0x6

.field public static final CHANNEL_RADIO:I = 0x2

.field public static final CHANNEL_TBOX:I = 0x7

.field public static final CHANNEL_TTS:I = 0x5

.field public static final DTS_SOUND_POSITION_ALL:I = 0x2

.field public static final DTS_SOUND_POSITION_FRONT:I = 0x0

.field public static final DTS_SOUND_POSITION_REAR:I = 0x1

.field public static final DTS_TYPE_DEFAULT:I = 0x0

.field public static final DTS_TYPE_SOOTHING:I = 0x3

.field public static final DTS_TYPE_STAGE:I = 0x4

.field public static final DTS_TYPE_SUPER_BASS:I = 0x2

.field public static final DTS_TYPE_VOICE:I = 0x1

.field public static final EQ_TYPE_BASS_BOOST:I = 0xa

.field public static final EQ_TYPE_CLASSIC:I = 0x8

.field public static final EQ_TYPE_CUSTOM:I = 0x1

.field public static final EQ_TYPE_DANCE:I = 0x7

.field public static final EQ_TYPE_DEFAULT:I = 0x0

.field public static final EQ_TYPE_FOLK:I = 0x3

.field public static final EQ_TYPE_JAZZ:I = 0x5

.field public static final EQ_TYPE_POP:I = 0x6

.field public static final EQ_TYPE_ROCK:I = 0x4

.field public static final EQ_TYPE_TREBLE_BOOST:I = 0x9

.field public static final EQ_TYPE_VOICE:I = 0x2

.field public static final SCENE_SOUND_EFFECT_KTV:I = 0x1

.field public static final SCENE_SOUND_EFFECT_MOVIE:I = 0x0

.field public static final SCENE_SOUND_EFFECT_NONE:I = -0x1

.field private static SELF:Landroid/hardware/audioadapter/V1_0/DspManager; = null

.field private static final TAG:Ljava/lang/String; = "DspManager"

.field public static final VOICE_SOUND_SPEAKER_FRONT_LEFT:I = 0x1

.field public static final VOICE_SOUND_SPEAKER_FRONT_RIGHT:I = 0x2

.field public static final VOICE_SOUND_SPEAKER_REAR_LEFT:I = 0x4

.field public static final VOICE_SOUND_SPEAKER_REAR_RIGHT:I = 0x8


# instance fields
.field private mService:Landroid/hardware/audioadapter/V1_0/IDspService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/audioadapter/V1_0/DspManager;
    .locals 1

    .line 155
    sget-object v0, Landroid/hardware/audioadapter/V1_0/DspManager;->SELF:Landroid/hardware/audioadapter/V1_0/DspManager;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/hardware/audioadapter/V1_0/DspManager;

    invoke-direct {v0}, Landroid/hardware/audioadapter/V1_0/DspManager;-><init>()V

    sput-object v0, Landroid/hardware/audioadapter/V1_0/DspManager;->SELF:Landroid/hardware/audioadapter/V1_0/DspManager;

    .line 158
    :cond_0
    sget-object v0, Landroid/hardware/audioadapter/V1_0/DspManager;->SELF:Landroid/hardware/audioadapter/V1_0/DspManager;

    return-object v0
.end method

.method private getService()Landroid/hardware/audioadapter/V1_0/IDspService;
    .locals 4

    .line 166
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/DspManager;->mService:Landroid/hardware/audioadapter/V1_0/IDspService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/DspManager;->mService:Landroid/hardware/audioadapter/V1_0/IDspService;

    invoke-interface {v0}, Landroid/hardware/audioadapter/V1_0/IDspService;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-static {v0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getService(Z)Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Landroid/hardware/audioadapter/V1_0/IDspService;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-interface {v1, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 170
    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/DspManager;->mService:Landroid/hardware/audioadapter/V1_0/IDspService;

    const-string v0, "DspManager"

    const-string v1, "get service"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/hardware/audioadapter/V1_0/DspManager;->mService:Landroid/hardware/audioadapter/V1_0/IDspService;

    return-object p0
.end method


# virtual methods
.method public closeChannel(I)Z
    .locals 0

    .line 206
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->closeChannel(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getBandMaxQ()[F
    .locals 4

    const/4 v0, 0x0

    .line 535
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getBandMaxQ()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 536
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 539
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 540
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 541
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 545
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getBandMaxValue()[F
    .locals 4

    const/4 v0, 0x0

    .line 327
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getBandMaxValue()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 328
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 332
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 333
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 337
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getBandMinQ()[F
    .locals 4

    const/4 v0, 0x0

    .line 514
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getBandMinQ()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 515
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 519
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 520
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 524
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getBandMinValue()[F
    .locals 4

    const/4 v0, 0x0

    .line 348
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getBandMinValue()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 349
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 353
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 354
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 358
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getBands()[I
    .locals 4

    const/4 v0, 0x0

    .line 369
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getBands()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 370
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 374
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 375
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 379
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getChannelVolume(I)F
    .locals 0

    .line 235
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->getChannelVolume(I)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getDelayMaxValue()F
    .locals 0

    .line 416
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getDelayMaxValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 418
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getDelayMinValue()F
    .locals 0

    .line 429
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getDelayMinValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 431
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getDelayPrecision()F
    .locals 0

    .line 442
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getDelayPrecision()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 444
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getEQTypeBandQs(I)[F
    .locals 3

    const/4 v0, 0x0

    .line 557
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->getEQTypeBandQs(I)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 558
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 561
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [F

    const/4 v1, 0x0

    .line 562
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 563
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 567
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getEQTypeBandValues(I)[F
    .locals 3

    const/4 v0, 0x0

    .line 306
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->getEQTypeBandValues(I)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 307
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [F

    const/4 v1, 0x0

    .line 311
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 312
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getVoiceSoundSpeaker()I
    .locals 0

    .line 600
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IDspService;->getVoiceSoundSpeaker()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 602
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public isChannelMute(I)Z
    .locals 0

    .line 264
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->isChannelMute(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 266
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public openChannel(I)Z
    .locals 0

    .line 192
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->openChannel(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public serviceDied(J)V
    .locals 3

    const-string v0, "DspManager"

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceDied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Landroid/hardware/audioadapter/V1_0/DspManager;->mService:Landroid/hardware/audioadapter/V1_0/IDspService;

    return-void
.end method

.method public setBalance(FFFF)Z
    .locals 0

    .line 617
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/audioadapter/V1_0/IDspService;->setBalance(FFFF)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 619
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setBalanceXY(FF)Z
    .locals 0

    .line 632
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IDspService;->setBalanceXY(FF)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 634
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setBandValue([F[F)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 395
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 396
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 397
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 400
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 401
    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 403
    :cond_2
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->setBandValue(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 405
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public setChannelMute(IZ)Z
    .locals 0

    .line 250
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IDspService;->setChannelMute(IZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setChannelVolume(IF)Z
    .locals 0

    .line 221
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IDspService;->setChannelVolume(IF)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setDelayValue(FFFF)Z
    .locals 0

    .line 459
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/audioadapter/V1_0/IDspService;->setDelayValue(FFFF)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 461
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setDtsEnable(Z)Z
    .locals 0

    .line 473
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->setDtsEnable(Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 475
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setDtsSoundPosition(I)Z
    .locals 0

    .line 501
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->setDtsSoundPosition(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 503
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setDtsType(I)Z
    .locals 0

    .line 487
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->setDtsType(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 489
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setEQEnable(Z)Z
    .locals 0

    .line 278
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->setEQEnable(Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 280
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setEQType(I)Z
    .locals 0

    .line 292
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->setEQType(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setSceneSoundEffectType(I)Z
    .locals 0

    .line 646
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->setSceneSoundEffectType(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 648
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setVoiceSoundSpeaker(I)Z
    .locals 0

    .line 583
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/DspManager;->getService()Landroid/hardware/audioadapter/V1_0/IDspService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService;->setVoiceSoundSpeaker(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 585
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
