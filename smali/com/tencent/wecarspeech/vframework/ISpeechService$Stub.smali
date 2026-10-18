.class public abstract Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;
.super Landroid/os/Binder;
.source "ISpeechService.java"

# interfaces
.implements Lcom/tencent/wecarspeech/vframework/ISpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/vframework/ISpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.wecarspeech.vframework.ISpeechService"

.field static final TRANSACTION_activateVrSprite:I = 0x39

.field static final TRANSACTION_appendRecordData:I = 0x2c

.field static final TRANSACTION_applyRecordStatus:I = 0x4a

.field static final TRANSACTION_callMethod:I = 0x1

.field static final TRANSACTION_cancelAudioRecord:I = 0x4e

.field static final TRANSACTION_decTryAudioWeight:I = 0x44

.field static final TRANSACTION_getClientState:I = 0x52

.field static final TRANSACTION_getRecordConfig:I = 0x60

.field static final TRANSACTION_getRecordStatus:I = 0x49

.field static final TRANSACTION_getTryAudio:I = 0x42

.field static final TRANSACTION_getTryAudioByTouch:I = 0x43

.field static final TRANSACTION_getVrMetaData:I = 0x47

.field static final TRANSACTION_holdTask:I = 0x1b

.field static final TRANSACTION_holdVrSprite:I = 0x2e

.field static final TRANSACTION_isInWakeupSRMap:I = 0x2d

.field static final TRANSACTION_playAudio:I = 0x1e

.field static final TRANSACTION_playTTS:I = 0x21

.field static final TRANSACTION_registSpeechStateCallback:I = 0x3f

.field static final TRANSACTION_registerAppDomain:I = 0x7

.field static final TRANSACTION_registerAppSkill:I = 0x9

.field static final TRANSACTION_registerAppWakeup:I = 0xb

.field static final TRANSACTION_registerAppWakeupEvent:I = 0xc

.field static final TRANSACTION_registerCarEventListener:I = 0x36

.field static final TRANSACTION_registerClient:I = 0x2

.field static final TRANSACTION_registerDuplexSSRCallback:I = 0x45

.field static final TRANSACTION_registerDuplexSTrvCallback:I = 0x46

.field static final TRANSACTION_registerSREventCallback:I = 0x3

.field static final TRANSACTION_registerSSRCallback:I = 0x5

.field static final TRANSACTION_registerSTTCallback:I = 0x3c

.field static final TRANSACTION_registerSTrvCallback:I = 0x6

.field static final TRANSACTION_registerSceneWakeup:I = 0xe

.field static final TRANSACTION_registerSceneWakeupEvent:I = 0x13

.field static final TRANSACTION_registerSceneWakeupEventSet:I = 0x15

.field static final TRANSACTION_registerSubSceneWakeup:I = 0x10

.field static final TRANSACTION_registerSystemDomainSet:I = 0x59

.field static final TRANSACTION_registerSystemWakeUpEvent:I = 0x5a

.field static final TRANSACTION_registerWakeupCallback:I = 0x4

.field static final TRANSACTION_registerWakeupSceneToSystemVr:I = 0x5e

.field static final TRANSACTION_releaseRecordStatus:I = 0x4b

.field static final TRANSACTION_releaseTask:I = 0x1c

.field static final TRANSACTION_releaseVrSprite:I = 0x30

.field static final TRANSACTION_removeSpeechActiveListener:I = 0x25

.field static final TRANSACTION_reportAction:I = 0x34

.field static final TRANSACTION_resetState:I = 0x5b

.field static final TRANSACTION_setAppName:I = 0x38

.field static final TRANSACTION_setAsrContext:I = 0x58

.field static final TRANSACTION_setAudioRecordCallback:I = 0x3d

.field static final TRANSACTION_setClientSdkVersion:I = 0x54

.field static final TRANSACTION_setClientType:I = 0x5c

.field static final TRANSACTION_setCurrentMiniProgramName:I = 0x55

.field static final TRANSACTION_setHelpDescription:I = 0x28

.field static final TRANSACTION_setHotWordWithCallBack:I = 0x5f

.field static final TRANSACTION_setHotWords:I = 0x27

.field static final TRANSACTION_setMiniProgramList:I = 0x56

.field static final TRANSACTION_setPackageName:I = 0x50

.field static final TRANSACTION_setRecordOnly:I = 0x3e

.field static final TRANSACTION_setSemanticContext:I = 0x4f

.field static final TRANSACTION_setSemanticContextNew:I = 0x57

.field static final TRANSACTION_setSpeechActiveListener:I = 0x24

.field static final TRANSACTION_setSpeechState:I = 0x41

.field static final TRANSACTION_setTaskDispatched:I = 0x2a

.field static final TRANSACTION_setTryBeforeWakeup:I = 0x51

.field static final TRANSACTION_setTryHint:I = 0x26

.field static final TRANSACTION_setUSBStatus:I = 0x48

.field static final TRANSACTION_setUseCustomRecorder:I = 0x2b

.field static final TRANSACTION_setVerifyCallback:I = 0x53

.field static final TRANSACTION_setVrHints:I = 0x31

.field static final TRANSACTION_setVrSpriteModalState:I = 0x2f

.field static final TRANSACTION_setVrSpriteState:I = 0x32

.field static final TRANSACTION_setWakeupInterceptor:I = 0x1d

.field static final TRANSACTION_startAudioRecord:I = 0x4c

.field static final TRANSACTION_startAudioRecordInner:I = 0x61

.field static final TRANSACTION_startAudioRecordSync:I = 0x5d

.field static final TRANSACTION_startSR:I = 0x17

.field static final TRANSACTION_startSTT:I = 0x3a

.field static final TRANSACTION_startTRV:I = 0x19

.field static final TRANSACTION_stopAllAudio:I = 0x20

.field static final TRANSACTION_stopAllTTS:I = 0x23

.field static final TRANSACTION_stopAudio:I = 0x1f

.field static final TRANSACTION_stopAudioRecord:I = 0x4d

.field static final TRANSACTION_stopSR:I = 0x18

.field static final TRANSACTION_stopSTT:I = 0x3b

.field static final TRANSACTION_stopTRV:I = 0x1a

.field static final TRANSACTION_stopTTS:I = 0x22

.field static final TRANSACTION_syncClientState:I = 0x29

.field static final TRANSACTION_unregistSpeechStateCallback:I = 0x40

.field static final TRANSACTION_unregisterAllSubWakeupScene:I = 0x12

.field static final TRANSACTION_unregisterAppDomain:I = 0x8

.field static final TRANSACTION_unregisterAppSkill:I = 0xa

.field static final TRANSACTION_unregisterAppWakeupEvent:I = 0xd

.field static final TRANSACTION_unregisterCarEventListener:I = 0x37

.field static final TRANSACTION_unregisterSceneWakeup:I = 0xf

.field static final TRANSACTION_unregisterSceneWakeupEvent:I = 0x14

.field static final TRANSACTION_unregisterSceneWakeupEventSet:I = 0x16

.field static final TRANSACTION_unregisterSubSceneWakeup:I = 0x11

.field static final TRANSACTION_verifyAppId:I = 0x33

.field static final TRANSACTION_wordSegment:I = 0x35


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.wecarspeech.vframework.ISpeechService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISpeechService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.wecarspeech.vframework.ISpeechService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/wecarspeech/vframework/ISpeechService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v3, "com.tencent.wecarspeech.vframework.ISpeechService"

    const v4, 0x5f4e5446

    const/4 v7, 0x1

    if-eq p1, v4, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1155
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1160
    sget-object v3, Lcom/tencent/wecarspeech/vframework/RecordParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/tencent/wecarspeech/vframework/RecordParam;

    .line 1166
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IRecordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IRecordCallback;

    move-result-object v2

    .line 1167
    invoke-virtual {p0, v1, v4, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->startAudioRecordInner(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/RecordParam;Lcom/tencent/wecarspeech/vframework/IRecordCallback;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    .line 1145
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->getRecordConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    .line 1130
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IHotWordsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IHotWordsCallback;

    move-result-object v2

    .line 1139
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setHotWordWithCallBack(Ljava/lang/String;ILjava/lang/String;Lcom/tencent/wecarspeech/vframework/IHotWordsCallback;)V

    .line 1140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 1119
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerWakeupSceneToSystemVr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 1094
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1099
    sget-object v3, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;

    .line 1105
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IRecordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IRecordCallback;

    move-result-object v2

    .line 1106
    invoke-virtual {p0, v1, v4, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->startAudioRecordSync(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Lcom/tencent/wecarspeech/vframework/IRecordCallback;)Lcom/tencent/wecarspeech/vframework/StartRecordResult;

    move-result-object v0

    .line 1107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 1109
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    invoke-virtual {v0, p3, v7}, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1113
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v7

    .line 1083
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1088
    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setClientType(Ljava/lang/String;J)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 1074
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1077
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->resetState(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 1063
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSystemWakeUpEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 1052
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSystemDomainSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 1041
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setAsrContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 1030
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setSemanticContextNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 1019
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1024
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setMiniProgramList(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 1008
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1013
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setCurrentMiniProgramName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 997
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1002
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setClientSdkVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 980
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IClientVerifyResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IClientVerifyResult;

    move-result-object v6

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 991
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setVerifyCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IClientVerifyResult;)V

    .line 992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 970
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->getClientState(Ljava/lang/String;)J

    move-result-wide v0

    .line 974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    .line 959
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 964
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setTryBeforeWakeup(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 948
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 939
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 942
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setSemanticContext(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 930
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 933
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->cancelAudioRecord(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 921
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 924
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->stopAudioRecord(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 904
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 907
    sget-object v1, Lcom/tencent/wecarspeech/vframework/RecordParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tencent/wecarspeech/vframework/RecordParam;

    .line 913
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/vframework/IRecordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IRecordCallback;

    move-result-object v1

    .line 914
    invoke-virtual {p0, v4, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->startAudioRecord(Lcom/tencent/wecarspeech/vframework/RecordParam;Lcom/tencent/wecarspeech/vframework/IRecordCallback;)Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    .line 896
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->releaseRecordStatus()Z

    move-result v0

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 888
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->applyRecordStatus()Z

    move-result v0

    .line 890
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 880
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->getRecordStatus()Z

    move-result v0

    .line 882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 871
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v5, v7

    .line 874
    :cond_4
    invoke-virtual {p0, v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setUSBStatus(Z)V

    .line 875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 861
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 864
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->getVrMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    .line 850
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IDuplexSTrvCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IDuplexSTrvCallback;

    move-result-object v2

    .line 855
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerDuplexSTrvCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IDuplexSTrvCallback;)V

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 839
    :pswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IDuplexSSrCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IDuplexSSrCallback;

    move-result-object v2

    .line 844
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerDuplexSSRCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IDuplexSSrCallback;)V

    .line 845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 824
    :pswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v5, v7

    .line 832
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-virtual {p0, v1, v3, v5, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->decTryAudioWeight(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 808
    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 817
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->getTryAudioByTouch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    .line 792
    :pswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v5, v7

    .line 801
    :cond_6
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->getTryAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    .line 781
    :pswitch_20
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 786
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setSpeechState(II)V

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 772
    :pswitch_21
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback;

    move-result-object v1

    .line 775
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregistSpeechStateCallback(Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback;)V

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 763
    :pswitch_22
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback;

    move-result-object v1

    .line 766
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registSpeechStateCallback(Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback;)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 754
    :pswitch_23
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v5, v7

    .line 757
    :cond_7
    invoke-virtual {p0, v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setRecordOnly(Z)V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 745
    :pswitch_24
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/vframework/IAudioRecordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IAudioRecordCallback;

    move-result-object v1

    .line 748
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setAudioRecordCallback(Lcom/tencent/wecarspeech/vframework/IAudioRecordCallback;)V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 734
    :pswitch_25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/ISSRCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISSRCallback;

    move-result-object v2

    .line 739
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSTTCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISSRCallback;)V

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 723
    :pswitch_26
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IStopCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IStopCallback;

    move-result-object v2

    .line 728
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->stopSTT(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IStopCallback;)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 710
    :pswitch_27
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/wecarspeech/vframework/ISSTResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISSTResult;

    move-result-object v3

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IStartResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IStartResultCallback;

    move-result-object v2

    .line 717
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->startSTT(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISSTResult;Lcom/tencent/wecarspeech/vframework/IStartResultCallback;)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 694
    :pswitch_28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v7

    goto :goto_1

    :cond_8
    move v3, v5

    .line 700
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v5, v7

    .line 702
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/ISpriteInterruptedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISpriteInterruptedListener;

    move-result-object v2

    .line 703
    invoke-virtual {p0, v1, v3, v5, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->activateVrSprite(Ljava/lang/String;ZZLcom/tencent/wecarspeech/vframework/ISpriteInterruptedListener;)J

    move-result-wide v0

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    .line 683
    :pswitch_29
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 688
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setAppName(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 674
    :pswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregisterCarEventListener(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 663
    :pswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/ICarEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ICarEventListener;

    move-result-object v2

    .line 668
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerCarEventListener(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ICarEventListener;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 653
    :pswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->wordSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    .line 639
    :pswitch_2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->reportAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 623
    :pswitch_2e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->verifyAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 610
    :pswitch_2f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 617
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setVrSpriteState(Ljava/lang/String;JI)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 597
    :pswitch_30
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setVrHints(Ljava/lang/String;JLjava/lang/String;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 586
    :pswitch_31
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 591
    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->releaseVrSprite(Ljava/lang/String;J)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 571
    :pswitch_32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    move v6, v7

    goto :goto_2

    :cond_a
    move v6, v5

    .line 579
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v5, v7

    :cond_b
    move-object v0, p0

    move-wide v2, v3

    move v4, v6

    .line 580
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setVrSpriteModalState(Ljava/lang/String;JZZ)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 554
    :pswitch_33
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    move v6, v7

    goto :goto_3

    :cond_c
    move v6, v5

    .line 562
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v5, v7

    .line 564
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/ISpriteInterruptedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISpriteInterruptedListener;

    move-result-object v8

    move-object v0, p0

    move-wide v2, v3

    move v4, v6

    move-object v6, v8

    .line 565
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->holdVrSprite(Ljava/lang/String;JZZLcom/tencent/wecarspeech/vframework/ISpriteInterruptedListener;)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 544
    :pswitch_34
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->isInWakeupSRMap(Ljava/lang/String;)Z

    move-result v0

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 535
    :pswitch_35
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->appendRecordData(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 526
    :pswitch_36
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    move v5, v7

    .line 529
    :cond_e
    invoke-virtual {p0, v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setUseCustomRecorder(Z)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 517
    :pswitch_37
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 520
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setTaskDispatched(J)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 506
    :pswitch_38
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 511
    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->syncClientState(Ljava/lang/String;J)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 495
    :pswitch_39
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setHelpDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 482
    :pswitch_3a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setHotWords(Ljava/lang/String;ILjava/lang/String;)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 471
    :pswitch_3b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setTryHint(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 462
    :pswitch_3c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/vframework/ISpeechActiveListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISpeechActiveListener;

    move-result-object v1

    .line 465
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->removeSpeechActiveListener(Lcom/tencent/wecarspeech/vframework/ISpeechActiveListener;)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 453
    :pswitch_3d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/vframework/ISpeechActiveListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISpeechActiveListener;

    move-result-object v1

    .line 456
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setSpeechActiveListener(Lcom/tencent/wecarspeech/vframework/ISpeechActiveListener;)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 446
    :pswitch_3e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->stopAllTTS()V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 437
    :pswitch_3f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 440
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->stopTTS(I)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 421
    :pswitch_40
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/vframework/IPlayStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;

    move-result-object v8

    move-object v0, p0

    move-wide v1, v3

    move-object v3, v5

    move v4, v6

    move-object v5, v8

    .line 430
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->playTTS(JLjava/lang/String;ILcom/tencent/wecarspeech/vframework/IPlayStateCallback;)I

    move-result v0

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 414
    :pswitch_41
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->stopAllAudio()V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 405
    :pswitch_42
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->stopAudio(I)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 389
    :pswitch_43
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/vframework/IPlayStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;

    move-result-object v8

    move-object v0, p0

    move-wide v1, v3

    move-object v3, v5

    move v4, v6

    move-object v5, v8

    .line 398
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->playAudio(JLjava/lang/String;ILcom/tencent/wecarspeech/vframework/IPlayStateCallback;)I

    move-result v0

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 378
    :pswitch_44
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IWakeupInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IWakeupInterceptor;

    move-result-object v2

    .line 383
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->setWakeupInterceptor(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IWakeupInterceptor;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 367
    :pswitch_45
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 372
    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->releaseTask(Ljava/lang/String;J)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 352
    :pswitch_46
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    move v5, v7

    .line 360
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/ISessionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISessionStateListener;

    move-result-object v6

    move-object v0, p0

    move-wide v2, v3

    move v4, v5

    move-object v5, v6

    .line 361
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->holdTask(Ljava/lang/String;JZLcom/tencent/wecarspeech/vframework/ISessionStateListener;)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 341
    :pswitch_47
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IStopCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IStopCallback;

    move-result-object v2

    .line 346
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->stopTRV(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IStopCallback;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 328
    :pswitch_48
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/wecarspeech/vframework/IPlayStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;

    move-result-object v3

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IStartResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IStartResultCallback;

    move-result-object v2

    .line 335
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->startTRV(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;Lcom/tencent/wecarspeech/vframework/IStartResultCallback;)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 317
    :pswitch_49
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IStopCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IStopCallback;

    move-result-object v2

    .line 322
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->stopSR(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IStopCallback;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 304
    :pswitch_4a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/wecarspeech/vframework/IPlayStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;

    move-result-object v3

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IStartResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IStartResultCallback;

    move-result-object v2

    .line 311
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->startSR(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;Lcom/tencent/wecarspeech/vframework/IStartResultCallback;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 291
    :pswitch_4b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregisterSceneWakeupEventSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 278
    :pswitch_4c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSceneWakeupEventSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 265
    :pswitch_4d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregisterSceneWakeupEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 252
    :pswitch_4e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSceneWakeupEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 243
    :pswitch_4f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregisterAllSubWakeupScene(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 232
    :pswitch_50
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregisterSubSceneWakeup(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 221
    :pswitch_51
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSubSceneWakeup(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 212
    :pswitch_52
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregisterSceneWakeup(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 201
    :pswitch_53
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSceneWakeup(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 190
    :pswitch_54
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregisterAppWakeupEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 179
    :pswitch_55
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerAppWakeupEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 168
    :pswitch_56
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerAppWakeup(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 157
    :pswitch_57
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregisterAppSkill(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 144
    :pswitch_58
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerAppSkill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 133
    :pswitch_59
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->unregisterAppDomain(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 122
    :pswitch_5a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerAppDomain(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 111
    :pswitch_5b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/ISTrvCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISTrvCallback;

    move-result-object v2

    .line 116
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSTrvCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISTrvCallback;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 100
    :pswitch_5c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/ISSRCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISSRCallback;

    move-result-object v2

    .line 105
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSSRCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISSRCallback;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 89
    :pswitch_5d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IWakeupCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IWakeupCallback;

    move-result-object v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerWakeupCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IWakeupCallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 78
    :pswitch_5e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/ISREventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/ISREventCallback;

    move-result-object v2

    .line 83
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerSREventCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISREventCallback;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 65
    :pswitch_5f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IWeCarCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IWeCarCallback;

    move-result-object v2

    .line 72
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->registerClient(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IWeCarCallback;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 50
    :pswitch_60
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/vframework/IWeCarCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/vframework/IWeCarCallback;

    move-result-object v2

    .line 59
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService$Stub;->callMethod(Ljava/lang/String;ILjava/lang/String;Lcom/tencent/wecarspeech/vframework/IWeCarCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 45
    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
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
