.class public abstract Lcom/tencent/mossbiz/IWeCarMasService$Stub;
.super Landroid/os/Binder;
.source "IWeCarMasService.java"

# interfaces
.implements Lcom/tencent/mossbiz/IWeCarMasService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mossbiz/IWeCarMasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mossbiz/IWeCarMasService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.mossbiz.IWeCarMasService"

.field static final TRANSACTION_addCollectionWithAppId:I = 0x12

.field static final TRANSACTION_addPlayListener:I = 0x32

.field static final TRANSACTION_addRecentApp:I = 0xf

.field static final TRANSACTION_addRecentAppWithTime:I = 0x10

.field static final TRANSACTION_addSearchHistory:I = 0x17

.field static final TRANSACTION_clearAllAuth:I = 0x7

.field static final TRANSACTION_clearAuth:I = 0x6

.field static final TRANSACTION_clearData:I = 0x44

.field static final TRANSACTION_clearRecentAppList:I = 0xc

.field static final TRANSACTION_clearSearchHistory:I = 0x16

.field static final TRANSACTION_getAllAuthInfo:I = 0x9

.field static final TRANSACTION_getAuth:I = 0x8

.field static final TRANSACTION_getChannelId:I = 0x21

.field static final TRANSACTION_getCollectedAppIdList:I = 0x13

.field static final TRANSACTION_getLabelCategory:I = 0x1c

.field static final TRANSACTION_getMossCategoryList:I = 0x1b

.field static final TRANSACTION_getMossContextEnv:I = 0x26

.field static final TRANSACTION_getMossEvn:I = 0x24

.field static final TRANSACTION_getMossLabel:I = 0x1d

.field static final TRANSACTION_getMossTestPoiList:I = 0x31

.field static final TRANSACTION_getNewLabelCategory:I = 0x1f

.field static final TRANSACTION_getRecentAppAndTimeList:I = 0xb

.field static final TRANSACTION_getRecentAppList:I = 0xa

.field static final TRANSACTION_getSearchHistoryList:I = 0x15

.field static final TRANSACTION_hasAuth:I = 0x5

.field static final TRANSACTION_initAudioListener:I = 0x3e

.field static final TRANSACTION_initAudioService:I = 0x3c

.field static final TRANSACTION_isDisplayDebugLog:I = 0x2a

.field static final TRANSACTION_isDisplayLog:I = 0x28

.field static final TRANSACTION_isIsEnableVConsole:I = 0x23

.field static final TRANSACTION_isLogin:I = 0x30

.field static final TRANSACTION_isMossAppExists:I = 0x3f

.field static final TRANSACTION_isRecentNeedRefresh:I = 0xe

.field static final TRANSACTION_loadAllAppsFromNet:I = 0x18

.field static final TRANSACTION_mCategoryId:I = 0x42

.field static final TRANSACTION_mossInfo:I = 0x41

.field static final TRANSACTION_mossSdkVersion:I = 0x2d

.field static final TRANSACTION_musicInfo:I = 0x3d

.field static final TRANSACTION_onAudioNext:I = 0x3a

.field static final TRANSACTION_onAudioPause:I = 0x35

.field static final TRANSACTION_onAudioPlayer:I = 0x34

.field static final TRANSACTION_onAudioPre:I = 0x3b

.field static final TRANSACTION_onAudioState:I = 0x36

.field static final TRANSACTION_onAudioStop:I = 0x37

.field static final TRANSACTION_onPlayer:I = 0x33

.field static final TRANSACTION_onReport:I = 0x39

.field static final TRANSACTION_openMossApp:I = 0x2c

.field static final TRANSACTION_openMossBySemantics:I = 0x40

.field static final TRANSACTION_openPushInfo:I = 0x45

.field static final TRANSACTION_playTts:I = 0x2e

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_removeCollectionWithAppId:I = 0x14

.field static final TRANSACTION_removeRecentApp:I = 0xd

.field static final TRANSACTION_requestLoginQrCode:I = 0x2f

.field static final TRANSACTION_saveRecentAppIdListToDisk:I = 0x11

.field static final TRANSACTION_searchAppCategoryFromNet:I = 0x1a

.field static final TRANSACTION_searchAppsFromNet:I = 0x19

.field static final TRANSACTION_searchMossInfoFromeLabelID:I = 0x1e

.field static final TRANSACTION_seekBackgroundAudio:I = 0x38

.field static final TRANSACTION_setAuth:I = 0x4

.field static final TRANSACTION_setChannelId:I = 0x20

.field static final TRANSACTION_setDisplayDebugLog:I = 0x2b

.field static final TRANSACTION_setDisplayLog:I = 0x29

.field static final TRANSACTION_setIsEnableVConsole:I = 0x22

.field static final TRANSACTION_setModel:I = 0x43

.field static final TRANSACTION_setMossContextEnv:I = 0x27

.field static final TRANSACTION_setMossEvn:I = 0x25

.field static final TRANSACTION_test:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.mossbiz.IWeCarMasService"

    .line 19
    invoke-virtual {p0, p0, v0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.mossbiz.IWeCarMasService"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Lcom/tencent/mossbiz/IWeCarMasService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/tencent/mossbiz/IWeCarMasService;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/tencent/mossbiz/IWeCarMasService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.mossbiz.IWeCarMasService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 705
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 694
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v1, v2

    .line 699
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->openPushInfo(Ljava/lang/String;Z)V

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 687
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->clearData()V

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 678
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 681
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->setModel(I)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 670
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->mCategoryId()Ljava/lang/String;

    move-result-object p0

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 662
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->mossInfo()Ljava/lang/String;

    move-result-object p0

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 647
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p2

    .line 656
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->openMossBySemantics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 637
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->isMossAppExists(Ljava/lang/String;)Z

    move-result p0

    .line 641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 628
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarMasAudioCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasAudioCallback;

    move-result-object p1

    .line 631
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->initAudioListener(Lcom/tencent/mossbiz/IWeCarMasAudioCallback;)V

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 620
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->musicInfo()Ljava/lang/String;

    move-result-object p0

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 611
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarAudioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarAudioService;

    move-result-object p1

    .line 614
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->initAudioService(Lcom/tencent/mossbiz/IWeCarAudioService;)V

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 604
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->onAudioPre()V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 597
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->onAudioNext()V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 588
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p1

    .line 591
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->onReport(Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 578
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 581
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->seekBackgroundAudio(I)Z

    move-result p0

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 570
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->onAudioStop()Z

    move-result p0

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 562
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->onAudioState()Z

    move-result p0

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 554
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->onAudioPause()Z

    move-result p0

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 544
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->onAudioPlayer(Ljava/lang/String;)Z

    move-result p0

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 536
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->onPlayer()Z

    move-result p0

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 527
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarMasAudioCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasAudioCallback;

    move-result-object p1

    .line 530
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->addPlayListener(Lcom/tencent/mossbiz/IWeCarMasAudioCallback;)V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 516
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p2

    .line 521
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getMossTestPoiList(Ljava/lang/String;Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 508
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->isLogin()Z

    move-result p0

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 497
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p2

    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->requestLoginQrCode(Ljava/lang/String;Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 488
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->playTts(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 480
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->mossSdkVersion()Ljava/lang/String;

    move-result-object p0

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 468
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->openMossApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 459
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    .line 462
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->setDisplayDebugLog(Z)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 451
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->isDisplayDebugLog()Z

    move-result p0

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 442
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    .line 445
    :cond_2
    invoke-virtual {p0, v1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->setDisplayLog(Z)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 434
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->isDisplayLog()Z

    move-result p0

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 425
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 428
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->setMossContextEnv(I)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 417
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getMossContextEnv()I

    move-result p0

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 408
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 411
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->setMossEvn(I)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 400
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getMossEvn()I

    move-result p0

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 392
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->isIsEnableVConsole()Z

    move-result p0

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 383
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    .line 386
    :cond_3
    invoke-virtual {p0, v1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->setIsEnableVConsole(Z)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 375
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getChannelId()Ljava/lang/String;

    move-result-object p0

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 366
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->setChannelId(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 357
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getNewLabelCategory(Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 341
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 344
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->searchMossInfoFromeLabelID(I)Landroid/os/Bundle;

    move-result-object p0

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 347
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {p0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 351
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 327
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getMossLabel()Landroid/os/Bundle;

    move-result-object p0

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_5

    .line 331
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    invoke-virtual {p0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 335
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 316
    :pswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p2

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getLabelCategory(Ljava/lang/String;Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 307
    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p1

    .line 310
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getMossCategoryList(Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 294
    :pswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p2

    .line 301
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->searchAppCategoryFromNet(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 279
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p2

    .line 288
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->searchAppsFromNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 270
    :pswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasCallback;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->loadAllAppsFromNet(Lcom/tencent/mossbiz/IWeCarMasCallback;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 261
    :pswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->addSearchHistory(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 254
    :pswitch_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->clearSearchHistory()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 246
    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getSearchHistoryList()Ljava/util/List;

    move-result-object p0

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    .line 237
    :pswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->removeCollectionWithAppId(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 229
    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getCollectedAppIdList()Ljava/util/List;

    move-result-object p0

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    .line 220
    :pswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->addCollectionWithAppId(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 213
    :pswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->saveRecentAppIdListToDisk()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 202
    :pswitch_35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 207
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->addRecentAppWithTime(Ljava/lang/String;J)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 193
    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->addRecentApp(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 185
    :pswitch_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->isRecentNeedRefresh()Z

    move-result p0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 175
    :pswitch_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->removeRecentApp(Ljava/lang/String;)Z

    move-result p0

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 168
    :pswitch_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->clearRecentAppList()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 160
    :pswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getRecentAppAndTimeList()Ljava/util/Map;

    move-result-object p0

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v2

    .line 152
    :pswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getRecentAppList()Ljava/util/List;

    move-result-object p0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    .line 144
    :pswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getAllAuthInfo()Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 130
    :pswitch_3d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->getAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v2

    .line 123
    :pswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->clearAllAuth()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 110
    :pswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->clearAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 94
    :pswitch_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->hasAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 79
    :pswitch_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->setAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 70
    :pswitch_42
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarMasServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasServiceCallback;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->test(Lcom/tencent/mossbiz/IWeCarMasServiceCallback;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 61
    :pswitch_43
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarMasServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasServiceCallback;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->unregisterCallback(Lcom/tencent/mossbiz/IWeCarMasServiceCallback;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 52
    :pswitch_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mossbiz/IWeCarMasServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasServiceCallback;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->registerCallback(Lcom/tencent/mossbiz/IWeCarMasServiceCallback;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 47
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
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
