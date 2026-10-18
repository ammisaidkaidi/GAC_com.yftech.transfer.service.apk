.class public abstract Lcom/tencent/vrinterface/IVrLogicService$Stub;
.super Landroid/os/Binder;
.source "IVrLogicService.java"

# interfaces
.implements Lcom/tencent/vrinterface/IVrLogicService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vrinterface/IVrLogicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IVrLogicService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.vrinterface.IVrLogicService"

.field static final TRANSACTION_abandonRecordFocus:I = 0x3c

.field static final TRANSACTION_addRoleObserver:I = 0x1

.field static final TRANSACTION_checkCustomWakeupWord:I = 0x37

.field static final TRANSACTION_disableWakeup:I = 0x40

.field static final TRANSACTION_enableAisdkLog:I = 0x4f

.field static final TRANSACTION_enableDuplex:I = 0x51

.field static final TRANSACTION_enablePartiallyWakeupWord:I = 0x5c

.field static final TRANSACTION_enableProcessResult:I = 0x52

.field static final TRANSACTION_enableWakeup:I = 0x3f

.field static final TRANSACTION_getActionTrackId:I = 0x17

.field static final TRANSACTION_getAisdkLibVersion:I = 0x25

.field static final TRANSACTION_getAllowRecordInterrupted:I = 0x3e

.field static final TRANSACTION_getChannel:I = 0x27

.field static final TRANSACTION_getCurrentLocation:I = 0x24

.field static final TRANSACTION_getCustomData:I = 0x5d

.field static final TRANSACTION_getCustomWakeWord:I = 0x36

.field static final TRANSACTION_getRole:I = 0x3

.field static final TRANSACTION_getSDKAudioFocus:I = 0x21

.field static final TRANSACTION_getSemanticByText:I = 0x14

.field static final TRANSACTION_getSessionIdByTaskId:I = 0x16

.field static final TRANSACTION_getSoundEffect:I = 0x6

.field static final TRANSACTION_getSpeechDataStatus:I = 0x12

.field static final TRANSACTION_getUserId:I = 0x29

.field static final TRANSACTION_getWeCarAccount:I = 0x2a

.field static final TRANSACTION_getWeCarId:I = 0x28

.field static final TRANSACTION_hasClientInState:I = 0x47

.field static final TRANSACTION_hasRecordFocus:I = 0x3d

.field static final TRANSACTION_holdSession:I = 0x45

.field static final TRANSACTION_initSpeechServer:I = 0xd

.field static final TRANSACTION_isDoaEnable:I = 0x18

.field static final TRANSACTION_isDoaSupport:I = 0x1a

.field static final TRANSACTION_isMediaPkgSDKAvailable:I = 0x22

.field static final TRANSACTION_isModifiedPlatform:I = 0x55

.field static final TRANSACTION_notifySDKAudioFocusChange:I = 0x1f

.field static final TRANSACTION_notifySDKAvailableMediaPkg:I = 0x20

.field static final TRANSACTION_onAction:I = 0x31

.field static final TRANSACTION_onBackCarEvent:I = 0x49

.field static final TRANSACTION_onPowerEvent:I = 0x48

.field static final TRANSACTION_pauseTts:I = 0x4d

.field static final TRANSACTION_playRawAudio:I = 0x1c

.field static final TRANSACTION_playTts:I = 0x1b

.field static final TRANSACTION_registerAccountEventListener:I = 0x2b

.field static final TRANSACTION_registerClientStateChangeListener:I = 0x4b

.field static final TRANSACTION_registerConfigUpdaterInterface:I = 0x50

.field static final TRANSACTION_registerSessionListener:I = 0x10

.field static final TRANSACTION_releaseSession:I = 0x46

.field static final TRANSACTION_removeCustomWakeupWord:I = 0x38

.field static final TRANSACTION_requestAccountLogout:I = 0x5a

.field static final TRANSACTION_requestAccountQrCodeInfo:I = 0x59

.field static final TRANSACTION_requestRecordFocus:I = 0x3b

.field static final TRANSACTION_resumeTts:I = 0x4e

.field static final TRANSACTION_sendSemantic:I = 0x5b

.field static final TRANSACTION_setActionActivityIdForSession:I = 0x2f

.field static final TRANSACTION_setActionActivityIdForTask:I = 0x2e

.field static final TRANSACTION_setActionCardId:I = 0x30

.field static final TRANSACTION_setActionLogEnabled:I = 0x2d

.field static final TRANSACTION_setAudioFocusManager:I = 0x23

.field static final TRANSACTION_setCarControlImpl:I = 0x32

.field static final TRANSACTION_setClearSessionDMFlag:I = 0x13

.field static final TRANSACTION_setCommandTagMap:I = 0x43

.field static final TRANSACTION_setConfigParam:I = 0x4c

.field static final TRANSACTION_setCustomArbitration:I = 0x44

.field static final TRANSACTION_setCustomDataCallback:I = 0x5e

.field static final TRANSACTION_setCustomWakeupWord:I = 0x35

.field static final TRANSACTION_setDispatchListener:I = 0xe

.field static final TRANSACTION_setDoaAgent:I = 0x41

.field static final TRANSACTION_setMvwPreconditionManager:I = 0xc

.field static final TRANSACTION_setNaviClientManager:I = 0x33

.field static final TRANSACTION_setRole:I = 0x2

.field static final TRANSACTION_setSdkWakeupWord:I = 0x34

.field static final TRANSACTION_setSpeechStateAgent:I = 0xf

.field static final TRANSACTION_setSrPreconditionManager:I = 0xb

.field static final TRANSACTION_setTelClient:I = 0x42

.field static final TRANSACTION_setTtsStatusChangeLister:I = 0x4a

.field static final TRANSACTION_setVFSettingsImpl:I = 0x26

.field static final TRANSACTION_setVrSprite:I = 0x7

.field static final TRANSACTION_setWakeupEnabledWhenAsr:I = 0x3a

.field static final TRANSACTION_setWakeupWordChangeListener:I = 0x39

.field static final TRANSACTION_startClosureSession:I = 0x56

.field static final TRANSACTION_startRecord:I = 0x53

.field static final TRANSACTION_startSoundEffect:I = 0x4

.field static final TRANSACTION_startSr:I = 0x8

.field static final TRANSACTION_startSrByText:I = 0x58

.field static final TRANSACTION_stopAllTts:I = 0x1e

.field static final TRANSACTION_stopClosureSession:I = 0x57

.field static final TRANSACTION_stopRecord:I = 0x54

.field static final TRANSACTION_stopSoundEffect:I = 0x5

.field static final TRANSACTION_stopSr:I = 0x9

.field static final TRANSACTION_stopSrBySessionId:I = 0xa

.field static final TRANSACTION_stopTts:I = 0x1d

.field static final TRANSACTION_switchEngineMode:I = 0x15

.field static final TRANSACTION_unregisterAccountEventListener:I = 0x2c

.field static final TRANSACTION_unregisterSessionListener:I = 0x11

.field static final TRANSACTION_writeDoaEnable:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.vrinterface.IVrLogicService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IVrLogicService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.vrinterface.IVrLogicService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/tencent/vrinterface/IVrLogicService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/vrinterface/IVrLogicService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/vrinterface/IVrLogicService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.vrinterface.IVrLogicService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_12

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 946
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 937
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/ICustomDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/ICustomDataCallback;

    move-result-object p1

    .line 940
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setCustomDataCallback(Lcom/tencent/vrinterface/ICustomDataCallback;)V

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 914
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 919
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 924
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getCustomData(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    .line 927
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    invoke-virtual {p0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 905
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v3, v2

    .line 908
    :cond_2
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->enablePartiallyWakeupWord(Z)V

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 896
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 899
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->sendSemantic(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 887
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcActionResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcActionResultListener;

    move-result-object p1

    .line 890
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->requestAccountLogout(Lcom/tencent/vrinterface/IpcActionResultListener;)V

    .line 891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 878
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcActionResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcActionResultListener;

    move-result-object p1

    .line 881
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->requestAccountQrCodeInfo(Lcom/tencent/vrinterface/IpcActionResultListener;)V

    .line 882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 860
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 865
    sget-object p4, Lcom/tencent/vrcommon/app/LaunchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/tencent/vrcommon/app/LaunchParams;

    .line 871
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarspeech/vframework/IStartResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IStartResultCallback;

    move-result-object p2

    .line 872
    invoke-virtual {p0, p1, v1, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->startSrByText(Ljava/lang/String;Lcom/tencent/vrcommon/app/LaunchParams;Lcom/tencent/wecarspeech/vframework/IStartResultCallback;)V

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 853
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->stopClosureSession()V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 837
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 840
    sget-object p1, Lcom/tencent/vrcommon/app/LaunchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/tencent/vrcommon/app/LaunchParams;

    .line 846
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcSessionListener;

    move-result-object p1

    .line 847
    invoke-virtual {p0, v1, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->startClosureSession(Lcom/tencent/vrcommon/app/LaunchParams;Lcom/tencent/vrinterface/IpcSessionListener;)V

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 829
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->isModifiedPlatform()Z

    move-result p0

    .line 831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 822
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->stopRecord()V

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 815
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->startRecord()V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 806
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v3, v2

    .line 809
    :cond_5
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->enableProcessResult(Z)V

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 797
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v3, v2

    .line 800
    :cond_6
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->enableDuplex(Z)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 788
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrcommon/cloud/IConfigUpdaterInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrcommon/cloud/IConfigUpdaterInterface;

    move-result-object p1

    .line 791
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->registerConfigUpdaterInterface(Lcom/tencent/vrcommon/cloud/IConfigUpdaterInterface;)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 778
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v3, v2

    .line 781
    :cond_7
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->enableAisdkLog(Z)Z

    move-result p0

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 769
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 772
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->resumeTts(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 760
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 763
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->pauseTts(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 748
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 751
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 754
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setConfigParam(Ljava/util/Map;Ljava/lang/String;)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 739
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcClientStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcClientStateChangeListener;

    move-result-object p1

    .line 742
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->registerClientStateChangeListener(Lcom/tencent/vrinterface/IpcClientStateChangeListener;)V

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 730
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcTtsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcTtsCallback;

    move-result-object p1

    .line 733
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setTtsStatusChangeLister(Lcom/tencent/vrinterface/IpcTtsCallback;)V

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 721
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v3, v2

    .line 724
    :cond_8
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->onBackCarEvent(Z)V

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 712
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 715
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->onPowerEvent(I)V

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 702
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 705
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->hasClientInState(J)Z

    move-result p0

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 693
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 696
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->releaseSession(J)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 684
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 687
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->holdSession(J)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 675
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarspeech/vframework/IArbitration$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IArbitration;

    move-result-object p1

    .line 678
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setCustomArbitration(Lcom/tencent/wecarspeech/vframework/IArbitration;)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 665
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 668
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 669
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setCommandTagMap(Ljava/util/Map;)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 656
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcTelClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcTelClient;

    move-result-object p1

    .line 659
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setTelClient(Lcom/tencent/vrinterface/IpcTelClient;)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 647
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcDoaAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcDoaAgent;

    move-result-object p1

    .line 650
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setDoaAgent(Lcom/tencent/vrinterface/IpcDoaAgent;)V

    .line 651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 640
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->disableWakeup()V

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 633
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->enableWakeup()V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 625
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getAllowRecordInterrupted()Z

    move-result p0

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 615
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 618
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->hasRecordFocus(Ljava/lang/String;)Z

    move-result p0

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 605
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 608
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->abandonRecordFocus(Ljava/lang/String;)Z

    move-result p0

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 595
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 598
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->requestRecordFocus(Ljava/lang/String;)Z

    move-result p0

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 586
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    move v3, v2

    .line 589
    :cond_9
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setWakeupEnabledWhenAsr(Z)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 577
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IOnWakeupWordChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IOnWakeupWordChangeListener;

    move-result-object p1

    .line 580
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setWakeupWordChangeListener(Lcom/tencent/vrinterface/IOnWakeupWordChangeListener;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 570
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->removeCustomWakeupWord()V

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 560
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->checkCustomWakeupWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 552
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getCustomWakeWord()Ljava/lang/String;

    move-result-object p0

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 543
    :pswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setCustomWakeupWord(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 533
    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 536
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 537
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setSdkWakeupWord(Ljava/util/List;)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 524
    :pswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarspeech/vframework/INaviClientManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/INaviClientManager;

    move-result-object p1

    .line 527
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setNaviClientManager(Lcom/tencent/wecarspeech/vframework/INaviClientManager;)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 515
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/ICarControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/ICarControl;

    move-result-object p1

    .line 518
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setCarControlImpl(Lcom/tencent/vrinterface/ICarControl;)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 502
    :pswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 507
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->onAction(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 491
    :pswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 496
    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setActionCardId(JLjava/lang/String;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 480
    :pswitch_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setActionActivityIdForSession(JLjava/lang/String;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 469
    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 474
    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setActionActivityIdForTask(JLjava/lang/String;)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 460
    :pswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    move v3, v2

    .line 463
    :cond_a
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setActionLogEnabled(Z)V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 451
    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcAccountEventListener;

    move-result-object p1

    .line 454
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->unregisterAccountEventListener(Lcom/tencent/vrinterface/IpcAccountEventListener;)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 442
    :pswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcAccountEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcAccountEventListener;

    move-result-object p1

    .line 445
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->registerAccountEventListener(Lcom/tencent/vrinterface/IpcAccountEventListener;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 433
    :pswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcAccountListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcAccountListener;

    move-result-object p1

    .line 436
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getWeCarAccount(Lcom/tencent/vrinterface/IpcAccountListener;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 425
    :pswitch_35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getUserId()Ljava/lang/String;

    move-result-object p0

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 417
    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getWeCarId()Ljava/lang/String;

    move-result-object p0

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 409
    :pswitch_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getChannel()Ljava/lang/String;

    move-result-object p0

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 400
    :pswitch_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IVFSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IVFSettings;

    move-result-object p1

    .line 403
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setVFSettingsImpl(Lcom/tencent/vrinterface/IVFSettings;)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 392
    :pswitch_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getAisdkLibVersion()Ljava/lang/String;

    move-result-object p0

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 378
    :pswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getCurrentLocation()Lcom/tencent/vrcommon/semantic/LocationBean;

    move-result-object p0

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_b

    .line 382
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    invoke-virtual {p0, p3, v2}, Lcom/tencent/vrcommon/semantic/LocationBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 386
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 369
    :pswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcAudioFocusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcAudioFocusCallback;

    move-result-object p1

    .line 372
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setAudioFocusManager(Lcom/tencent/vrinterface/IpcAudioFocusCallback;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 359
    :pswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->isMediaPkgSDKAvailable(Ljava/lang/String;)Z

    move-result p0

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 351
    :pswitch_3d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getSDKAudioFocus()Ljava/lang/String;

    move-result-object p0

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 341
    :pswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 344
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 345
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->notifySDKAvailableMediaPkg(Ljava/util/Map;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 330
    :pswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_c

    move v3, v2

    .line 335
    :cond_c
    invoke-virtual {p0, p1, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->notifySDKAudioFocusChange(Ljava/lang/String;Z)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 323
    :pswitch_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->stopAllTts()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 314
    :pswitch_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 317
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->stopTts(I)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 302
    :pswitch_42
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarspeech/vframework/IPlayStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;

    move-result-object p2

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->playRawAudio(ILcom/tencent/wecarspeech/vframework/IPlayStateCallback;)I

    move-result p0

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 288
    :pswitch_43
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarspeech/vframework/IPlayStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;

    move-result-object p2

    .line 295
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->playTts(Ljava/lang/String;ILcom/tencent/wecarspeech/vframework/IPlayStateCallback;)I

    move-result p0

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 280
    :pswitch_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->isDoaSupport()Z

    move-result p0

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 271
    :pswitch_45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    move v3, v2

    .line 274
    :cond_d
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->writeDoaEnable(Z)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 263
    :pswitch_46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->isDoaEnable()Z

    move-result p0

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 255
    :pswitch_47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getActionTrackId()J

    move-result-wide p0

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 245
    :pswitch_48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getSessionIdByTaskId(J)J

    move-result-wide p0

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 236
    :pswitch_49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    move v3, v2

    .line 239
    :cond_e
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->switchEngineMode(Z)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 221
    :pswitch_4a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/vrinterface/IpcTextSemanticCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcTextSemanticCallback;

    move-result-object p2

    .line 230
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getSemanticByText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/vrinterface/IpcTextSemanticCallback;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 212
    :pswitch_4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    move v3, v2

    .line 215
    :cond_f
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setClearSessionDMFlag(Z)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 204
    :pswitch_4c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getSpeechDataStatus()I

    move-result p0

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 195
    :pswitch_4d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcSessionListener;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->unregisterSessionListener(Lcom/tencent/vrinterface/IpcSessionListener;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 186
    :pswitch_4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcSessionListener;

    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->registerSessionListener(Lcom/tencent/vrinterface/IpcSessionListener;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 177
    :pswitch_4f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcSpeechStateAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcSpeechStateAgent;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setSpeechStateAgent(Lcom/tencent/vrinterface/IpcSpeechStateAgent;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 168
    :pswitch_50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcDispatchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcDispatchListener;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setDispatchListener(Lcom/tencent/vrinterface/IpcDispatchListener;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 159
    :pswitch_51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/ISpeechServerInitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/ISpeechServerInitCallback;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->initSpeechServer(Lcom/tencent/vrinterface/ISpeechServerInitCallback;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 150
    :pswitch_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcMvwPreconditionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcMvwPreconditionManager;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setMvwPreconditionManager(Lcom/tencent/vrinterface/IpcMvwPreconditionManager;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 141
    :pswitch_53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcSrPreconditionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcSrPreconditionManager;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setSrPreconditionManager(Lcom/tencent/vrinterface/IpcSrPreconditionManager;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 132
    :pswitch_54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->stopSrBySessionId(J)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 125
    :pswitch_55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->stopSr()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 109
    :pswitch_56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 112
    sget-object p1, Lcom/tencent/vrcommon/app/LaunchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/tencent/vrcommon/app/LaunchParams;

    .line 118
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarspeech/vframework/IStartResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IStartResultCallback;

    move-result-object p1

    .line 119
    invoke-virtual {p0, v1, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->startSr(Lcom/tencent/vrcommon/app/LaunchParams;Lcom/tencent/wecarspeech/vframework/IStartResultCallback;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 100
    :pswitch_57
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcVrSprite;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setVrSprite(Lcom/tencent/vrinterface/IpcVrSprite;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 90
    :pswitch_58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getSoundEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 83
    :pswitch_59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->stopSoundEffect()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 74
    :pswitch_5a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    move v3, v2

    .line 77
    :cond_11
    invoke-virtual {p0, v3}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->startSoundEffect(Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 66
    :pswitch_5b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->getRole()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 57
    :pswitch_5c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->setRole(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_5d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/vrinterface/IRoleObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IRoleObserver;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/tencent/vrinterface/IVrLogicService$Stub;->addRoleObserver(Lcom/tencent/vrinterface/IRoleObserver;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
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
