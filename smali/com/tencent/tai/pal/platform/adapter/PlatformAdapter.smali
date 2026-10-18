.class public Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;
.super Ljava/lang/Object;
.source "PlatformAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PlatformAdapter"


# instance fields
.field private mAudioAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;

.field private mBluetoothAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;

.field private mCabinKeyEventAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;

.field private mContext:Landroid/content/Context;

.field private mNetworkAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;

.field private mPowerAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;

.field private mScreenAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;

.field private mTelephoneAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;

.field private mVehicleBasicInfoAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;

.field private mVehicleRichInfoAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleRichInfoAdapterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LOGI(Ljava/lang/String;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static LOGW(Ljava/lang/String;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAdapter(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/tai/pal/service/BaseAdapter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 169
    const-class v0, Lcom/tencent/tai/pal/audio/AudioAdapter;

    if-ne p1, v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mAudioAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;

    return-object p0

    .line 171
    :cond_0
    const-class v0, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    if-ne p1, v0, :cond_1

    .line 172
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mBluetoothAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;

    return-object p0

    .line 173
    :cond_1
    const-class v0, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    if-ne p1, v0, :cond_2

    .line 174
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mCabinKeyEventAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;

    return-object p0

    .line 175
    :cond_2
    const-class v0, Lcom/tencent/tai/pal/power/PowerAdapter;

    if-ne p1, v0, :cond_3

    .line 176
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mPowerAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;

    return-object p0

    .line 177
    :cond_3
    const-class v0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    if-ne p1, v0, :cond_4

    .line 178
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mVehicleBasicInfoAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;

    return-object p0

    .line 179
    :cond_4
    const-class v0, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    if-ne p1, v0, :cond_5

    .line 180
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mVehicleRichInfoAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleRichInfoAdapterImpl;

    return-object p0

    .line 181
    :cond_5
    const-class v0, Lcom/tencent/tai/pal/screen/ScreenAdapter;

    if-ne p1, v0, :cond_6

    .line 182
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mScreenAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;

    return-object p0

    .line 183
    :cond_6
    const-class v0, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    if-ne p1, v0, :cond_7

    .line 184
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mTelephoneAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;

    return-object p0

    .line 185
    :cond_7
    const-class v0, Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-ne p1, v0, :cond_8

    .line 186
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mNetworkAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportInfo()Lcom/tencent/tai/pal/PlatformSupportInfo;
    .locals 2

    .line 93
    new-instance p0, Lcom/tencent/tai/pal/PlatformSupportInfo;

    invoke-direct {p0}, Lcom/tencent/tai/pal/PlatformSupportInfo;-><init>()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getChannel_supported:Z

    .line 98
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_supported:Z

    .line 99
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getDayNightMode_supported:Z

    .line 100
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getDeviceId_supported:Z

    .line 101
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getVehicleId_supported:Z

    .line 102
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getGear_supported:Z

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getSeatBeltBuckled_supported:Z

    .line 104
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getSpeed_supported:Z

    .line 105
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_registerOnVehicleBasicInfoListener_unregisterOnVehicleBasicInfoListener_supported:Z

    .line 106
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_registerOnVehicleSpeedListener_unregisterOnVehicleSpeedListener_supported:Z

    .line 108
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_supported:Z

    .line 109
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_getDrivingSafetyDisclaimerInfo_supported:Z

    .line 110
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_registerOnDrivingSafetyDisclaimerListener_unregisterOnDrivingSafetyDisclaimerListener_supported:Z

    .line 112
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    .line 113
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_getStreamType_supported:Z

    .line 114
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_isStreamMute_supported:Z

    .line 115
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_getStreamMaxVolume_supported:Z

    .line 116
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_getStreamVolume_supported:Z

    .line 117
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_setStreamVolume_supported:Z

    .line 118
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_getCurrentActiveStream_supported:Z

    .line 119
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_requestAudioFocus_abandonAudioFocus_supported:Z

    .line 120
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_adjustStreamVolume_supported:Z

    .line 121
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_requestMicFocus_abandonMicFocus_supported:Z

    .line 122
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported:Z

    .line 124
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_supported:Z

    .line 125
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_getConnectionState_supported:Z

    .line 126
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_getDeviceMac_supported:Z

    .line 127
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_getDeviceName_supported:Z

    .line 128
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_enableBluetooth_supported:Z

    .line 129
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_registerOnDeviceConnectionStateChange_unregisterOnDeviceConnectionStateChange_supported:Z

    .line 131
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->cabinKey_supported:Z

    .line 132
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->cabinKey_registerCabinKeyEventDispatcher_unregisterCabinKeyEventDispatcher_supported:Z

    .line 134
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->ins_supported:Z

    .line 135
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->ins_registerOnInsInfoChangeListener_unregisterOnInsInfoChangeListener_supported:Z

    .line 137
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->power_supported:Z

    .line 138
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->power_getPowerInfo_supported:Z

    .line 139
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->power_getPowerLevelAfterDriving_supported:Z

    .line 140
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->power_getPowerType_supported:Z

    .line 141
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->power_registerOnPowerLevelLowListener_unregisterOnPowerLevelLowListener_supported:Z

    .line 143
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->telephone_supported:Z

    .line 144
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->telephone_answerInComingCall_supported:Z

    .line 145
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->telephone_call_supported:Z

    .line 146
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->telephone_getRecentContact_supported:Z

    .line 147
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->telephone_ignoreInComingCall_supported:Z

    .line 148
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->telephone_refuseInComingCall_supported:Z

    .line 149
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->telephone_registerOnTelInfoListener_unregisterOnTelInfoListener_supported:Z

    .line 151
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_supported:Z

    .line 152
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_enableMobileNetwork_supported:Z

    .line 153
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_enableWifi_supported:Z

    .line 154
    iput-boolean v1, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_getMobileConnectionState_supported:Z

    .line 155
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_getWifiConnectionState_supported:Z

    .line 156
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_jumpToNetworkSettingPage_supported:Z

    .line 158
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->screen_supported:Z

    .line 159
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->screen_adjustScreenBrightness_supported:Z

    .line 160
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->screen_getScreenBrightness_supported:Z

    .line 161
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->screen_getScreenMAXBrightness_supported:Z

    .line 162
    iput-boolean v0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->screen_isScreenMute_supported:Z

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    const-string v0, "================PlatformAdapterService:::onCreate================"

    .line 56
    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    .line 58
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;

    iget-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mPowerAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;

    .line 59
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;

    iget-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mVehicleBasicInfoAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;

    .line 60
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;

    iget-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mAudioAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;

    .line 61
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;

    iget-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mCabinKeyEventAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;

    .line 62
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;

    iget-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mBluetoothAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;

    .line 63
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;

    invoke-direct {p1}, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mScreenAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;

    .line 64
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;

    iget-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mTelephoneAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;

    .line 65
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;

    iget-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mNetworkAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;

    .line 66
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleRichInfoAdapterImpl;

    invoke-direct {p1}, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleRichInfoAdapterImpl;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->mVehicleRichInfoAdapterImpl:Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleRichInfoAdapterImpl;

    const-string p0, "================start flow play control adapter layer!================"

    .line 67
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const-string p0, "================start navi dispatch layer adapter!================"

    .line 69
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return-void
.end method

.method public onInitialized()V
    .locals 0

    const-string p0, "================PlatformAdapterService:::onInitialized================"

    .line 87
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return-void
.end method
