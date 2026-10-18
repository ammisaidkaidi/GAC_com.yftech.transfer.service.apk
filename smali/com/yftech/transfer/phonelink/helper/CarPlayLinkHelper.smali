.class public Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.super Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;
.source "CarPlayLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;,
        Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;
    }
.end annotation


# static fields
.field private static final CARPLAY_MUSIC_DISCONNECT_STATUS:Ljava/lang/String; = "music_disconnect_status"

.field private static final CARPLAY_UI_CHANGE:Ljava/lang/String; = "com.autochips.carplay.event.show_ui"

.field private static final CARPLAY_UI_SHOW:Ljava/lang/String; = "ui_show"

.field public static final KEY_NMEA_GPGGA:Ljava/lang/String; = "gpgga"

.field public static final KEY_NMEA_GPRMC:Ljava/lang/String; = "gprmc"

.field private static final SETTING_AP_CHANGE:Ljava/lang/String; = "com.yftech.intent.action.ap.dialog.click"

.field private static final SETTING_AP_CHANGE_CLICK_CANCEL:I = 0x0

.field private static final SETTING_AP_CHANGE_CLICK_OK:I = 0x1

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CERTIFICATE_CONST:Ljava/lang/String;

.field private final SETTINGS_KEY_ISCANCELAUTOSHOW:Ljava/lang/String;

.field private final SETTINGS_VALUE_ISCANCELAUTOSHOW_NONE:I

.field private final SETTINGS_VALUE_ISCANCELAUTOSHOW_SET:I

.field private final STREAM_CARPLAY_MAP:I

.field private final STREAM_CARPLAY_VR:I

.field private final TYPE_FASTAUI:I

.field private final VALUE_TRANSSTATE_D:Ljava/lang/String;

.field private final VALUE_TRANSSTATE_N:Ljava/lang/String;

.field private final VALUE_TRANSSTATE_P:Ljava/lang/String;

.field private final VALUE_TRANSSTATE_R:Ljava/lang/String;

.field private final VALUE_TRANSSTATE_U:Ljava/lang/String;

.field private activityChangedObservor:Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;

.field private avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

.field private bluetoothMusicObservor:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;

.field private bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

.field private bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

.field private carAudioObservor:Lcom/yftech/transfer/callback/CarAudioListenerImp$CarAudioObservor;

.field private carInfoObservor:Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;

.field private carLightObservor:Lcom/yftech/transfer/callback/CarLightListenerImp$CarLightObservor;

.field private carLocationObservor:Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;

.field private carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

.field private carSwcObservor:Lcom/yftech/transfer/callback/CarSwcCallBackImp$CarSwcObservor;

.field private gpsimer:D

.field private isCarplayDisplay:Z

.field private isDisconnectFromApi:Z

.field private isFastAuiShow:Z

.field private isPreCarplayDisplay:Z

.field private isVREnable:Z

.field private mApFailDevice:Lcom/autochips/carplay/CarplayDevice;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallStatus:I

.field private mCarLinkConnectedAddress:Ljava/lang/String;

.field private mCarplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

.field private mCarplayDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/carplay/CarplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCarplayPlaybackStatus:I

.field private mConnectDeviceLaterD:Lio/reactivex/disposables/Disposable;

.field private mConnectPlayD:Lio/reactivex/disposables/Disposable;

.field private mDeviceNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandUpFastAuiRunnable:Ljava/lang/Runnable;

.field private mHandUpFastAuiThread:Ljava/lang/Thread;

.field private mInitDisposable:Lio/reactivex/disposables/Disposable;

.field private mLastEnableStatus:Z

.field private final mLocationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaInfo:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

.field private mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

.field private mPauseOrPlayD:Lio/reactivex/disposables/Disposable;

.field private mPreConnectedDevice:Lcom/autochips/carplay/CarplayDevice;

.field private mPreConnectedDeviceTransport:I

.field private mPrePlayStatus:I

.field private mRGearCarplayDismissRunnable:Ljava/lang/Runnable;

.field private mReConnectApFailD:Lio/reactivex/disposables/Disposable;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRequestUICheckRunnable:Ljava/lang/Runnable;

.field private mRunnable:Ljava/lang/Runnable;

.field private mWirelessObdThread:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

.field private onVrAuxFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private onVrFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private wifiObservor:Lcom/yftech/transfer/phonelink/receiver/WifiReceiver$WifiObservor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2373
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    .line 100
    iput v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPrePlayStatus:I

    .line 110
    new-instance v1, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-direct {v1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;-><init>()V

    iput-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mMediaInfo:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mDeviceNameMap:Ljava/util/Map;

    const/16 v1, 0x11

    .line 120
    iput v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->STREAM_CARPLAY_VR:I

    const/16 v1, 0x12

    .line 121
    iput v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->STREAM_CARPLAY_MAP:I

    const-string v1, "ro.atc.carplay.certificate"

    .line 125
    iput-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->CERTIFICATE_CONST:Ljava/lang/String;

    const-string v1, "isCancelAutoShow"

    .line 128
    iput-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->SETTINGS_KEY_ISCANCELAUTOSHOW:Ljava/lang/String;

    const/4 v1, 0x1

    .line 129
    iput v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->SETTINGS_VALUE_ISCANCELAUTOSHOW_SET:I

    .line 130
    iput v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->SETTINGS_VALUE_ISCANCELAUTOSHOW_NONE:I

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    .line 133
    iput v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayPlaybackStatus:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 139
    iput-wide v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->gpsimer:D

    .line 144
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "$GPGGA&$GNGGA&$GBGGA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "$GPRMC&$GNRMC&$GBRMC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "$GPGSV&$GNGSV&$GBGSV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "$GPHDT&$GNHDT&$GBHDT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "$PASCD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "$PAGCD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "$PAACD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "U"

    .line 160
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->VALUE_TRANSSTATE_U:Ljava/lang/String;

    const-string v0, "P"

    .line 161
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->VALUE_TRANSSTATE_P:Ljava/lang/String;

    const-string v0, "R"

    .line 162
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->VALUE_TRANSSTATE_R:Ljava/lang/String;

    const-string v0, "D"

    .line 163
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->VALUE_TRANSSTATE_D:Ljava/lang/String;

    const-string v0, "N"

    .line 164
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->VALUE_TRANSSTATE_N:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->wifiObservor:Lcom/yftech/transfer/phonelink/receiver/WifiReceiver$WifiObservor;

    .line 318
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$3;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    .line 359
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$4;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$4;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->activityChangedObservor:Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;

    .line 376
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$5;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$5;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carLightObservor:Lcom/yftech/transfer/callback/CarLightListenerImp$CarLightObservor;

    .line 389
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carInfoObservor:Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;

    const/4 v0, 0x3

    .line 438
    iput v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TYPE_FASTAUI:I

    .line 439
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$7;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$7;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mHandUpFastAuiRunnable:Ljava/lang/Runnable;

    .line 458
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    .line 481
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$9;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$9;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mRunnable:Ljava/lang/Runnable;

    .line 495
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$10;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$10;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mRGearCarplayDismissRunnable:Ljava/lang/Runnable;

    .line 506
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

    .line 1117
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$12;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$12;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mRequestUICheckRunnable:Ljava/lang/Runnable;

    .line 1319
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$13;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$13;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carAudioObservor:Lcom/yftech/transfer/callback/CarAudioListenerImp$CarAudioObservor;

    .line 1382
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$14;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$14;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    .line 1392
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$15;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$15;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    .line 1416
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->bluetoothMusicObservor:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;

    .line 2341
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$22;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$22;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->onVrFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2356
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$23;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$23;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->onVrAuxFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2417
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$24;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$24;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carSwcObservor:Lcom/yftech/transfer/callback/CarSwcCallBackImp$CarSwcObservor;

    .line 2423
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$25;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$25;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carLocationObservor:Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;

    .line 2634
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$26;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$26;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    const/4 v0, 0x0

    .line 2643
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mWirelessObdThread:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isCarplayDisplay:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isCarplayDisplay:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mRequestUICheckRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->apLogical()V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isPreCarplayDisplay:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isPreCarplayDisplay:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mRGearCarplayDismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Thread;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mHandUpFastAuiThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mHandUpFastAuiThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mHandUpFastAuiRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->sendRequestUICheckRunnable()V

    return-void
.end method

.method static synthetic access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDevice:Lcom/autochips/carplay/CarplayDevice;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDevice:Lcom/autochips/carplay/CarplayDevice;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayManager$CarplayCallback;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLastEnableStatus:Z

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isFastAuiShow:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarLinkConnectedAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarLinkConnectedAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isFastAuiShow:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    return p0
.end method

.method static synthetic access$2102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    return p1
.end method

.method static synthetic access$2200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isVROn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2302(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayPlaybackStatus:I

    return p1
.end method

.method static synthetic access$2400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mMediaInfo:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDeviceTransport:I

    return p0
.end method

.method static synthetic access$2502(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDeviceTransport:I

    return p1
.end method

.method static synthetic access$2600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;ZLcom/autochips/carplay/CarplayDevice;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->startWorkerThread(ZLcom/autochips/carplay/CarplayDevice;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mConnectPlayD:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mConnectPlayD:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPrePlayStatus:I

    return p1
.end method

.method static synthetic access$2900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isDisconnectFromApi:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isDisconnectFromApi:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isVREnable:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->onVrAuxFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isVREnable:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/util/Map;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mDeviceNameMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3200()Ljava/util/HashSet;
    .locals 1

    .line 96
    sget-object v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->observors:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->onVrFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mReConnectApFailD:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mReConnectApFailD:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mApFailDevice:Lcom/autochips/carplay/CarplayDevice;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mApFailDevice:Lcom/autochips/carplay/CarplayDevice;

    return-object p1
.end method

.method private apLogical()V
    .locals 4

    .line 1588
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 1589
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x75ffad83

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CA1105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    const-string v0, "ro.atc.carplay.certificate"

    .line 1595
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apLogical certifiValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 1598
    invoke-static {}, Lcom/utils/WIfiUtils;->isApEnable()Z

    move-result v0

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apLogical isApEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 1601
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$18;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$18;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    invoke-static {v0}, Lcom/yftech/transfer/service/utils/AppUtil;->onThread(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    .line 1610
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-static {v0, p0}, Lcom/utils/WIfiUtils;->setApEnable(ZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    return-void
.end method

.method private checkDeviceSupport(Lcom/autochips/carplay/CarplayDevice;)Z
    .locals 3

    .line 1130
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getWiredAvailable()I

    move-result v0

    .line 1131
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getWirelessAvailable()I

    move-result v1

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " checkDeviceSupport device:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",wiredAvailable:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",wirelessAvailable:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, -0x1

    const/4 p1, 0x0

    if-ne v0, p0, :cond_0

    if-nez v1, :cond_0

    return p1

    :cond_0
    if-nez v0, :cond_1

    if-ne v1, p0, :cond_1

    return p1

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private configCarPlayLogo()V
    .locals 3

    .line 1568
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->isGACLogoPresent()Z

    move-result v0

    .line 1569
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gacLogoPresent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string p0, "persist.carplay.icon.label"

    const-string v0, ""

    .line 1572
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.carplay.icon.104px"

    const-string v0, ""

    .line 1573
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.carplay.icon.120px"

    const-string v0, ""

    .line 1574
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.carplay.icon.180px"

    const-string v0, ""

    .line 1575
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.carplay.icon.256px"

    const-string v0, ""

    .line 1576
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "persist.carplay.icon.label"

    const-string v0, "HOME"

    .line 1579
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.carplay.icon.104px"

    const-string v0, "fca_104x104.png"

    .line 1580
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.carplay.icon.120px"

    const-string v0, "fca_120x120.png"

    .line 1581
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.carplay.icon.180px"

    const-string v0, "fca_180x180.png"

    .line 1582
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.carplay.icon.256px"

    const-string v0, "fca_256x256.png"

    .line 1583
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private connectLater(Lcom/autochips/carplay/CarplayDevice;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 1970
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;

    invoke-direct {v0, p0, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lcom/autochips/carplay/CarplayDevice;)V

    const-wide/16 p0, 0x7d0

    invoke-static {v0, p0, p1}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method private formatLatLong(D)D
    .locals 4

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p1, v0

    double-to-int p0, v0

    mul-int/lit8 v0, p0, 0x64

    int-to-double v0, v0

    sub-double/2addr p1, v0

    int-to-double v0, p0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private getBondedDevices()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/carplay/CarplayDevice;",
            ">;"
        }
    .end annotation

    .line 1271
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1273
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    return-object p0

    .line 1274
    :cond_0
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->isEnabled()Z

    move-result v1

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBondedDevicesnew enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 1277
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    return-object p0

    .line 1279
    :cond_1
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    :cond_2
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getBondedDevices()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    :cond_3
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1288
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1289
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1290
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/carplay/CarplayDevice;

    if-nez v2, :cond_5

    goto :goto_0

    .line 1293
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBondedDevicesnew connectedDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/carplay/CarplayDevice;

    if-nez v4, :cond_7

    goto :goto_1

    .line 1297
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBondedDevicesnew  bondedDevice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v4}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1299
    iget-object v5, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1304
    :cond_8
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1306
    :cond_9
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/carplay/CarplayDevice;

    if-nez v1, :cond_b

    goto :goto_2

    .line 1309
    :cond_b
    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 1310
    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBondedDevicesnew mCarplayDevices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1314
    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mDeviceNameMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1316
    :cond_c
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayDevices:Ljava/util/List;

    return-object p0
.end method

.method private isCallActive()Z
    .locals 4

    .line 1255
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallActive defaultManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1259
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getConnectedDevice()Lcom/autochips/carplay/CarplayDevice;

    move-result-object p0

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallActive connectedDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x64

    const/4 v3, 0x4

    .line 1263
    invoke-virtual {v0, p0, v2, v3}, Lcom/autochips/carplay/CarplayManager;->getStreamState(Lcom/autochips/carplay/CarplayDevice;II)I

    move-result p0

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallActive streamState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isVROn()Z
    .locals 6

    .line 1228
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVROn defaultManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1232
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getConnectedDevice()Lcom/autochips/carplay/CarplayDevice;

    move-result-object v2

    .line 1233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVROn connectedDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/16 v3, 0x64

    const/4 v4, 0x5

    .line 1236
    invoke-virtual {v0, v2, v3, v4}, Lcom/autochips/carplay/CarplayManager;->getStreamState(Lcom/autochips/carplay/CarplayDevice;II)I

    move-result v3

    const/16 v5, 0x6a

    .line 1239
    invoke-virtual {v0, v2, v5, v4}, Lcom/autochips/carplay/CarplayManager;->getStreamState(Lcom/autochips/carplay/CarplayDevice;II)I

    move-result v0

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVROn streamState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVROn streamState_106:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVROn isVREnable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isVREnable:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;)Z
    .locals 1

    .line 2631
    sget-object v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private launchApp()V
    .locals 2

    .line 1652
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1653
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    .line 1655
    :cond_0
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->sendRequestUICheckRunnable()V

    .line 1656
    sget-object p0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/utils/CarPlayUtils;->launchApp(Landroid/content/Context;)V

    return-void
.end method

.method private pauseWhenCertificateOff()V
    .locals 4

    .line 1187
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CA1105"

    .line 1189
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1191
    :cond_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1194
    :cond_1
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result v1

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseWhenCertificateOff carplayCertificateOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 1197
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->pauseForResume()V

    const-string p0, "pauseWhenCertificateOff MEDIA_PAUSE"

    .line 1198
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 1199
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    const/4 p0, 0x0

    .line 1200
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    :cond_2
    return-void
.end method

.method public static registerObservor(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;)V
    .locals 1

    .line 2623
    sget-object v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private resumeWhenCertificateOff()V
    .locals 3

    .line 1208
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CA1105"

    .line 1210
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1212
    :cond_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1215
    :cond_1
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result v0

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeWhenCertificateOff carplayCertificateOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 1218
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->resume()V

    :cond_2
    return-void
.end method

.method private sendRequestUICheckRunnable()V
    .locals 3

    .line 1112
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    const-string v1, "sendRequestUICheckRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mRequestUICheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1114
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mRequestUICheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startWorkerThread(ZLcom/autochips/carplay/CarplayDevice;)V
    .locals 3

    .line 2751
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWorkerThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "yf.carplay.obd.enable"

    const/4 v1, 0x1

    .line 2752
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 2756
    invoke-virtual {p2}, Lcom/autochips/carplay/CarplayDevice;->getTransport()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2760
    :cond_1
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mWirelessObdThread:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    if-nez p1, :cond_2

    .line 2761
    new-instance p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    const-string v0, "WirelessObdThread"

    invoke-direct {p1, p0, v0, p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/String;Lcom/autochips/carplay/CarplayDevice;)V

    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mWirelessObdThread:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    .line 2762
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mWirelessObdThread:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->start()V

    goto :goto_1

    .line 2764
    :cond_2
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mWirelessObdThread:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-virtual {p0, p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->setCarplayDevice(Lcom/autochips/carplay/CarplayDevice;)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 2767
    :cond_4
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mWirelessObdThread:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    if-eqz p1, :cond_5

    .line 2768
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mWirelessObdThread:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x0

    .line 2769
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mWirelessObdThread:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    :cond_5
    :goto_1
    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;)V
    .locals 1

    .line 2627
    sget-object v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public acceptPhone()V
    .locals 2

    .line 1763
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " acceptPhone TELEPHONY_HOOK_SWITCH"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 1767
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->updateTelehony(I)I

    const/4 p0, 0x0

    .line 1768
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->updateTelehony(I)I

    return-void
.end method

.method public cancelAutoShow()I
    .locals 2

    .line 2171
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "cancelAutoShow activeLastUserModeForMainScreen"

    .line 2174
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->activeLastUserModeForMainScreen()I

    move-result p0

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAutoShow result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const-string v0, "isCancelAutoShow"

    const/4 v1, 0x1

    .line 2178
    invoke-static {v0, v1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putInt(Ljava/lang/String;I)V

    :cond_1
    return p0
.end method

.method public closeVR()V
    .locals 1

    .line 2038
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2041
    invoke-virtual {p0, v0}, Lcom/autochips/carplay/CarplayManager;->requestSiri(I)I

    const/4 v0, 0x3

    .line 2042
    invoke-virtual {p0, v0}, Lcom/autochips/carplay/CarplayManager;->requestSiri(I)I

    const-string p0, "carplay closeVR()"

    .line 2043
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public confirmFirstConnect(Ljava/lang/String;)V
    .locals 2

    .line 2202
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmFirstConnect defaultManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmFirstConnect address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 2207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->getRemoteDevice(Ljava/lang/String;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p1

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmFirstConnect remoteDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->confirmFirstConnect(Lcom/autochips/carplay/CarplayDevice;)I

    move-result p0

    .line 2210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "confirmFirstConnect connect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public connectByUsb()V
    .locals 5

    .line 1620
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1621
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    const-string v0, " connectByUsb disconnect CarplayManager.getDefaultManager() == null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1624
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    const-string v1, "connectByUsb ,isConnected:true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->launchApp()V

    return-void

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    const-string v1, "connectByUsb ,isConnected:false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getAvailableDevices()Ljava/util/List;

    move-result-object v0

    .line 1631
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectByUsb carplayDevices:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    .line 1632
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1637
    :cond_2
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v1

    .line 1638
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectByUsb,curProductDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CA1105"

    .line 1639
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1640
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->resetUsb()V

    :cond_3
    const/4 v1, 0x0

    .line 1642
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    if-nez v0, :cond_4

    .line 1644
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->launchApp()V

    return-void

    .line 1647
    :cond_4
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autochips/carplay/CarplayManager;->connect(Lcom/autochips/carplay/CarplayDevice;)I

    .line 1648
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    const-string v0, "phonklinkprog carplay connect()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1633
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    const-string v1, "connectByUsb carplayDevices == null || carplayDevices.size() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->launchApp()V

    return-void
.end method

.method public connectByWireless()V
    .locals 4

    const-string p0, "connectByWireless()"

    .line 1661
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1662
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1665
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1666
    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->getAvailableDevices()Ljava/util/List;

    move-result-object v1

    .line 1667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectByWireless availableDevices:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 1668
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1669
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1670
    :cond_1
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectByWireless connectedDevices:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 1672
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1673
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1674
    :cond_2
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayManager;->getBondedDevices()Ljava/util/List;

    move-result-object v1

    .line 1675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectByWireless bondedDevices:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 1676
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1677
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1678
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectByWireless list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1679
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x0

    .line 1681
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    .line 1682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectByWireless device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1683
    invoke-virtual {p0, v0}, Lcom/autochips/carplay/CarplayManager;->connect(Lcom/autochips/carplay/CarplayDevice;)I

    move-result p0

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectByWireless connect result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public connectCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 2

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectCarLinkDevice carLinkDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1946
    :cond_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1949
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 1950
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1952
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1954
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->disconnect()V

    .line 1956
    :cond_3
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mConnectDeviceLaterD:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_4

    .line 1957
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mConnectDeviceLaterD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1958
    :cond_4
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 1960
    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->enable(Z)V

    .line 1961
    :cond_5
    invoke-virtual {v0, p1}, Lcom/autochips/carplay/CarplayManager;->getRemoteDevice(Ljava/lang/String;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p1

    .line 1966
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->connectLater(Lcom/autochips/carplay/CarplayDevice;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mConnectDeviceLaterD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public connetCarplayByAddress(Ljava/lang/String;)V
    .locals 2

    .line 2189
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " connetCarplayByAddress address:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 2193
    :cond_0
    invoke-virtual {v0, p1}, Lcom/autochips/carplay/CarplayManager;->getRemoteDevice(Ljava/lang/String;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p0

    .line 2194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connetCarplayByAddress remoteDevice:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->connect(Lcom/autochips/carplay/CarplayDevice;)I

    move-result p0

    .line 2196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connetCarplayByAddress connect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public disConnectByAddress(Ljava/lang/String;)V
    .locals 2

    .line 2214
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectByAddress defaultManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectByAddress address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 2219
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->getRemoteDevice(Ljava/lang/String;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p1

    .line 2220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectByAddress remoteDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->disconnect(Lcom/autochips/carplay/CarplayDevice;)I

    move-result p0

    .line 2222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disconnectByAddress disconnect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public disconnect()V
    .locals 4

    .line 1699
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1702
    :cond_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "disconnect carplayDevices:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 1704
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1707
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/carplay/CarplayDevice;

    if-nez v1, :cond_2

    goto :goto_0

    .line 1710
    :cond_2
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/autochips/carplay/CarplayManager;->disconnect(Lcom/autochips/carplay/CarplayDevice;)I

    const/4 v2, 0x1

    .line 1711
    iput-boolean v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isDisconnectFromApi:Z

    .line 1712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "disconnect carplayDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public enable(Z)V
    .locals 4

    .line 1718
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 1719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x75ffad83

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CA1105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 1724
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isCarplayPresent()Z

    move-result v0

    .line 1725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable isCarplayPresent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 1728
    iput-boolean v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLastEnableStatus:Z

    .line 1729
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1731
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->disable()I

    :cond_2
    return-void

    .line 1736
    :cond_3
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLastEnableStatus:Z

    .line 1737
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 1740
    :cond_4
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->isEnabled()Z

    move-result v0

    .line 1741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enable preEnable:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",setEnable:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 1743
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isUpgrading()Z

    move-result p0

    if-nez p0, :cond_6

    .line 1744
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->enable()I

    goto :goto_2

    .line 1747
    :cond_5
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->disable()I

    :cond_6
    :goto_2
    return-void
.end method

.method public forgetCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 3

    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forgetCarLinkDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1992
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1995
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 1996
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getBondedDevices()Ljava/util/List;

    move-result-object p0

    .line 1997
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/carplay/CarplayDevice;

    .line 1998
    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1999
    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->forget(Lcom/autochips/carplay/CarplayDevice;)I

    return-void

    :cond_2
    return-void
.end method

.method public getAvailableCarLinkDeviceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    .line 1903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1904
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1908
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayManager;->getAvailableDevices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1909
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 1911
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/carplay/CarplayDevice;

    if-nez v2, :cond_2

    goto :goto_0

    .line 1914
    :cond_2
    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mDeviceNameMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1915
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableCarLinkDeviceList deviceName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1916
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableCarLinkDeviceList deviceMapName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1917
    new-instance v4, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {v4}, Lcom/yftech/car/phonelink/CarLinkDevice;-><init>()V

    const-string v5, "carplay"

    .line 1918
    invoke-virtual {v4, v5}, Lcom/yftech/car/phonelink/CarLinkDevice;->setPhoneType(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 1919
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1922
    :cond_3
    invoke-virtual {v4, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceName(Ljava/lang/String;)V

    goto :goto_2

    .line 1920
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceName(Ljava/lang/String;)V

    .line 1923
    :goto_2
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceId(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->isConnected()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setConnectedStatus(I)V

    .line 1925
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getTransport()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Lcom/yftech/car/phonelink/CarLinkDevice;->setConnectedType(I)V

    .line 1926
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/yftech/car/phonelink/CarLinkDevice;->setMacAddress(Ljava/lang/String;)V

    .line 1927
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableCarLinkDeviceList device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_6
    :goto_4
    return-object v0

    :catch_0
    move-exception p0

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableCarLinkDeviceList error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method public getCallStatus()I
    .locals 2

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getCallStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized getCarLinkDeviceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1867
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarLinkDeviceList,curthread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1870
    :try_start_1
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getBondedDevices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1871
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 1873
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/carplay/CarplayDevice;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1876
    :cond_1
    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mDeviceNameMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1877
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarLinkDeviceList deviceName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarLinkDeviceList deviceMapName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1879
    new-instance v4, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {v4}, Lcom/yftech/car/phonelink/CarLinkDevice;-><init>()V

    const-string v5, "carplay"

    .line 1880
    invoke-virtual {v4, v5}, Lcom/yftech/car/phonelink/CarLinkDevice;->setPhoneType(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 1881
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1884
    :cond_2
    invoke-virtual {v4, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceName(Ljava/lang/String;)V

    goto :goto_2

    .line 1882
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceName(Ljava/lang/String;)V

    .line 1885
    :goto_2
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceId(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->isConnected()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setConnectedStatus(I)V

    .line 1887
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getTransport()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Lcom/yftech/car/phonelink/CarLinkDevice;->setConnectedType(I)V

    .line 1888
    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setMacAddress(Ljava/lang/String;)V

    .line 1889
    invoke-direct {p0, v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->checkDeviceSupport(Lcom/autochips/carplay/CarplayDevice;)Z

    move-result v2

    .line 1890
    invoke-virtual {v4, v2}, Lcom/yftech/car/phonelink/CarLinkDevice;->setStatus(I)V

    .line 1891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarLinkDeviceList isSupport:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1892
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarLinkDeviceList device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1872
    :cond_5
    :goto_4
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    .line 1896
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarLinkDeviceList error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1898
    :cond_6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1866
    monitor-exit p0

    throw v0
.end method

.method public getConnectedCarLinkDeviceList()Lcom/yftech/car/phonelink/CarLinkDevice;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectedDevice()Lcom/autochips/carplay/CarplayDevice;
    .locals 6

    const/4 v0, 0x0

    .line 1363
    :try_start_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1366
    :cond_0
    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1367
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevice carplayDevices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 1368
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1370
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/carplay/CarplayDevice;

    .line 1371
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autochips/carplay/CarplayManager;->getConnectionState(Lcom/autochips/carplay/CarplayDevice;)I

    move-result v3

    .line 1372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "getConnectedDevice carplayDevice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 1377
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-object v0
.end method

.method public getVRStatus()I
    .locals 2

    .line 2048
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isVROn()Z

    move-result p0

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVRStatus isVROn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 3

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " init()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1473
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$17;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$17;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1538
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1539
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/yftech/transfer/phonelink/consumer/ObjectConsumer;

    invoke-direct {v1}, Lcom/yftech/transfer/phonelink/consumer/ObjectConsumer;-><init>()V

    new-instance v2, Lcom/yftech/transfer/phonelink/consumer/ExceptionConsumer;

    invoke-direct {v2}, Lcom/yftech/transfer/phonelink/consumer/ExceptionConsumer;-><init>()V

    .line 1540
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mInitDisposable:Lio/reactivex/disposables/Disposable;

    .line 1541
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mMediaInfo:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    const-string v1, "carplay"

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setPhoneType(Ljava/lang/String;)V

    .line 1542
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carAudioObservor:Lcom/yftech/transfer/callback/CarAudioListenerImp$CarAudioObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarAudioListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarAudioListenerImp$CarAudioObservor;)V

    .line 1543
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->activityChangedObservor:Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->registerObservor(Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;)V

    .line 1544
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carInfoObservor:Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarInfoListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;)V

    .line 1545
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->wifiObservor:Lcom/yftech/transfer/phonelink/receiver/WifiReceiver$WifiObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/WifiReceiver;->registerObservor(Lcom/yftech/transfer/phonelink/receiver/WifiReceiver$WifiObservor;)V

    .line 1546
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carLightObservor:Lcom/yftech/transfer/callback/CarLightListenerImp$CarLightObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarLightListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarLightListenerImp$CarLightObservor;)V

    .line 1547
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carSwcObservor:Lcom/yftech/transfer/callback/CarSwcCallBackImp$CarSwcObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarSwcCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/CarSwcCallBackImp$CarSwcObservor;)V

    .line 1548
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carLocationObservor:Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->registerObservor(Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;)V

    .line 1549
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->registerObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 1552
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 1553
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    .line 1554
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;)V

    .line 1555
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->bluetoothMusicObservor:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;)V

    .line 1556
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 1557
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.autochips.carplay.event.show_ui"

    .line 1558
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yftech.intent.action.ap.dialog.click"

    .line 1559
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "autochips.intent.action.ALTERNATE_VOLUME_CONTROL"

    .line 1560
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1561
    sget-object v1, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1562
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->apLogical()V

    .line 1563
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->initGps()V

    .line 1564
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->configCarPlayLogo()V

    return-void
.end method

.method public initGps()V
    .locals 28

    move-object/from16 v0, p0

    const-string v1, "gpgga"

    .line 2519
    invoke-static {v1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gprmc"

    .line 2520
    invoke-static {v2}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initGps nmeaGPGGA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initGps nmeaGPRMC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2529
    sget-object v3, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v3}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getVehicleSpeed()I

    move-result v3

    int-to-double v13, v3

    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_0

    .line 2534
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    :try_start_0
    const-string v8, ","

    .line 2536
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2537
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nmeaGPGGA:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2538
    aget-object v8, v1, v3

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 2539
    :try_start_1
    invoke-direct {v0, v8, v9}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->formatLatLong(D)D

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v8, 0x4

    .line 2540
    :try_start_2
    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2541
    :try_start_3
    invoke-direct {v0, v8, v9}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->formatLatLong(D)D

    move-result-wide v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v0, 0x9

    .line 2542
    :try_start_4
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v0, 0x7

    .line 2544
    :try_start_5
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-wide/from16 v22, v8

    move-wide v8, v10

    move-wide v4, v15

    move-wide v11, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-wide v15, v8

    :goto_0
    move-wide v8, v6

    goto :goto_1

    :catch_3
    move-exception v0

    move-wide v8, v6

    move-wide v15, v8

    goto :goto_1

    :catch_4
    move-exception v0

    move-wide v15, v6

    move-wide v10, v8

    move-wide v8, v15

    goto :goto_1

    :catch_5
    move-exception v0

    move-wide v8, v6

    move-wide v10, v8

    move-wide v15, v10

    .line 2546
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide/from16 v22, v8

    move-wide v8, v10

    move-wide v4, v15

    goto :goto_2

    :cond_0
    move-wide v4, v6

    move-wide v8, v4

    move-wide/from16 v22, v8

    :goto_2
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    :goto_3
    const/4 v1, 0x0

    if-eqz v2, :cond_1

    .line 2550
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_6
    const-string v0, ","

    .line 2552
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "A"

    .line 2553
    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const/16 v1, 0x8

    .line 2554
    :try_start_7
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    move v1, v2

    goto :goto_4

    :catch_7
    move-exception v0

    .line 2556
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v2, v1

    move-wide v0, v6

    :goto_5
    const-string v3, "ins"

    .line 2559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initGps gpsinfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v2

    move-object/from16 v25, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v22

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v26, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v24

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v25

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    invoke-static {}, Lcom/so/GpsManager;->getInstance()Lcom/so/GpsManager;

    move-result-object v4

    move-wide/from16 v17, v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-wide v7, v8

    move/from16 v21, v10

    move-wide/from16 v9, v17

    move-wide/from16 v19, v11

    move-wide v11, v2

    move-wide/from16 v17, v0

    invoke-virtual/range {v4 .. v21}, Lcom/so/GpsManager;->updateGps(DDDDDDDDI)V

    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected preConnectedDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2033
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDevice:Lcom/autochips/carplay/CarplayDevice;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnable()Z
    .locals 2

    .line 1688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isEnable()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1689
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1692
    :cond_0
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->isEnabled()Z

    move-result v0

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isEnable result:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return v0
.end method

.method public isMusicOn()Z
    .locals 6

    .line 1163
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1170
    :cond_0
    iget v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDeviceTransport:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1171
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDevice:Lcom/autochips/carplay/CarplayDevice;

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v3}, Lcom/autochips/carplay/CarplayManager;->getStreamState(Lcom/autochips/carplay/CarplayDevice;II)I

    move-result v0

    goto :goto_0

    .line 1173
    :cond_1
    iget v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDeviceTransport:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 1174
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDevice:Lcom/autochips/carplay/CarplayDevice;

    const/16 v5, 0x66

    invoke-virtual {v0, v2, v5, v3}, Lcom/autochips/carplay/CarplayManager;->getStreamState(Lcom/autochips/carplay/CarplayDevice;II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v4

    .line 1176
    :goto_0
    iget v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayPlaybackStatus:I

    .line 1177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMusicOn mPreConnectedDevice:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "mPreConnectedDeviceTransport:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPreConnectedDeviceTransport:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "streamState:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "isMediaPlaying:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_3

    if-ne v2, v4, :cond_3

    move v1, v4

    .line 1179
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isMusicOn result:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return v1
.end method

.method public linkName()Ljava/lang/String;
    .locals 0

    const-string p0, "carplay"

    return-object p0
.end method

.method public mute(Z)V
    .locals 1

    .line 1803
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "muteVrAndMap:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1804
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->mute(IZ)V

    .line 1805
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->mute(IZ)V

    return-void
.end method

.method public muteVR(Z)V
    .locals 1

    .line 1809
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->mute(IZ)V

    return-void
.end method

.method public next()V
    .locals 1

    const-string p0, "next()"

    .line 2073
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2074
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 2077
    invoke-virtual {p0, v0}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    const/4 v0, 0x0

    .line 2078
    invoke-virtual {p0, v0}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    return-void
.end method

.method public pause()V
    .locals 3

    const-string v0, "carplaylink_stop_start"

    .line 2117
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2118
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPauseOrPlayD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPauseOrPlayD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2121
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$21;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$21;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    const-wide/16 v1, 0xb4

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPauseOrPlayD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public pauseForResume()V
    .locals 1

    .line 1147
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isMusicOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1149
    iput v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPrePlayStatus:I

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " pauseForResume pre is play,pause()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 3

    const-string v0, "carplaylink_play_start"

    .line 2083
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2084
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPauseOrPlayD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPauseOrPlayD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2087
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$20;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$20;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    const-wide/16 v1, 0xb4

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPauseOrPlayD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public previous()V
    .locals 1

    .line 2064
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 2067
    invoke-virtual {p0, v0}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    const/4 v0, 0x0

    .line 2068
    invoke-virtual {p0, v0}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    return-void
.end method

.method public rejectPhone()V
    .locals 2

    .line 1773
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    .line 1774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " rejectPhone TELEPHONY_DROP"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 1777
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    const/4 p0, 0x3

    .line 1778
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->updateTelehony(I)I

    const/4 p0, 0x0

    .line 1779
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->updateTelehony(I)I

    return-void
.end method

.method public requestCarPlaySiri(I)V
    .locals 1

    .line 2386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestCarPlaySiri:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2387
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2390
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->requestSiri(I)I

    move-result p0

    .line 2391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestCarPlaySiri result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 10

    .line 2149
    iget v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2150
    :goto_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->isAvmShow()Z

    move-result v3

    .line 2151
    sget-object v4, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v4}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->isPowerStandBy()Z

    move-result v4

    .line 2152
    iget v5, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPrePlayStatus:I

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 2153
    :goto_1
    sget-object v6, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v6}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isEngineBoxOn()Z

    move-result v6

    .line 2154
    sget-object v7, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v7}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getAudioSourcePackage()Ljava/lang/String;

    move-result-object v7

    .line 2155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resume callIdel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",avm:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isPlaying:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mPrePlayStatus:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPrePlayStatus:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isPowerStandBy:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isEngineBoxOn:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",audioSourcePackage:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    const-string v3, "com.autochips.carplayapp"

    .line 2160
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    iget v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPrePlayStatus:I

    if-ne v0, v2, :cond_2

    .line 2161
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->play()V

    .line 2162
    iput v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mPrePlayStatus:I

    :cond_2
    return-void
.end method

.method public setAudioOff()V
    .locals 2

    .line 2572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioOff mCallStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isVROn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isVROn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2573
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2576
    :cond_0
    iget v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isVROn()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 2579
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->setAudioOff(Z)I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setAudioOn()V
    .locals 2

    .line 2583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioOn mCallStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isVROn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isVROn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2584
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2587
    :cond_0
    iget v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCallStatus:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isVROn()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2589
    :cond_1
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->setAudioOn()I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public starCallPage()V
    .locals 3

    .line 1784
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    .line 1785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " starCallPage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 1788
    :cond_0
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1789
    invoke-virtual {v0, v2}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    .line 1791
    :cond_1
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->sendRequestUICheckRunnable()V

    const/4 p0, 0x3

    const-string v1, "url:"

    .line 1792
    invoke-virtual {v0, p0, v1}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    return-void
.end method

.method public startPage(I)V
    .locals 2

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1815
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1856
    :pswitch_0
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 1857
    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    .line 1859
    :cond_1
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->sendRequestUICheckRunnable()V

    const/4 p0, 0x6

    const-string p1, "url:"

    .line 1860
    invoke-virtual {v0, p0, p1}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    goto :goto_0

    .line 1853
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    goto :goto_0

    .line 1820
    :pswitch_2
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 1821
    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    .line 1823
    :cond_2
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->sendRequestUICheckRunnable()V

    const/4 p0, 0x3

    const-string p1, "url:"

    .line 1824
    invoke-virtual {v0, p0, p1}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    goto :goto_0

    .line 1846
    :pswitch_3
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 1847
    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    .line 1849
    :cond_3
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->sendRequestUICheckRunnable()V

    const/4 p0, 0x5

    const-string p1, "url:"

    .line 1850
    invoke-virtual {v0, p0, p1}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    goto :goto_0

    .line 1834
    :pswitch_4
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 1835
    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    .line 1837
    :cond_4
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->sendRequestUICheckRunnable()V

    const/4 p0, 0x2

    const-string p1, "url:"

    .line 1838
    invoke-virtual {v0, p0, p1}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    goto :goto_0

    .line 1827
    :pswitch_5
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 1828
    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    .line 1830
    :cond_5
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->sendRequestUICheckRunnable()V

    const-string p0, "url:"

    .line 1831
    invoke-virtual {v0, v1, p0}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startVR()V
    .locals 2

    .line 1753
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    .line 1754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " startVR()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x2

    .line 1757
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->requestSiri(I)I

    const/4 p0, 0x3

    .line 1758
    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->requestSiri(I)I

    return-void
.end method

.method public tel(Ljava/lang/String;)V
    .locals 3

    .line 2405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2406
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2409
    :cond_0
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2410
    invoke-virtual {v0, v2}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    .line 2412
    :cond_1
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->sendRequestUICheckRunnable()V

    const/4 p0, 0x6

    .line 2413
    invoke-virtual {v0, p0, p1}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    move-result p0

    .line 2414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tel result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public uninit()V
    .locals 2

    .line 2007
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mInitDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mInitDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2009
    :cond_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2011
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mCarplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->unregisterCallback(Lcom/autochips/carplay/CarplayManager$CarplayCallback;)V

    .line 2012
    :cond_1
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->wifiObservor:Lcom/yftech/transfer/phonelink/receiver/WifiReceiver$WifiObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/WifiReceiver;->unregisterObservor(Lcom/yftech/transfer/phonelink/receiver/WifiReceiver$WifiObservor;)V

    .line 2013
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carLightObservor:Lcom/yftech/transfer/callback/CarLightListenerImp$CarLightObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarLightListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarLightListenerImp$CarLightObservor;)V

    .line 2014
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carAudioObservor:Lcom/yftech/transfer/callback/CarAudioListenerImp$CarAudioObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarAudioListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarAudioListenerImp$CarAudioObservor;)V

    .line 2015
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carInfoObservor:Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarInfoListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;)V

    .line 2016
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->activityChangedObservor:Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->unregisterObservor(Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;)V

    .line 2017
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2018
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    .line 2019
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carSwcObservor:Lcom/yftech/transfer/callback/CarSwcCallBackImp$CarSwcObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarSwcCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarSwcCallBackImp$CarSwcObservor;)V

    .line 2020
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carLocationObservor:Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->unregisterObservor(Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;)V

    .line 2021
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 2022
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->unregisterObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 2024
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;)V

    .line 2025
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->bluetoothMusicObservor:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;

    invoke-static {p0}, Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;)V

    return-void
.end method

.method public updateCarPlayMedia(I)V
    .locals 1

    .line 2376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCarPlayMedia:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2377
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2380
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    move-result p0

    .line 2381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCarPlayMedia result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public updateCarPlayTelehony(I)V
    .locals 1

    .line 2395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCarPlayTelehony:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2396
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2399
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->updateTelehony(I)I

    move-result p0

    .line 2400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCarPlayTelehony result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized updateCustomSentence(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;I)V
    .locals 10

    monitor-enter p0

    .line 2232
    :try_start_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    .line 2233
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getConnectedDevice()Lcom/autochips/carplay/CarplayDevice;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2235
    monitor-exit p0

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 2237
    monitor-exit p0

    return-void

    .line 2238
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/utils/TimeUtils;->nowToZeroTimeStamp()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v5, v2, v3

    const-string v2, "U"

    .line 2240
    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne p1, v4, :cond_2

    const-string p1, "D"

    :goto_0
    move-object v6, p1

    goto :goto_1

    .line 2242
    :cond_2
    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne p1, v4, :cond_3

    const-string p1, "P"

    goto :goto_0

    .line 2244
    :cond_3
    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne p1, v4, :cond_4

    const-string p1, "R"

    goto :goto_0

    .line 2246
    :cond_4
    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne p1, v4, :cond_5

    const-string p1, "N"

    goto :goto_0

    :cond_5
    move-object v6, v2

    :goto_1
    const/4 p1, 0x0

    if-lez p2, :cond_6

    const/4 p1, 0x1

    :cond_6
    move v7, p1

    const/4 v8, 0x1

    int-to-float p1, p2

    mul-float/2addr p1, v3

    const/high16 p2, 0x45610000    # 3600.0f

    div-float/2addr p1, p2

    .line 2253
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2254
    new-instance p2, Lcom/autochips/carplay/CarplayVehicleSpeed$SpeedSampleData;

    const/4 v2, 0x0

    invoke-direct {p2, v2, p1}, Lcom/autochips/carplay/CarplayVehicleSpeed$SpeedSampleData;-><init>(FF)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    new-instance p1, Lcom/autochips/carplay/CarplayVehicleSpeed;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/autochips/carplay/CarplayVehicleSpeed;-><init>(FLjava/lang/String;ZILjava/util/List;)V

    .line 2256
    invoke-virtual {v0, v1, p1}, Lcom/autochips/carplay/CarplayManager;->updateCustomSentence(Lcom/autochips/carplay/CarplayDevice;Lcom/autochips/carplay/CarplayVehicleSpeed;)I

    move-result p1

    .line 2257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCustomSentence result :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2259
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2231
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateLocationInfo()V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "updateLocationInfo()"

    .line 2263
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->uploadINS()V

    .line 2266
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->isNmeaPropFalse()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2268
    monitor-exit p0

    return-void

    .line 2269
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    .line 2270
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getConnectedDevice()Lcom/autochips/carplay/CarplayDevice;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 2272
    monitor-exit p0

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 2274
    monitor-exit p0

    return-void

    .line 2275
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 2277
    monitor-exit p0

    return-void

    .line 2279
    :cond_3
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->getLocationDataType(Lcom/autochips/carplay/CarplayDevice;)I

    move-result v2

    .line 2280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carplay updateLocationInfo locationDataType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 2281
    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2282
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_4

    .line 2283
    iget-object v5, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->mLocationMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "&"

    .line 2284
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2287
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 2288
    sget-object v8, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-virtual {v8, v7}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->getNmeaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2289
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 2290
    sget-object v4, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v4}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getVehicleSpeed()I

    move-result v4

    .line 2291
    sget-object v5, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v5}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object v5

    if-nez v4, :cond_a

    .line 2293
    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne v4, v5, :cond_a

    const-string v4, "GSV"

    .line 2294
    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0xb4

    const-wide v9, 0x4066800000000000L    # 180.0

    if-eqz v4, :cond_7

    const-string v4, ","

    .line 2295
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    .line 2296
    aget-object v7, v4, v6

    .line 2298
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2299
    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v5, v7, v9

    if-gtz v5, :cond_5

    add-double/2addr v7, v9

    goto :goto_2

    :cond_5
    sub-double/2addr v7, v9

    .line 2304
    :goto_2
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    goto :goto_3

    .line 2306
    :cond_6
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    :goto_3
    const-string v5, ","

    .line 2308
    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_7
    const-string v4, "RMC"

    .line 2309
    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, ","

    .line 2310
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    .line 2311
    aget-object v7, v4, v6

    .line 2312
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 2314
    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v5, v7, v9

    if-gtz v5, :cond_8

    add-double/2addr v7, v9

    goto :goto_4

    :cond_8
    sub-double/2addr v7, v9

    .line 2319
    :goto_4
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    goto :goto_5

    .line 2321
    :cond_9
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    :goto_5
    const-string v5, ","

    .line 2323
    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 2326
    :cond_a
    :goto_6
    invoke-virtual {v0, v1, v8}, Lcom/autochips/carplay/CarplayManager;->updateLocationInfo(Lcom/autochips/carplay/CarplayDevice;Ljava/lang/String;)I

    move-result v4

    .line 2327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "carplay updateLocationInfo nmeaValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",result :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 2334
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carplay updateLocationInfo error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2338
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 2262
    monitor-exit p0

    throw v0
.end method

.method public uploadINS()V
    .locals 26

    .line 2594
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getSwcAngle()F

    move-result v0

    .line 2595
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getVehicleSpeed()I

    move-result v1

    .line 2596
    sget-object v2, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v2}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object v2

    .line 2597
    sget-object v3, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v3}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getWheelSpeedFL()F

    move-result v3

    .line 2598
    sget-object v4, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v4}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getWheelSpeedFR()F

    move-result v4

    .line 2599
    sget-object v5, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v5}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getWheelSpeedRL()F

    move-result v5

    .line 2600
    sget-object v6, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v6}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getWheelSpeedRR()F

    move-result v6

    .line 2602
    sget-object v7, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/4 v8, 0x1

    if-ne v2, v7, :cond_0

    move v2, v8

    goto :goto_0

    .line 2604
    :cond_0
    sget-object v7, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne v2, v7, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 2606
    :cond_1
    sget-object v7, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne v2, v7, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 2608
    :cond_2
    sget-object v7, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne v2, v7, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    const-string v7, "ins"

    .line 2610
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "carinfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v8, v3, v7

    if-eqz v8, :cond_5

    cmpl-float v8, v4, v7

    if-eqz v8, :cond_5

    cmpl-float v8, v5, v7

    if-eqz v8, :cond_5

    cmpl-float v7, v6, v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 2613
    :cond_4
    invoke-static {}, Lcom/so/GpsManager;->getInstance()Lcom/so/GpsManager;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-double v10, v7

    float-to-double v12, v3

    float-to-double v14, v4

    float-to-double v3, v5

    move-wide/from16 v16, v3

    float-to-double v3, v6

    move-wide/from16 v18, v3

    float-to-double v3, v0

    move-wide/from16 v20, v3

    int-to-double v0, v1

    move-wide/from16 v22, v0

    const/16 v25, 0x1

    move/from16 v24, v2

    invoke-virtual/range {v9 .. v25}, Lcom/so/GpsManager;->updateEncoder(DDDDDDDII)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method
