package com.yftech.transfer.phonelink.helper;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.audioadapter.V1_0.ObdServiceManager;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import com.autochips.carplay.CarplayCall;
import com.autochips.carplay.CarplayDevice;
import com.autochips.carplay.CarplayManager;
import com.autochips.carplay.CarplayPlaybackStatus;
import com.autochips.carplay.CarplayVehicleSpeed;
import com.autochips.carplay.PlaybackStatusInfo;
import com.so.GpsManager;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import com.utils.CarPlayUtils;
import com.utils.LogUtil;
import com.utils.TimeUtils;
import com.utils.ToastUtil;
import com.utils.WIfiUtils;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.car.phonelink.PhoneLinkMediaInfo;
import com.yftech.hicar.sdk.HiCarStateConst;
import com.yftech.transfer.callback.BluetoothMusicCallBackImp;
import com.yftech.transfer.callback.BluetoothPhoneCallBackImp;
import com.yftech.transfer.callback.BluetoothSettingsCallBackImp;
import com.yftech.transfer.callback.CarAudioListenerImp;
import com.yftech.transfer.callback.CarInfoListenerImp;
import com.yftech.transfer.callback.CarLightListenerImp;
import com.yftech.transfer.callback.CarPowerListenerImp;
import com.yftech.transfer.callback.CarSwcCallBackImp;
import com.yftech.transfer.phonelink.CarPhoneLinkMediaService;
import com.yftech.transfer.phonelink.CarPhoneLinkService;
import com.yftech.transfer.phonelink.consumer.ExceptionConsumer;
import com.yftech.transfer.phonelink.consumer.ObjectConsumer;
import com.yftech.transfer.phonelink.manager.BlueToothManager;
import com.yftech.transfer.phonelink.manager.CarControlManager;
import com.yftech.transfer.phonelink.manager.CarLocationManager;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.phonelink.receiver.ActivityChangedReceiver;
import com.yftech.transfer.phonelink.receiver.AvmserviceReceiver;
import com.yftech.transfer.phonelink.receiver.WifiReceiver;
import com.yftech.transfer.service.CarTransferApplication;
import com.yftech.transfer.service.R;
import com.yftech.transfer.service.utils.AppUtil;
import com.yftech.transfer.service.utils.SettingsUtil;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.MpuProjectManager;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarPlayLinkHelper extends BasicLinkHelper {
    private static final String CARPLAY_MUSIC_DISCONNECT_STATUS = "music_disconnect_status";
    private static final String CARPLAY_UI_CHANGE = "com.autochips.carplay.event.show_ui";
    private static final String CARPLAY_UI_SHOW = "ui_show";
    public static final String KEY_NMEA_GPGGA = "gpgga";
    public static final String KEY_NMEA_GPRMC = "gprmc";
    private static final String SETTING_AP_CHANGE = "com.yftech.intent.action.ap.dialog.click";
    private static final int SETTING_AP_CHANGE_CLICK_CANCEL = 0;
    private static final int SETTING_AP_CHANGE_CLICK_OK = 1;
    private static final HashSet<CarPlayObservor> observors = new HashSet<>();
    private final int TYPE_FASTAUI;
    private final String VALUE_TRANSSTATE_D;
    private final String VALUE_TRANSSTATE_N;
    private final String VALUE_TRANSSTATE_P;
    private final String VALUE_TRANSSTATE_R;
    private final String VALUE_TRANSSTATE_U;
    private ActivityChangedReceiver.ActivityChangedObservor activityChangedObservor;
    private AvmserviceReceiver.AvmserviceObservor avmserviceObservor;
    private BluetoothMusicCallBackImp.BluetoothMusicObservor bluetoothMusicObservor;
    private BluetoothPhoneCallBackImp.BluetoothPhoneObservor bluetoothPhoneObservor;
    private BluetoothSettingsCallBackImp.BluetoothSettingsObservor bluetoothSettingsObservor;
    private CarAudioListenerImp.CarAudioObservor carAudioObservor;
    private CarInfoListenerImp.CarInfoObservor carInfoObservor;
    private CarLightListenerImp.CarLightObservor carLightObservor;
    private CarLocationManager.CarLocationObservor carLocationObservor;
    private CarPowerListenerImp.CarPowerObservor carPowerObservor;
    private CarSwcCallBackImp.CarSwcObservor carSwcObservor;
    private boolean isCarplayDisplay;
    private boolean isDisconnectFromApi;
    private boolean isFastAuiShow;
    private boolean isPreCarplayDisplay;
    private boolean isVREnable;
    private CarplayDevice mApFailDevice;
    private AudioManager mAudioManager;
    private String mCarLinkConnectedAddress;
    private CarplayManager.CarplayCallback mCarplayCallback;
    private Disposable mConnectDeviceLaterD;
    private Disposable mConnectPlayD;
    private Runnable mHandUpFastAuiRunnable;
    private Thread mHandUpFastAuiThread;
    private Disposable mInitDisposable;
    private boolean mLastEnableStatus;
    private ConnectivityManager.OnStartTetheringCallback mOnStartTetheringCallback;
    private Disposable mPauseOrPlayD;
    private CarplayDevice mPreConnectedDevice;
    private int mPreConnectedDeviceTransport;
    private Runnable mRGearCarplayDismissRunnable;
    private Disposable mReConnectApFailD;
    private BroadcastReceiver mReceiver;
    private final Runnable mRequestUICheckRunnable;
    private Runnable mRunnable;
    private WirelessObdThread mWirelessObdThread;
    private AudioManager.OnAudioFocusChangeListener onVrAuxFocusChangeListener;
    private AudioManager.OnAudioFocusChangeListener onVrFocusChangeListener;
    private WifiReceiver.WifiObservor wifiObservor;
    private int mCallStatus = 0;
    private int mPrePlayStatus = 0;
    private PhoneLinkMediaInfo mMediaInfo = new PhoneLinkMediaInfo();
    private List<CarplayDevice> mCarplayDevices = new ArrayList();
    private Map<String, String> mDeviceNameMap = new HashMap();
    private final int STREAM_CARPLAY_VR = 17;
    private final int STREAM_CARPLAY_MAP = 18;
    private final String CERTIFICATE_CONST = "ro.atc.carplay.certificate";
    private final String SETTINGS_KEY_ISCANCELAUTOSHOW = "isCancelAutoShow";
    private final int SETTINGS_VALUE_ISCANCELAUTOSHOW_SET = 1;
    private final int SETTINGS_VALUE_ISCANCELAUTOSHOW_NONE = 0;
    private final Map<Integer, String> mLocationMap = new HashMap();
    private int mCarplayPlaybackStatus = 0;
    private double gpsimer = -1.0d;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarPlayObservor {
        public void onServiceConnected() {
        }
    }

    private double formatLatLong(double d) {
        return ((int) (d / 100.0d)) + ((d - (r4 * 100)) / 60.0d);
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public CarLinkDevice getConnectedCarLinkDeviceList() {
        return null;
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public String linkName() {
        return "carplay";
    }

    public CarPlayLinkHelper() {
        this.mLocationMap.put(2, "$GPGGA&$GNGGA&$GBGGA");
        this.mLocationMap.put(4, "$GPRMC&$GNRMC&$GBRMC");
        this.mLocationMap.put(8, "$GPGSV&$GNGSV&$GBGSV");
        this.mLocationMap.put(128, "$GPHDT&$GNHDT&$GBHDT");
        this.mLocationMap.put(16, "$PASCD");
        this.mLocationMap.put(32, "$PAGCD");
        this.mLocationMap.put(64, "$PAACD");
        this.VALUE_TRANSSTATE_U = "U";
        this.VALUE_TRANSSTATE_P = "P";
        this.VALUE_TRANSSTATE_R = "R";
        this.VALUE_TRANSSTATE_D = "D";
        this.VALUE_TRANSSTATE_N = "N";
        this.mReceiver = new BroadcastReceiver() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                char c;
                String action = intent.getAction();
                LogUtil.i("onReceive action:" + action);
                if (action == null) {
                    return;
                }
                int hashCode = action.hashCode();
                int i = -1;
                if (hashCode == -213510307) {
                    if (action.equals(CarPlayLinkHelper.SETTING_AP_CHANGE)) {
                        c = 2;
                    }
                    c = 65535;
                } else if (hashCode != -205191591) {
                    if (hashCode == 221965529 && action.equals(CarPlayLinkHelper.CARPLAY_UI_CHANGE)) {
                        c = 0;
                    }
                    c = 65535;
                } else {
                    if (action.equals("autochips.intent.action.ALTERNATE_VOLUME_CONTROL")) {
                        c = 1;
                    }
                    c = 65535;
                }
                switch (c) {
                    case 0:
                        CarPlayLinkHelper.this.isCarplayDisplay = intent.getBooleanExtra(CarPlayLinkHelper.CARPLAY_UI_SHOW, false);
                        if (CarPlayLinkHelper.this.isCarplayDisplay) {
                            CarTransferApplication.getHandler().removeCallbacks(CarPlayLinkHelper.this.mRequestUICheckRunnable);
                        } else {
                            i = CarplayManager.getDefaultManager().getResourceState().getMainScreen();
                            if (i != 1) {
                                CarTransferApplication.getHandler().removeCallbacks(CarPlayLinkHelper.this.mRequestUICheckRunnable);
                            }
                        }
                        LogUtil.i("carplayReceiver:" + intent.getAction() + "," + CarPlayLinkHelper.this.isCarplayDisplay + ",isFastAuiShow:" + CarPlayLinkHelper.this.isFastAuiShow + ",mainScreen:" + i);
                        if (CarPlayLinkHelper.this.isFastAuiShow && CarPlayLinkHelper.this.isCarplayDisplay) {
                            MpuProjectManager.get().setSystemCmd("ps -e |grep -E \"fastAui\"|awk '{ cmd=\"kill -SIGCONT \"$2;system(cmd) }'");
                            LogUtil.i(CarPlayLinkHelper.this.TAG + "carplayReceiver: SIGCONT");
                            return;
                        }
                        return;
                    case 1:
                        CarPlayLinkHelper.this.isVREnable = intent.getBooleanExtra("state", false);
                        LogUtil.i("ACTION_ALTERNATE_VOLUME_CONTROL isVREnable:" + CarPlayLinkHelper.this.isVREnable);
                        if (CarPlayLinkHelper.this.isVREnable || CarPlayLinkHelper.this.mAudioManager == null) {
                            return;
                        }
                        LogUtil.i("ACTION_ALTERNATE_VOLUME_CONTROL abandonAudioFocus vr");
                        CarPlayLinkHelper.this.mAudioManager.abandonAudioFocus(CarPlayLinkHelper.this.onVrFocusChangeListener);
                        return;
                    case 2:
                        LogUtil.i("SETTING_AP_CHANGE action");
                        if (CarPlayLinkHelper.this.mReConnectApFailD != null) {
                            CarPlayLinkHelper.this.mReConnectApFailD.dispose();
                        }
                        if (intent.getIntExtra("click", 0) == 1) {
                            CarPlayLinkHelper.this.mReConnectApFailD = AppUtil.intervalOnThread(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.1.1
                                @Override // io.reactivex.functions.Consumer
                                public void accept(Long l) {
                                    LogUtil.i("SETTING_AP_CHANGE aLong:" + l);
                                    if (l.intValue() >= 10) {
                                        if (CarPlayLinkHelper.this.mReConnectApFailD != null) {
                                            CarPlayLinkHelper.this.mReConnectApFailD.dispose();
                                            return;
                                        }
                                        return;
                                    }
                                    String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
                                    LogUtil.i("SETTING_AP_CHANGE linkStatus:" + connectedLinkStatus);
                                    LogUtil.i("SETTING_AP_CHANGE mApFailDevice:" + CarPlayLinkHelper.this.mApFailDevice);
                                    if (!SchedulerSupport.NONE.equals(connectedLinkStatus)) {
                                        if (CarPlayLinkHelper.this.mReConnectApFailD != null) {
                                            CarPlayLinkHelper.this.mReConnectApFailD.dispose();
                                            return;
                                        }
                                        return;
                                    }
                                    if (CarPlayLinkHelper.this.mApFailDevice == null) {
                                        if (CarPlayLinkHelper.this.mReConnectApFailD != null) {
                                            CarPlayLinkHelper.this.mReConnectApFailD.dispose();
                                            return;
                                        }
                                        return;
                                    }
                                    CarplayManager defaultManager = CarplayManager.getDefaultManager();
                                    if (defaultManager != null) {
                                        int apState = WifiReceiver.getApState();
                                        LogUtil.i("SETTING_AP_CHANGE mApState:" + apState);
                                        if (apState == 13) {
                                            LogUtil.i("SETTING_AP_CHANGE connect:" + defaultManager.connect(CarPlayLinkHelper.this.mApFailDevice));
                                            if (CarPlayLinkHelper.this.mReConnectApFailD != null) {
                                                CarPlayLinkHelper.this.mReConnectApFailD.dispose();
                                            }
                                        }
                                    }
                                }
                            }, 600L);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.wifiObservor = new WifiReceiver.WifiObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.2
            private Disposable apEnableD;
            private int mWifiState = 4;
            private int mApState = 14;

            @Override // com.yftech.transfer.phonelink.receiver.WifiReceiver.WifiObservor
            public void onWifiStateChanged(int i) {
                LogUtil.i("onWifiStateChanged state:" + i);
            }

            @Override // com.yftech.transfer.phonelink.receiver.WifiReceiver.WifiObservor
            public void onApStateChanged(int i) {
                LogUtil.i("onApStateChanged mApState:" + this.mApState + ",mWifiState:" + this.mWifiState);
            }

            private Disposable apEnableLater() {
                if (this.apEnableD != null) {
                    this.apEnableD.dispose();
                }
                return AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.2.1
                    @Override // io.reactivex.functions.Consumer
                    public void accept(Long l) {
                        LogUtil.i("onApStateChanged apLogical mWifiState：" + AnonymousClass2.this.mWifiState);
                        if (AnonymousClass2.this.mWifiState == 2 || AnonymousClass2.this.mWifiState == 3) {
                            LogUtil.i("onApStateChanged apLogical mWifiState open return");
                            return;
                        }
                        LogUtil.i("onApStateChanged apLogical mApState：" + AnonymousClass2.this.mApState);
                        if (AnonymousClass2.this.mApState != 13 && AnonymousClass2.this.mApState != 12) {
                            CarPlayLinkHelper.this.apLogical();
                        } else {
                            LogUtil.i("onApStateChanged apLogical mApState open return");
                        }
                    }
                }, 8000L);
            }
        };
        this.bluetoothSettingsObservor = new BluetoothSettingsCallBackImp.BluetoothSettingsObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.3
            @Override // com.yftech.transfer.callback.BluetoothSettingsCallBackImp.BluetoothSettingsObservor
            public void onBluetoothConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
                Log.i(CarPlayLinkHelper.this.TAG, "onBluetoothConnectStateChanged:" + bluetoothDevice + "," + i);
                if (i == 2) {
                    String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                    char c = 65535;
                    if (curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                        c = 0;
                    }
                    if (c == 0 && CarPlayLinkHelper.this.isConnected()) {
                        BlueToothManager.ins.setEnable(false);
                    }
                }
            }

            @Override // com.yftech.transfer.callback.BluetoothSettingsCallBackImp.BluetoothSettingsObservor
            public void onBluetoothStateChanged(int i) {
                super.onBluetoothStateChanged(i);
                Log.d(CarPlayLinkHelper.this.TAG, "onBluetoothStateChanged: " + i);
                if (12 == i) {
                    String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                    char c = 65535;
                    if (curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                        c = 0;
                    }
                    if (c == 0 && CarPlayLinkHelper.this.isConnected()) {
                        BlueToothManager.ins.setEnable(false);
                    }
                }
            }
        };
        this.activityChangedObservor = new ActivityChangedReceiver.ActivityChangedObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.4
            @Override // com.yftech.transfer.phonelink.receiver.ActivityChangedReceiver.ActivityChangedObservor
            public void onChanged(String str, String str2) {
                LogUtil.i("onChanged:" + str + "," + str2);
                String previousPhoneLinkStatus = SettingsUtil.getPreviousPhoneLinkStatus();
                boolean isConnected = CarPlayLinkHelper.this.isConnected();
                LogUtil.i("onChanged,prePhoneLinkStatus:" + previousPhoneLinkStatus + ",connected:" + isConnected);
                if (isConnected) {
                    CarTransferApplication.getHandler().removeCallbacks(CarPlayLinkHelper.this.mRequestUICheckRunnable);
                }
                if ("carplay".equals(previousPhoneLinkStatus)) {
                    CarPlayLinkHelper.this.cancelAutoShow();
                }
            }
        };
        this.carLightObservor = new CarLightListenerImp.CarLightObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.5
            @Override // com.yftech.transfer.callback.CarLightListenerImp.CarLightObservor
            public void onSmallLightStateChanged(boolean z) {
                LogUtil.i("onSmallLightStateChanged isEnabled:" + z);
                CarplayManager defaultManager = CarplayManager.getDefaultManager();
                if (defaultManager == null) {
                    return;
                }
                defaultManager.setNightMode(z);
            }
        };
        this.carInfoObservor = new CarInfoListenerImp.CarInfoObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.6
            private final int CA1105_CALC_MISS = 1;
            private int calc;
            private ICarInfo.GearPosition mPreGearPosition;

            @Override // com.yftech.transfer.callback.CarInfoListenerImp.CarInfoObservor
            public void onVehicleSpeedChanged(int i) {
            }

            @Override // com.yftech.transfer.callback.CarInfoListenerImp.CarInfoObservor
            public void onDayNightModeChanged(ICarInfo.DayNightMode dayNightMode) {
                CarplayManager defaultManager;
                LogUtil.i("onDayNightModeChanged mode:" + dayNightMode);
                this.calc = this.calc + 1;
                String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                LogUtil.i("onDayNightModeChanged calc:" + this.calc);
                if ((ProductDeviceManager.PRODUCT_CA1105.equals(curProductDevice) && this.calc == 1) || (defaultManager = CarplayManager.getDefaultManager()) == null) {
                    return;
                }
                if (ICarInfo.DayNightMode.NIGHT == dayNightMode) {
                    defaultManager.setNightMode(true);
                } else if (ICarInfo.DayNightMode.DAY == dayNightMode) {
                    defaultManager.setNightMode(false);
                }
            }

            @Override // com.yftech.transfer.callback.CarInfoListenerImp.CarInfoObservor
            public void onGearPositionChanged(ICarInfo.GearPosition gearPosition) {
                LogUtil.i(CarPlayLinkHelper.this.TAG + "onGearPositionChanged gear:" + gearPosition + ",isPreCarplayDisplay:" + CarPlayLinkHelper.this.isPreCarplayDisplay);
                if (gearPosition == ICarInfo.GearPosition.__UNKNOWN__ || gearPosition == ICarInfo.GearPosition.REVERSE || !CarPlayLinkHelper.this.isPreCarplayDisplay) {
                    return;
                }
                CarTransferApplication.getHandler().removeCallbacks(CarPlayLinkHelper.this.mRGearCarplayDismissRunnable);
                CarTransferApplication.getHandler().postDelayed(CarPlayLinkHelper.this.mRunnable, 10L);
                CarPlayLinkHelper.this.isPreCarplayDisplay = false;
                if (CarPlayLinkHelper.this.mHandUpFastAuiThread == null) {
                    CarPlayLinkHelper.this.mHandUpFastAuiThread = new Thread(CarPlayLinkHelper.this.mHandUpFastAuiRunnable);
                    CarPlayLinkHelper.this.mHandUpFastAuiThread.start();
                }
            }
        };
        this.TYPE_FASTAUI = 3;
        this.mHandUpFastAuiRunnable = new Runnable() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.7
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.i(CarPlayLinkHelper.this.TAG + "mHandUpFastAuiRunnable SIGSTOP,isFastAuiShow:" + CarPlayLinkHelper.this.isFastAuiShow);
                if (CarPlayLinkHelper.this.isFastAuiShow) {
                    MpuProjectManager.get().setSystemCmd("ps -e |grep -E \"fastAui\"|awk '{ cmd=\"kill -SIGSTOP \"$2;system(cmd) }' ");
                    try {
                        Thread.sleep(500L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    MpuProjectManager.get().setSystemCmd("ps -e |grep -E \"fastAui\"|awk '{ cmd=\"kill -SIGCONT \"$2;system(cmd) }'");
                    LogUtil.i(CarPlayLinkHelper.this.TAG + "mHandUpFastAuiRunnable SIGCONT");
                    CarPlayLinkHelper.this.mHandUpFastAuiThread = null;
                }
            }
        };
        this.avmserviceObservor = new AvmserviceReceiver.AvmserviceObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.8
            @Override // com.yftech.transfer.phonelink.receiver.AvmserviceReceiver.AvmserviceObservor
            public void onChanged(int i, boolean z) {
                ICarInfo.GearPosition gearPosition = CarControlManager.ins.getGearPosition();
                LogUtil.i(CarPlayLinkHelper.this.TAG + " avmserviceObservor onChanged:" + i + "," + z + ",isCarplayDisplay:" + CarPlayLinkHelper.this.isCarplayDisplay + ",gearPosition:" + gearPosition);
                if (z && ICarInfo.GearPosition.REVERSE == gearPosition) {
                    if (!CarPlayLinkHelper.this.isCarplayDisplay) {
                        CarPlayLinkHelper.this.isPreCarplayDisplay = false;
                    } else {
                        CarPlayLinkHelper.this.isPreCarplayDisplay = CarPlayLinkHelper.this.isCarplayDisplay;
                        CarTransferApplication.getHandler().removeCallbacks(CarPlayLinkHelper.this.mRunnable);
                        CarTransferApplication.getHandler().postDelayed(CarPlayLinkHelper.this.mRGearCarplayDismissRunnable, 1000L);
                    }
                    if (i == 3) {
                        CarPlayLinkHelper.this.isFastAuiShow = true;
                        CarPlayLinkHelper.this.mHandUpFastAuiThread = null;
                    }
                }
                if (z || i != 3) {
                    return;
                }
                CarPlayLinkHelper.this.isFastAuiShow = false;
            }
        };
        this.mRunnable = new Runnable() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.9
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.i(CarPlayLinkHelper.this.TAG + "mRunnable show Carplay");
                CarplayManager defaultManager = CarplayManager.getDefaultManager();
                if (defaultManager != null) {
                    if (defaultManager.getResourceState().getMainScreen() == 1) {
                        defaultManager.stopVideo(true);
                    }
                    CarPlayLinkHelper.this.sendRequestUICheckRunnable();
                    defaultManager.requestDeviceUI(1, "url:");
                }
            }
        };
        this.mRGearCarplayDismissRunnable = new Runnable() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.10
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.i(CarPlayLinkHelper.this.TAG + "mRGearCarplayDismissRunnable hide Carplay");
                CarplayManager defaultManager = CarplayManager.getDefaultManager();
                if (defaultManager != null) {
                    defaultManager.stopVideo(true);
                }
            }
        };
        this.mCarplayCallback = new CarplayManager.CarplayCallback() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.11
            private final int ACCESSORY_UI_HIDE = 7;
            private Disposable vrAuxTimerD;
            private Disposable vrTimerD;

            public void onRequestAccessoryUI(int i) {
                LogUtil.i("onRequestAccessoryUI:" + i);
                if (i == 7) {
                    CarPlayLinkHelper.this.cancelAutoShow();
                }
            }

            public void onEnableStateChanged(int i, int i2) {
                LogUtil.i("onEnableStateChanged:" + i + "," + i2);
                char c = 65535;
                if (i2 != 2) {
                    if (i2 == 0) {
                        ICarPower.PowerState powerState = CarControlManager.ins.getPowerState();
                        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                        CarPlayLinkHelper.this.mCarplayCallback.onConnectionStateChanged(CarPlayLinkHelper.this.mPreConnectedDevice, 0);
                        int hashCode = curProductDevice.hashCode();
                        if (hashCode != 201076150) {
                            if (hashCode != 202029462) {
                                if (hashCode != 1292373688) {
                                    if (hashCode == 2039290871 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
                                        c = 0;
                                    }
                                } else if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                                    c = 1;
                                }
                            } else if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                                c = 3;
                            }
                        } else if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                            c = 2;
                        }
                        switch (c) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                if (powerState != ICarPower.PowerState.SYSTEMON) {
                                    WIfiUtils.setApEnable(false, null);
                                    break;
                                }
                                break;
                        }
                    }
                } else {
                    int i3 = SettingsUtil.getInt("isCancelAutoShow");
                    LogUtil.i("onEnableStateChanged STATE_ON setResult:" + i3);
                    if (1 == i3 && CarPlayLinkHelper.this.cancelAutoShow() == 0) {
                        SettingsUtil.putInt("isCancelAutoShow", 0);
                    }
                    String curProductDevice2 = ProductDeviceManager.ins.getCurProductDevice();
                    if (curProductDevice2.hashCode() == 1979690371 && curProductDevice2.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                        c = 0;
                    }
                    if (c == 0) {
                        PhoneLink phoneLinkByType = ProductDeviceManager.ins.getPhoneLinkByType();
                        LogUtil.i(CarPlayLinkHelper.this.TAG + " onEnableStateChanged STATE_ON phoneLinkByType:" + phoneLinkByType);
                        if (1 == phoneLinkByType.getType()) {
                            ProductDeviceManager.ins.resetUsb();
                        }
                    }
                }
                LogUtil.i("onEnableStateChanged mLastEnableStatus:" + CarPlayLinkHelper.this.mLastEnableStatus);
                if (i2 == 3 || i2 == 1) {
                    return;
                }
                if (CarPlayLinkHelper.this.mLastEnableStatus == (i2 == 2)) {
                    return;
                }
                if (CarPlayLinkHelper.this.mLastEnableStatus) {
                    CarplayManager.getDefaultManager().enable();
                } else {
                    CarplayManager.getDefaultManager().disable();
                }
            }

            public void onFirstConnectRequest(CarplayDevice carplayDevice) {
                LogUtil.i("onFirstConnectRequest device:" + carplayDevice);
                if (carplayDevice == null) {
                    return;
                }
                String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                char c = 65535;
                switch (curProductDevice.hashCode()) {
                    case 201076150:
                        if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 202029462:
                        if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 1292373688:
                        if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1979690371:
                        if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                            c = 0;
                            break;
                        }
                        break;
                    case 2039290871:
                        if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        String iOSPriorityLink = ProductDeviceManager.ins.getIOSPriorityLink();
                        LogUtil.i("onFirstConnectRequest iosLink:" + iOSPriorityLink);
                        if ("carplay".equals(iOSPriorityLink)) {
                            CarplayManager.getDefaultManager().confirmFirstConnect(carplayDevice);
                            return;
                        }
                        return;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        int transport = carplayDevice.getTransport();
                        LogUtil.i("onFirstConnectRequest transport:" + transport);
                        if (transport == 1) {
                            CarplayManager.getDefaultManager().confirmFirstConnect(carplayDevice);
                            return;
                        }
                        if (CarPlayUtils.isCarplayCertificateOn() && CarPlayLinkHelper.this.mCarLinkConnectedAddress != null && !CarPlayLinkHelper.this.mCarLinkConnectedAddress.isEmpty() && CarPlayLinkHelper.this.mCarLinkConnectedAddress.equals(carplayDevice.getDeviceId())) {
                            CarplayManager.getDefaultManager().confirmFirstConnect(carplayDevice);
                            return;
                        }
                        String name = carplayDevice.getName();
                        String deviceId = carplayDevice.getDeviceId();
                        LogUtil.i("onFirstConnectRequest deviceName:" + name + "deviceId:" + deviceId);
                        if (name == null || deviceId == null || name.equals(deviceId)) {
                            return;
                        }
                        CarLinkDevice carLinkDevice = new CarLinkDevice();
                        carLinkDevice.setPhoneType("carplay");
                        carLinkDevice.setDeviceName(name);
                        carLinkDevice.setDeviceId(deviceId);
                        carLinkDevice.setMacAddress(deviceId);
                        CarPhoneLinkService.sendShowCarplayConfirmFirstConnectDialog(carLinkDevice);
                        return;
                    default:
                        return;
                }
            }

            public void onCallStateChanged(CarplayCall carplayCall) {
                if (carplayCall == null) {
                    return;
                }
                boolean isConnected = CarPlayLinkHelper.this.isConnected();
                LogUtil.i("onCallStateChanged isConnected:" + isConnected);
                if (isConnected) {
                    int state = carplayCall.getState();
                    String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                    Log.i(CarPlayLinkHelper.this.TAG, "onCallStateChanged state:" + state);
                    switch (state) {
                        case 0:
                            CarplayManager defaultManager = CarplayManager.getDefaultManager();
                            if (defaultManager != null && CarPlayLinkHelper.this.mPreConnectedDevice != null) {
                                List currentCalls = defaultManager.getCurrentCalls(CarPlayLinkHelper.this.mPreConnectedDevice);
                                LogUtil.i("onCallStateChanged currentCalls:" + currentCalls);
                                if (currentCalls != null && !currentCalls.isEmpty()) {
                                    CarPlayLinkHelper.this.mCallStatus = 3;
                                    break;
                                }
                            }
                            CarPlayLinkHelper.this.mCallStatus = 0;
                            if (!ProductDeviceManager.PRODUCT_CA1105.equals(curProductDevice)) {
                                CarControlManager.ins.closeScreenBrightnessTransient();
                                break;
                            }
                            break;
                        case 1:
                            CarPlayLinkHelper.this.mCallStatus = 2;
                            if (CarPlayLinkHelper.this.isVROn()) {
                                CarPlayLinkHelper.this.closeVR();
                            }
                            if (!ProductDeviceManager.PRODUCT_CA1105.equals(curProductDevice)) {
                                CarControlManager.ins.openScreenBrightnessTransient();
                                break;
                            }
                            break;
                        case 2:
                            CarPlayLinkHelper.this.mCallStatus = 1;
                            if (CarPlayLinkHelper.this.isVROn()) {
                                CarPlayLinkHelper.this.closeVR();
                            }
                            if (!ProductDeviceManager.PRODUCT_CA1105.equals(curProductDevice)) {
                                CarControlManager.ins.openScreenBrightnessTransient();
                                break;
                            }
                            break;
                        case 4:
                            CarPlayLinkHelper.this.mCallStatus = 3;
                            if (CarPlayLinkHelper.this.isVROn()) {
                                CarPlayLinkHelper.this.closeVR();
                            }
                            if (!ProductDeviceManager.PRODUCT_CA1105.equals(curProductDevice)) {
                                CarControlManager.ins.openScreenBrightnessTransient();
                                break;
                            }
                            break;
                    }
                    ProductDeviceManager.ins.onCallStatusChanged(CarPlayLinkHelper.this.mCallStatus);
                }
            }

            public void onPlaybackStatusChanged(CarplayDevice carplayDevice, PlaybackStatusInfo playbackStatusInfo) {
                CarplayManager defaultManager;
                CarplayPlaybackStatus playingStatus;
                if (carplayDevice == null || playbackStatusInfo == null || (defaultManager = CarplayManager.getDefaultManager()) == null) {
                    return;
                }
                try {
                    boolean isPlaybackStatusValid = playbackStatusInfo.isPlaybackStatusValid();
                    LogUtil.i(CarPlayLinkHelper.this.TAG + "isPlaybackStatusValid:" + isPlaybackStatusValid);
                    if (isPlaybackStatusValid) {
                        CarPlayLinkHelper.this.mCarplayPlaybackStatus = playbackStatusInfo.getPlaybackStatus();
                    }
                    CarPlayLinkHelper.this.mMediaInfo.setIsPlaying(CarPlayLinkHelper.this.isMusicOn() ? 1 : 0);
                    String playingInfo = defaultManager.getPlayingInfo(carplayDevice, 1);
                    String playingInfo2 = defaultManager.getPlayingInfo(carplayDevice, 4);
                    if (playbackStatusInfo.isTrackMsOffsetValid() && (playingStatus = defaultManager.getPlayingStatus(carplayDevice)) != null) {
                        int playingTrackLen = playingStatus.getPlayingTrackLen();
                        CarPlayLinkHelper.this.mMediaInfo.setProgress(playingStatus.getPlayingTrackPos());
                        CarPlayLinkHelper.this.mMediaInfo.setDuration(playingTrackLen);
                    }
                    CarPlayLinkHelper.this.mMediaInfo.setSong(playingInfo);
                    CarPlayLinkHelper.this.mMediaInfo.setArtist(playingInfo2);
                    CarPhoneLinkMediaService.sendMediaInfoChanged(CarPlayLinkHelper.this.mMediaInfo);
                } catch (Exception e) {
                    e.printStackTrace();
                    LogUtil.i("onPlaybackStatusChanged,error:" + e.getMessage());
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:45:0x01df, code lost:
            
                if (r6.equals(com.yftech.transfer.phonelink.manager.ProductDeviceManager.PRODUCT_CB_IHU23) == false) goto L57;
             */
            /* JADX WARN: Removed duplicated region for block: B:47:0x0205  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onConnectionStateChanged(CarplayDevice carplayDevice, int i) {
                BasicLinkHelper basicLinkHelper;
                Log.i(CarPlayLinkHelper.this.TAG, "carplay_onConnectionStateChanged carplayDevice:" + carplayDevice + ",status:" + i);
                if (carplayDevice == null) {
                    return;
                }
                char c = 2;
                if (i != 0) {
                    if (i != 2) {
                        return;
                    }
                    CarPlayLinkHelper.this.mCarLinkConnectedAddress = "";
                    CarPlayUtils.bindCarPlayApp(CarTransferApplication.context);
                    LogUtil.i("carplay_onConnectionStateChanged connected,mPreConnectedDevice:" + CarPlayLinkHelper.this.mPreConnectedDevice + ",mPreConnectedDeviceTransport:" + CarPlayLinkHelper.this.mPreConnectedDeviceTransport);
                    if (CarPlayLinkHelper.this.mPreConnectedDevice != null) {
                        return;
                    }
                    CarPlayLinkHelper.this.mPreConnectedDevice = carplayDevice;
                    CarPlayLinkHelper.this.mPreConnectedDeviceTransport = CarPlayLinkHelper.this.mPreConnectedDevice.getTransport();
                    CarPlayLinkHelper.this.startWorkerThread(true, carplayDevice);
                    LogUtil.i("carplay_onConnectionStateChanged connected,after mPreConnectedDevice:" + CarPlayLinkHelper.this.mPreConnectedDevice + ",mPreConnectedDeviceTransport:" + CarPlayLinkHelper.this.mPreConnectedDeviceTransport);
                    SettingsUtil.storeCarPlayDeviceId(CarPlayLinkHelper.this.mPreConnectedDevice.getDeviceId());
                    SettingsUtil.storeCarPlayDeviceTransport(CarPlayLinkHelper.this.mPreConnectedDeviceTransport);
                    CarPhoneLinkService.sendCarLinkDeviceListChanged("carplay", CarPlayLinkHelper.this.getCarLinkDeviceList());
                    if (ProductDeviceManager.ins.isA58G() && (basicLinkHelper = LinkHelperManager.ins.get("easyconn")) != null && basicLinkHelper.isConnected()) {
                        basicLinkHelper.disconnect();
                    }
                    ProductDeviceManager.ins.phoneLinkChanged();
                    CarLocationManager.ins.refreshGpsInfo();
                    CarPlayLinkHelper.this.mConnectPlayD = AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.11.1
                        @Override // io.reactivex.functions.Consumer
                        public void accept(Long l) {
                            if (1 == SettingsUtil.getInt(CarPlayLinkHelper.CARPLAY_MUSIC_DISCONNECT_STATUS)) {
                                CarPlayLinkHelper.this.play();
                            }
                        }
                    }, 800L);
                    return;
                }
                LogUtil.i("carplay_onConnectionStateChanged disconnected,mPreConnectedDevice:" + CarPlayLinkHelper.this.mPreConnectedDevice + ",mPreConnectedDeviceTransport:" + CarPlayLinkHelper.this.mPreConnectedDeviceTransport);
                if (CarPlayLinkHelper.this.mPreConnectedDevice == null || CarPlayLinkHelper.this.mPreConnectedDevice.getDeviceId() == null || carplayDevice.getDeviceId() == null) {
                    return;
                }
                String deviceId = CarPlayLinkHelper.this.mPreConnectedDevice.getDeviceId();
                String deviceId2 = carplayDevice.getDeviceId();
                LogUtil.i("carplay_onConnectionStateChanged disconnected preDeviceId:" + deviceId + ",carpDeviceId:" + deviceId2);
                if (deviceId.equals(deviceId2)) {
                    CarTransferApplication.getHandler().removeCallbacks(CarPlayLinkHelper.this.mRequestUICheckRunnable);
                    CarPlayLinkHelper.this.startWorkerThread(false, carplayDevice);
                    if (CarPlayLinkHelper.this.mConnectPlayD != null) {
                        CarPlayLinkHelper.this.mConnectPlayD.dispose();
                    }
                    SettingsUtil.putInt(CarPlayLinkHelper.CARPLAY_MUSIC_DISCONNECT_STATUS, CarPlayLinkHelper.this.isMusicOn() ? 1 : 0);
                    CarPlayLinkHelper.this.mPrePlayStatus = 0;
                    if (1 == CarPlayLinkHelper.this.mPreConnectedDeviceTransport && !CarPlayLinkHelper.this.isDisconnectFromApi) {
                        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                        int hashCode = curProductDevice.hashCode();
                        if (hashCode == 201076150) {
                            if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                                c = 1;
                                switch (c) {
                                }
                            }
                            c = 65535;
                            switch (c) {
                            }
                        } else if (hashCode == 202029462) {
                            if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                                c = 3;
                                switch (c) {
                                }
                            }
                            c = 65535;
                            switch (c) {
                            }
                        } else if (hashCode != 1292373688) {
                            if (hashCode == 2039290871) {
                            }
                            c = 65535;
                            switch (c) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                    if (!SettingsUtil.isCarplayCertificateStatus()) {
                                        CarplayManager.getDefaultManager().forget(CarPlayLinkHelper.this.mPreConnectedDevice);
                                        LogUtil.i("onConnectionStateChanged disconnected forget");
                                        break;
                                    }
                                    break;
                            }
                        } else {
                            if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                                c = 0;
                                switch (c) {
                                }
                            }
                            c = 65535;
                            switch (c) {
                            }
                        }
                    }
                    BlueToothManager.ins.setBluetoothEnable();
                    CarControlManager.ins.closeScreenBrightnessTransient();
                    CarPlayLinkHelper.this.mPreConnectedDevice = null;
                    CarPhoneLinkMediaService.sendMediaInfoChanged(null);
                    CarPlayLinkHelper.this.mCallStatus = 0;
                    ProductDeviceManager.ins.onCallStatusChanged(CarPlayLinkHelper.this.mCallStatus);
                    ProductDeviceManager.ins.onVRStatusChanged(0);
                    CarPlayUtils.unbindCarPlayApp(CarTransferApplication.context);
                    CarPlayLinkHelper.this.mAudioManager.abandonAudioFocus(CarPlayLinkHelper.this.onVrFocusChangeListener);
                    CarPlayLinkHelper.this.isCarplayDisplay = false;
                    CarPlayLinkHelper.this.isDisconnectFromApi = false;
                    CarPhoneLinkService.sendCarLinkDeviceListChanged("carplay", CarPlayLinkHelper.this.getCarLinkDeviceList());
                    ProductDeviceManager.ins.phoneLinkChanged();
                }
            }

            public void onStreamStateChanged(int i, int i2, int i3) {
                int requestAudioFocus;
                Log.i(CarPlayLinkHelper.this.TAG, "onStreamStateChanged:" + i + "," + i2 + "," + i3);
                if (i == 100) {
                    CarPlayLinkHelper.this.mPreConnectedDeviceTransport = 1;
                    Log.i(CarPlayLinkHelper.this.TAG, "onStreamStateChanged setTransport mPreConnectedDeviceTransport:" + CarPlayLinkHelper.this.mPreConnectedDeviceTransport);
                    if (i2 == 3) {
                        if (i3 == 0) {
                            LogUtil.i("onStreamStateChanged music on");
                        } else if (i3 == 1) {
                            LogUtil.i("onStreamStateChanged music stop");
                        }
                        CarPlayLinkHelper.this.mMediaInfo.setIsPlaying(CarPlayLinkHelper.this.isMusicOn() ? 1 : 0);
                        CarPhoneLinkMediaService.sendMediaInfoChanged(CarPlayLinkHelper.this.mMediaInfo);
                        SettingsUtil.putInt(CarPlayLinkHelper.CARPLAY_MUSIC_DISCONNECT_STATUS, CarPlayLinkHelper.this.isMusicOn() ? 1 : 0);
                        return;
                    }
                    if (i2 != 5) {
                        return;
                    }
                    if (i3 != 0) {
                        if (i3 == 1) {
                            LogUtil.i("onStreamStateChanged vroff");
                            this.vrTimerD = AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.11.2
                                @Override // io.reactivex.functions.Consumer
                                public void accept(Long l) {
                                    CarPlayLinkHelper.this.mAudioManager.abandonAudioFocus(CarPlayLinkHelper.this.onVrFocusChangeListener);
                                    LogUtil.i("onStreamStateChanged vroff abandonAudioFocus");
                                    ProductDeviceManager.ins.onVRStatusChanged(0);
                                }
                            }, 1000L);
                            LogUtil.i("onStreamStateChanged vroff ui_show:" + CarPlayLinkHelper.this.isCarplayDisplay);
                            if (CarPlayLinkHelper.this.isCarplayDisplay) {
                                return;
                            }
                            CarPlayLinkHelper.this.resume();
                            return;
                        }
                        return;
                    }
                    boolean isAvmShow = AvmserviceReceiver.isAvmShow();
                    LogUtil.i("onStreamStateChanged vron isAvm:" + isAvmShow);
                    if (isAvmShow) {
                        CarPlayLinkHelper.this.closeVR();
                        return;
                    }
                    if (this.vrTimerD != null) {
                        this.vrTimerD.dispose();
                    }
                    LogUtil.i("onStreamStateChanged vron requestVrFocus:" + CarPlayLinkHelper.this.mAudioManager.requestAudioFocus(CarPlayLinkHelper.this.onVrFocusChangeListener, 41, 1));
                    ProductDeviceManager.ins.onVRStatusChanged(1);
                    LogUtil.i("onStreamStateChanged vron isCarplayDisplay:" + CarPlayLinkHelper.this.isCarplayDisplay);
                    if (!CarPlayLinkHelper.this.isCarplayDisplay) {
                        CarPlayLinkHelper.this.pauseForResume();
                    }
                    if (SettingsUtil.isCarplayCertificateStatus()) {
                        return;
                    }
                    CarPlayUtils.launchApp(CarTransferApplication.context);
                    return;
                }
                if (i == 102) {
                    CarPlayLinkHelper.this.mPreConnectedDeviceTransport = 2;
                    Log.i(CarPlayLinkHelper.this.TAG, "onStreamStateChanged setTransport mPreConnectedDeviceTransport:" + CarPlayLinkHelper.this.mPreConnectedDeviceTransport);
                    return;
                }
                if (i != 106) {
                    if (i != 110) {
                        return;
                    }
                    CarTransferApplication.getHandler().removeCallbacks(CarPlayLinkHelper.this.mRequestUICheckRunnable);
                    ICarInfo.GearPosition gearPosition = CarControlManager.ins.getGearPosition();
                    Log.i(CarPlayLinkHelper.this.TAG, "onStreamStateChanged gearPosition:" + gearPosition);
                    if (ICarInfo.GearPosition.REVERSE == gearPosition) {
                        return;
                    }
                    int mainScreen = CarplayManager.getDefaultManager().getResourceState().getMainScreen();
                    Log.i(CarPlayLinkHelper.this.TAG, "onStreamStateChanged mainScreen:" + mainScreen);
                    if (i3 == 1 && mainScreen == 1) {
                        CarPlayLinkHelper.this.sendRequestUICheckRunnable();
                    }
                    CarPhoneLinkService.sendConnectedFailWithDevice("carplay", 10001, new CarLinkDevice());
                    return;
                }
                if (i2 != 5) {
                    return;
                }
                if (i3 != 0) {
                    if (i3 == 1) {
                        LogUtil.i("onStreamStateChanged vrauxoff");
                        this.vrAuxTimerD = AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.11.3
                            @Override // io.reactivex.functions.Consumer
                            public void accept(Long l) {
                                CarPlayLinkHelper.this.mAudioManager.abandonAudioFocus(CarPlayLinkHelper.this.onVrAuxFocusChangeListener);
                                LogUtil.i("onStreamStateChanged vrauxoff abandonAudioFocus");
                                ProductDeviceManager.ins.onVRStatusChanged(0);
                            }
                        }, 1000L);
                        LogUtil.i("onStreamStateChanged vrauxoff isCarplayDisplay:" + CarPlayLinkHelper.this.isCarplayDisplay);
                        if (CarPlayLinkHelper.this.isCarplayDisplay) {
                            return;
                        }
                        CarPlayLinkHelper.this.resume();
                        return;
                    }
                    return;
                }
                boolean isAvmShow2 = AvmserviceReceiver.isAvmShow();
                LogUtil.i("onStreamStateChanged vrauxon isAvm:" + isAvmShow2);
                if (isAvmShow2) {
                    CarPlayLinkHelper.this.closeVR();
                    return;
                }
                if (this.vrAuxTimerD != null) {
                    this.vrAuxTimerD.dispose();
                }
                if (SettingsUtil.isCarplayCertificateStatus()) {
                    requestAudioFocus = CarPlayLinkHelper.this.mAudioManager.requestAudioFocus(CarPlayLinkHelper.this.onVrAuxFocusChangeListener, 26, 1);
                    LogUtil.i("onStreamStateChanged vrauxon request STREAM_VOICE");
                } else {
                    LogUtil.i("onStreamStateChanged vrauxon request STREAM_VOICE_CARPLAY");
                    requestAudioFocus = CarPlayLinkHelper.this.mAudioManager.requestAudioFocus(CarPlayLinkHelper.this.onVrAuxFocusChangeListener, 41, 1);
                    CarPlayUtils.launchApp(CarTransferApplication.context);
                }
                LogUtil.i("onStreamStateChanged vrauxon requestVrFocus:" + requestAudioFocus);
                ProductDeviceManager.ins.onVRStatusChanged(1);
                LogUtil.i("onStreamStateChanged vrauxon isCarplayDisplay:" + CarPlayLinkHelper.this.isCarplayDisplay);
                if (CarPlayLinkHelper.this.isCarplayDisplay) {
                    return;
                }
                CarPlayLinkHelper.this.pauseForResume();
            }

            public void onDeviceAdded(CarplayDevice carplayDevice) {
                LogUtil.i(CarPlayLinkHelper.this.TAG + " onDeviceAdded() device:" + carplayDevice + "," + Thread.currentThread());
                CarPhoneLinkService.sendCarLinkDeviceListChanged("carplay", CarPlayLinkHelper.this.getCarLinkDeviceList());
            }

            public void onDeviceDeleted(CarplayDevice carplayDevice) {
                LogUtil.i(CarPlayLinkHelper.this.TAG + " onDeviceDeleted() device:" + carplayDevice);
                CarPhoneLinkService.sendCarLinkDeviceListChanged("carplay", CarPlayLinkHelper.this.getCarLinkDeviceList());
            }

            public void onDeviceBondStateChanged(CarplayDevice carplayDevice, int i) {
                LogUtil.i(CarPlayLinkHelper.this.TAG + " onDeviceBondStateChanged() device:" + carplayDevice + " " + i);
                CarPhoneLinkService.sendCarLinkDeviceListChanged("carplay", CarPlayLinkHelper.this.getCarLinkDeviceList());
            }

            public void onDeviceUpdate(CarplayDevice carplayDevice) {
                List<CarLinkDevice> carLinkDeviceList = CarPlayLinkHelper.this.getCarLinkDeviceList();
                LogUtil.i(CarPlayLinkHelper.this.TAG + " onDeviceUpdate:" + carLinkDeviceList);
                CarPhoneLinkService.sendCarLinkDeviceListChanged("carplay", carLinkDeviceList);
            }

            public void onDeviceListUpdate() {
                List<CarLinkDevice> carLinkDeviceList = CarPlayLinkHelper.this.getCarLinkDeviceList();
                LogUtil.i(CarPlayLinkHelper.this.TAG + " onDeviceListUpdate:" + carLinkDeviceList);
                CarPhoneLinkService.sendCarLinkDeviceListChanged("carplay", carLinkDeviceList);
            }

            public void onSecondDeviceAvailable(CarplayDevice carplayDevice) {
                LogUtil.i(CarPlayLinkHelper.this.TAG + " onSecondDeviceAvailable carplayDevice:" + carplayDevice);
                if (carplayDevice == null) {
                    return;
                }
                CarLinkDevice carLinkDevice = new CarLinkDevice();
                carLinkDevice.setDeviceId(carplayDevice.getDeviceId());
                carLinkDevice.setDeviceName(carplayDevice.getName());
                carLinkDevice.setMacAddress(carplayDevice.getDeviceId());
                CarPhoneLinkService.sendSecondDeviceAvailable(carLinkDevice);
            }

            /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
            
                if (r0.equals(com.yftech.transfer.phonelink.manager.ProductDeviceManager.PRODUCT_CBIHU12) != false) goto L34;
             */
            /* JADX WARN: Removed duplicated region for block: B:22:0x0088  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onDeviceConnectFail(CarplayDevice carplayDevice, int i) {
                if (carplayDevice == null) {
                    return;
                }
                CarPlayLinkHelper.this.mCarLinkConnectedAddress = "";
                LogUtil.i(CarPlayLinkHelper.this.TAG + " onDeviceConnectFail:" + carplayDevice + "," + i);
                String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                char c = 0;
                if (i == 7 || i == 8) {
                    int hashCode = curProductDevice.hashCode();
                    if (hashCode == 201076150) {
                        if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                            c = 1;
                            switch (c) {
                            }
                        }
                        c = 65535;
                        switch (c) {
                        }
                    } else if (hashCode == 202029462) {
                        if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                            c = 2;
                            switch (c) {
                            }
                        }
                        c = 65535;
                        switch (c) {
                        }
                    } else if (hashCode != 1292373688) {
                        if (hashCode == 2039290871 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
                            c = 3;
                            switch (c) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                    CarPlayLinkHelper.this.mApFailDevice = carplayDevice;
                                    Intent intent = new Intent("com.yftech.intent.action.ap.dialog.show");
                                    intent.setPackage("com.yftech.settings");
                                    CarTransferApplication.context.sendBroadcast(intent);
                                    return;
                            }
                        }
                        c = 65535;
                        switch (c) {
                        }
                    }
                }
                CarPhoneLinkService.sendConnectedFail("carplay", i);
                String deviceId = carplayDevice.getDeviceId();
                CarLinkDevice carLinkDevice = new CarLinkDevice();
                String str = (String) CarPlayLinkHelper.this.mDeviceNameMap.get(deviceId);
                carLinkDevice.setDeviceId(deviceId);
                carLinkDevice.setDeviceName(str);
                carLinkDevice.setMacAddress(deviceId);
                CarPhoneLinkService.sendConnectedFailWithDevice("carplay", i, carLinkDevice);
                if (ProductDeviceManager.PRODUCT_CA1105.equals(curProductDevice)) {
                    ProductDeviceManager.ins.resetUsb();
                }
            }

            public void onDeviceCarplaySettingEnabled(boolean z) {
                char c;
                LogUtil.i(CarPlayLinkHelper.this.TAG + " onDeviceCarplaySettingEnabled:" + z);
                String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                int hashCode = curProductDevice.hashCode();
                if (hashCode == 201076150) {
                    if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                        c = 2;
                    }
                    c = 65535;
                } else if (hashCode != 1292373688) {
                    if (hashCode == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                        c = 3;
                    }
                    c = 65535;
                } else {
                    if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                        c = 0;
                    }
                    c = 65535;
                }
                if (c != 0) {
                    if (c == 3) {
                        if (z) {
                            return;
                        }
                        CarPhoneLinkService.sendConnectedFail("carplay", 1);
                    } else {
                        if (z) {
                            return;
                        }
                        CarPhoneLinkService.sendConnectedFail("carplay", 10000);
                        CarPhoneLinkService.sendConnectedFailWithDevice("carplay", 10000, new CarLinkDevice());
                    }
                }
            }

            public void onCarPlayAvailabilityChanged(CarplayDevice carplayDevice, int i) {
                LogUtil.i(CarPlayLinkHelper.this.TAG + " onCarPlayAvailabilityChanged carplayDevice:" + carplayDevice + ",i:" + i);
                CarPhoneLinkService.sendCarLinkDeviceListChanged("carplay", CarPlayLinkHelper.this.getCarLinkDeviceList());
            }
        };
        this.mRequestUICheckRunnable = new Runnable() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.12
            @Override // java.lang.Runnable
            public void run() {
                boolean isConnected = CarPlayLinkHelper.this.isConnected();
                Log.i(CarPlayLinkHelper.this.TAG, "mMainScreenCheckRunnable isConed:" + isConnected);
                if (isConnected) {
                    ToastUtil.showToast(CarTransferApplication.context.getString(R.string.carplaynosignalr));
                }
            }
        };
        this.carAudioObservor = new CarAudioListenerImp.CarAudioObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.13
            @Override // com.yftech.transfer.callback.CarAudioListenerImp.CarAudioObservor
            public void onChangedMediaSource(int i, String str, String str2) {
                LogUtil.i("CarPlay onChangedMediaSource:" + i + "," + str + "," + str2);
                boolean isCarplayCertificateStatus = SettingsUtil.isCarplayCertificateStatus();
                StringBuilder sb = new StringBuilder();
                sb.append("carplayCertificateStatus:");
                sb.append(isCarplayCertificateStatus);
                LogUtil.i(sb.toString());
                if (isCarplayCertificateStatus && CarAudioListenerImp.SOURCE_BLUETOOTH.equals(str)) {
                    CarPlayLinkHelper.this.cancelAutoShow();
                }
            }
        };
        this.carPowerObservor = new CarPowerListenerImp.CarPowerObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.14
            @Override // com.yftech.transfer.callback.CarPowerListenerImp.CarPowerObservor
            public void onPowerStateChanged(ICarPower.PowerState powerState) {
                if (powerState != ICarPower.PowerState.STANDBY || CarPlayLinkHelper.this.mReConnectApFailD == null) {
                    return;
                }
                CarPlayLinkHelper.this.mReConnectApFailD.dispose();
            }
        };
        this.bluetoothPhoneObservor = new BluetoothPhoneCallBackImp.BluetoothPhoneObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.15
            @Override // com.yftech.transfer.callback.BluetoothPhoneCallBackImp.BluetoothPhoneObservor
            public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
                if (i == 2) {
                    String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                    char c = 65535;
                    if (curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                        c = 0;
                    }
                    if (c == 0) {
                        if (CarPlayLinkHelper.this.isConnected()) {
                            BlueToothManager.ins.setEnable(false);
                            return;
                        }
                        return;
                    }
                    boolean isConnected = CarPlayLinkHelper.this.isConnected();
                    LogUtil.i("onBluetoothHfpConnectStatusChanged connected:" + isConnected);
                    if (isConnected) {
                        CarPlayLinkHelper.this.disconnect();
                    }
                }
            }
        };
        this.bluetoothMusicObservor = new BluetoothMusicCallBackImp.BluetoothMusicObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.16
            @Override // com.yftech.transfer.callback.BluetoothMusicCallBackImp.BluetoothMusicObservor
            public void onBluetoothA2dpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
                if (i == 2 && BlueToothManager.ins.isAVRCP_CONTROLLERConnected()) {
                    String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                    char c = 65535;
                    if (curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                        c = 0;
                    }
                    if (c == 0) {
                        if (CarPlayLinkHelper.this.isConnected()) {
                            BlueToothManager.ins.setEnable(false);
                            return;
                        }
                        return;
                    }
                    boolean isConnected = CarPlayLinkHelper.this.isConnected();
                    LogUtil.i("isAVRCP_CONTROLLERConnected connected:" + isConnected);
                    if (isConnected) {
                        CarPlayLinkHelper.this.disconnect();
                    }
                }
            }

            @Override // com.yftech.transfer.callback.BluetoothMusicCallBackImp.BluetoothMusicObservor
            public void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
                if (i == 2 && BlueToothManager.ins.isA2DP_SINKConnected()) {
                    String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                    LogUtil.i("isA2DP_SINKConnected curProductDevice:" + curProductDevice);
                    char c = 65535;
                    if (curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                        c = 0;
                    }
                    if (c == 0) {
                        if (CarPlayLinkHelper.this.isConnected()) {
                            BlueToothManager.ins.setEnable(false);
                            return;
                        }
                        return;
                    }
                    boolean isConnected = CarPlayLinkHelper.this.isConnected();
                    LogUtil.i("isA2DP_SINKConnected isConnected:" + isConnected);
                    if (isConnected) {
                        CarPlayLinkHelper.this.disconnect();
                    }
                }
            }
        };
        this.onVrFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.22
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                LogUtil.i("onVrFocusChangeListener i:" + i);
                switch (i) {
                    case -2:
                    case -1:
                        if (CarPlayLinkHelper.this.isVROn()) {
                            CarPlayLinkHelper.this.closeVR();
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.onVrAuxFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.23
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                LogUtil.i("onVrAuxFocusChangeListener i:" + i);
                switch (i) {
                    case -2:
                    case -1:
                        if (CarPlayLinkHelper.this.isVROn()) {
                            CarPlayLinkHelper.this.closeVR();
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.carSwcObservor = new CarSwcCallBackImp.CarSwcObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.24
            @Override // com.yftech.transfer.callback.CarSwcCallBackImp.CarSwcObservor
            public void onSwcAngleChanged(float f) {
            }
        };
        this.carLocationObservor = new CarLocationManager.CarLocationObservor() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.25
            @Override // com.yftech.transfer.phonelink.manager.CarLocationManager.CarLocationObservor
            public void onLocationChanged(Location location) {
                Iterable<GpsSatellite> satellites;
                if (CarPlayUtils.isCarplayCertificateOn()) {
                    GpsStatus gpsStatus = CarLocationManager.ins.getGpsStatus();
                    if (location != null) {
                        double latitude = location.getLatitude();
                        double longitude = location.getLongitude();
                        double altitude = location.getAltitude();
                        float accuracy = location.getAccuracy();
                        float speed = location.getSpeed();
                        float bearing = location.getBearing();
                        String effectStatus = CarLocationManager.ins.getEffectStatus();
                        int i = -1;
                        if (gpsStatus != null && (satellites = gpsStatus.getSatellites()) != null) {
                            for (GpsSatellite gpsSatellite : satellites) {
                                try {
                                    Field declaredField = GpsSatellite.class.getDeclaredField("mValid");
                                    declaredField.setAccessible(true);
                                    boolean z = declaredField.getBoolean(gpsSatellite);
                                    LogUtil.i("GpsSatellite next mValid:" + z);
                                    if (z) {
                                        i++;
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    LogUtil.i("GpsSatellite next error:" + e.getMessage());
                                }
                            }
                        }
                        Log.e("ins", "gpsinfo:" + latitude + "," + longitude + "," + altitude + "," + speed + "," + accuracy + "," + i + "," + bearing + "," + effectStatus + "," + System.currentTimeMillis());
                        GpsManager.getInstance().updateGps((double) System.currentTimeMillis(), latitude, longitude, altitude, (double) speed, (double) accuracy, (double) bearing, (double) i, CarLocationManager.STATUS_EFFECT.equals(effectStatus) ? 1 : 0);
                    }
                }
            }

            @Override // com.yftech.transfer.phonelink.manager.CarLocationManager.CarLocationObservor
            public void onGpsStatusChanged(int i) {
                Iterable<GpsSatellite> satellites;
                if (CarPlayUtils.isCarplayCertificateOn()) {
                    Location lastKnownLocation = CarLocationManager.ins.getLastKnownLocation();
                    GpsStatus gpsStatus = CarLocationManager.ins.getGpsStatus();
                    if (lastKnownLocation != null) {
                        double latitude = lastKnownLocation.getLatitude();
                        double longitude = lastKnownLocation.getLongitude();
                        double altitude = lastKnownLocation.getAltitude();
                        float accuracy = lastKnownLocation.getAccuracy();
                        float speed = lastKnownLocation.getSpeed();
                        float bearing = lastKnownLocation.getBearing();
                        String effectStatus = CarLocationManager.ins.getEffectStatus();
                        int i2 = -1;
                        if (gpsStatus != null && (satellites = gpsStatus.getSatellites()) != null) {
                            int i3 = -1;
                            for (GpsSatellite gpsSatellite : satellites) {
                                try {
                                    Field declaredField = GpsSatellite.class.getDeclaredField("mValid");
                                    declaredField.setAccessible(true);
                                    boolean z = declaredField.getBoolean(gpsSatellite);
                                    LogUtil.i("GpsSatellite next mValid:" + z);
                                    if (z) {
                                        i3++;
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    LogUtil.i("GpsSatellite next error:" + e.getMessage());
                                }
                            }
                            i2 = i3;
                        }
                        Log.e("ins", "gpsinfo:" + latitude + "," + longitude + "," + altitude + "," + speed + "," + accuracy + "," + i2 + "," + bearing + "," + effectStatus + "," + System.currentTimeMillis());
                        GpsManager.getInstance().updateGps((double) System.currentTimeMillis(), latitude, longitude, altitude, (double) speed, (double) accuracy, (double) bearing, (double) i2, CarLocationManager.STATUS_EFFECT.equals(effectStatus) ? 1 : 0);
                    }
                }
            }
        };
        this.mOnStartTetheringCallback = new ConnectivityManager.OnStartTetheringCallback() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.26
            public void onTetheringFailed() {
                super.onTetheringFailed();
            }
        };
        this.mWirelessObdThread = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequestUICheckRunnable() {
        Log.i(this.TAG, "sendRequestUICheckRunnable");
        CarTransferApplication.getHandler().removeCallbacks(this.mRequestUICheckRunnable);
        CarTransferApplication.getHandler().postDelayed(this.mRequestUICheckRunnable, 1500L);
    }

    private boolean checkDeviceSupport(CarplayDevice carplayDevice) {
        int wiredAvailable = carplayDevice.getWiredAvailable();
        int wirelessAvailable = carplayDevice.getWirelessAvailable();
        LogUtil.i(this.TAG + " checkDeviceSupport device:" + carplayDevice + ",wiredAvailable:" + wiredAvailable + ",wirelessAvailable:" + wirelessAvailable);
        if (wiredAvailable == -1 && wirelessAvailable == 0) {
            return false;
        }
        if (wiredAvailable == 0 && wirelessAvailable == -1) {
            return false;
        }
        return (wiredAvailable == 0 && wirelessAvailable == 0) ? false : true;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper, com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void pauseForResume() {
        if (isMusicOn()) {
            this.mPrePlayStatus = 1;
            LogUtil.i(this.TAG + " pauseForResume pre is play,pause()");
        }
    }

    public boolean isMusicOn() {
        int streamState;
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        boolean z = false;
        if (defaultManager == null) {
            return false;
        }
        if (this.mPreConnectedDeviceTransport == 1) {
            streamState = defaultManager.getStreamState(this.mPreConnectedDevice, 100, 3);
        } else {
            streamState = this.mPreConnectedDeviceTransport == 2 ? defaultManager.getStreamState(this.mPreConnectedDevice, 102, 3) : 1;
        }
        int i = this.mCarplayPlaybackStatus;
        LogUtil.i("isMusicOn mPreConnectedDevice:" + this.mPreConnectedDevice + "mPreConnectedDeviceTransport:" + this.mPreConnectedDeviceTransport + "streamState:" + streamState + "isMediaPlaying:" + i);
        if (streamState == 0 && i == 1) {
            z = true;
        }
        LogUtil.i("isMusicOn result:" + z);
        return z;
    }

    private void pauseWhenCertificateOff() {
        CarplayManager defaultManager;
        if (ProductDeviceManager.PRODUCT_CA1105.equals(ProductDeviceManager.ins.getCurProductDevice()) || (defaultManager = CarplayManager.getDefaultManager()) == null) {
            return;
        }
        boolean isCarplayCertificateOn = CarPlayUtils.isCarplayCertificateOn();
        LogUtil.i("pauseWhenCertificateOff carplayCertificateOn:" + isCarplayCertificateOn);
        if (isCarplayCertificateOn) {
            return;
        }
        pauseForResume();
        LogUtil.i("pauseWhenCertificateOff MEDIA_PAUSE");
        defaultManager.updateMedia(2);
        defaultManager.updateMedia(0);
    }

    private void resumeWhenCertificateOff() {
        if (ProductDeviceManager.PRODUCT_CA1105.equals(ProductDeviceManager.ins.getCurProductDevice()) || CarplayManager.getDefaultManager() == null) {
            return;
        }
        boolean isCarplayCertificateOn = CarPlayUtils.isCarplayCertificateOn();
        LogUtil.i("resumeWhenCertificateOff carplayCertificateOn:" + isCarplayCertificateOn);
        if (isCarplayCertificateOn) {
            return;
        }
        resume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVROn() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        LogUtil.i("isVROn defaultManager:" + defaultManager);
        if (defaultManager == null) {
            return false;
        }
        CarplayDevice connectedDevice = getConnectedDevice();
        LogUtil.i("isVROn connectedDevice:" + connectedDevice);
        if (connectedDevice == null) {
            return false;
        }
        int streamState = defaultManager.getStreamState(connectedDevice, 100, 5);
        int streamState2 = defaultManager.getStreamState(connectedDevice, 106, 5);
        LogUtil.i("isVROn streamState:" + streamState);
        LogUtil.i("isVROn streamState_106:" + streamState2);
        LogUtil.i("isVROn isVREnable:" + this.isVREnable);
        return streamState == 0 || streamState2 == 0;
    }

    private boolean isCallActive() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        LogUtil.i("isCallActive defaultManager:" + defaultManager);
        if (defaultManager == null) {
            return false;
        }
        CarplayDevice connectedDevice = getConnectedDevice();
        LogUtil.i("isCallActive connectedDevice:" + connectedDevice);
        if (connectedDevice == null) {
            return false;
        }
        int streamState = defaultManager.getStreamState(connectedDevice, 100, 4);
        LogUtil.i("isCallActive streamState:" + streamState);
        return streamState == 0;
    }

    private List<CarplayDevice> getBondedDevices() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return this.mCarplayDevices;
        }
        boolean isEnabled = defaultManager.isEnabled();
        LogUtil.i("getBondedDevicesnew enabled:" + isEnabled + "," + this.mCarplayDevices);
        if (!isEnabled) {
            return this.mCarplayDevices;
        }
        List<CarplayDevice> connectedDevices = defaultManager.getConnectedDevices();
        if (connectedDevices == null) {
            connectedDevices = new ArrayList();
        }
        List<CarplayDevice> bondedDevices = defaultManager.getBondedDevices();
        if (bondedDevices == null) {
            bondedDevices = new ArrayList();
        }
        this.mCarplayDevices.clear();
        if (!connectedDevices.isEmpty()) {
            this.mCarplayDevices.addAll(connectedDevices);
            for (CarplayDevice carplayDevice : connectedDevices) {
                if (carplayDevice != null) {
                    LogUtil.i("getBondedDevicesnew connectedDevice:" + carplayDevice + "," + carplayDevice.getName());
                    for (CarplayDevice carplayDevice2 : bondedDevices) {
                        if (carplayDevice2 != null) {
                            LogUtil.i("getBondedDevicesnew  bondedDevice:" + carplayDevice2 + "," + carplayDevice2.getName());
                            if (!carplayDevice2.getDeviceId().equals(carplayDevice.getDeviceId())) {
                                this.mCarplayDevices.add(carplayDevice2);
                            }
                        }
                    }
                }
            }
        } else {
            this.mCarplayDevices.addAll(bondedDevices);
        }
        for (CarplayDevice carplayDevice3 : this.mCarplayDevices) {
            if (carplayDevice3 != null) {
                String deviceId = carplayDevice3.getDeviceId();
                String name = carplayDevice3.getName();
                LogUtil.i("getBondedDevicesnew mCarplayDevices:" + deviceId + "," + name);
                if (!deviceId.equals(name)) {
                    this.mDeviceNameMap.put(deviceId, name);
                }
            }
        }
        return this.mCarplayDevices;
    }

    public CarplayDevice getConnectedDevice() {
        CarplayManager defaultManager;
        try {
            defaultManager = CarplayManager.getDefaultManager();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (defaultManager == null) {
            return null;
        }
        List<CarplayDevice> connectedDevices = defaultManager.getConnectedDevices();
        Log.i(this.TAG, "getConnectedDevice carplayDevices:" + connectedDevices);
        if (connectedDevices != null && connectedDevices.size() != 0) {
            for (CarplayDevice carplayDevice : connectedDevices) {
                int connectionState = CarplayManager.getDefaultManager().getConnectionState(carplayDevice);
                LogUtil.i(this.TAG + "getConnectedDevice carplayDevice:" + carplayDevice + ",state:" + connectionState);
                if (connectionState == 2) {
                    return carplayDevice;
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void init() {
        LogUtil.i(this.TAG + " init()");
        this.mInitDisposable = Observable.create(new ObservableOnSubscribe<Object>() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.17
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<Object> observableEmitter) {
                CarplayManager carplayManager = null;
                while (carplayManager == null) {
                    carplayManager = CarplayManager.getDefaultManager();
                    try {
                        Thread.sleep(800L);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                LogUtil.i(CarPlayLinkHelper.this.TAG + "init manager:" + carplayManager);
                carplayManager.registerCallback(CarPlayLinkHelper.this.mCarplayCallback, (Handler) null);
                List connectedDevices = carplayManager.getConnectedDevices();
                if (connectedDevices != null && !connectedDevices.isEmpty()) {
                    Iterator it = connectedDevices.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        CarplayDevice carplayDevice = (CarplayDevice) it.next();
                        if (carplayDevice != null) {
                            LogUtil.i("init connectedDevice:" + carplayDevice + ",isConnected:" + carplayDevice.isConnected());
                            if (carplayDevice.isConnected()) {
                                CarPlayLinkHelper.this.mCarplayCallback.onConnectionStateChanged(carplayDevice, 2);
                                break;
                            }
                        }
                    }
                }
                List confirmableDevices = carplayManager.getConfirmableDevices();
                LogUtil.i(CarPlayLinkHelper.this.TAG + "init confirmableDevices:" + confirmableDevices);
                if (confirmableDevices != null && !confirmableDevices.isEmpty()) {
                    Iterator it2 = confirmableDevices.iterator();
                    while (it2.hasNext()) {
                        CarPlayLinkHelper.this.mCarplayCallback.onFirstConnectRequest((CarplayDevice) it2.next());
                    }
                }
                Iterator it3 = CarPlayLinkHelper.observors.iterator();
                while (it3.hasNext()) {
                    ((CarPlayObservor) it3.next()).onServiceConnected();
                }
                boolean isCarplayCertificateOn = CarPlayUtils.isCarplayCertificateOn();
                int enableState = carplayManager.getEnableState();
                LogUtil.i(CarPlayLinkHelper.this.TAG + "init carplayCertificateOn:" + isCarplayCertificateOn + ",enableState:" + enableState);
                if (isCarplayCertificateOn) {
                    while (enableState != 2) {
                        try {
                            Thread.sleep(500L);
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                        enableState = carplayManager.getEnableState();
                        LogUtil.i(CarPlayLinkHelper.this.TAG + "init loop enableState:" + enableState);
                    }
                    String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                    if (ProductDeviceManager.PRODUCT_CA1105.equals(curProductDevice)) {
                        CarPlayUtils.turnOffResolution();
                        carplayManager.setVideoResolution(1910, 710);
                    } else if (ProductDeviceManager.PRODUCT_CB_IHU23.equals(curProductDevice)) {
                        CarPlayUtils.turnOffResolution();
                        carplayManager.setVideoResolution(1900, 700);
                    }
                }
            }
        }).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(new ObjectConsumer(), new ExceptionConsumer());
        this.mMediaInfo.setPhoneType("carplay");
        CarAudioListenerImp.registerObservor(this.carAudioObservor);
        ActivityChangedReceiver.registerObservor(this.activityChangedObservor);
        CarInfoListenerImp.registerObservor(this.carInfoObservor);
        WifiReceiver.registerObservor(this.wifiObservor);
        CarLightListenerImp.registerObservor(this.carLightObservor);
        CarSwcCallBackImp.registerObservor(this.carSwcObservor);
        CarLocationManager.registerObservor(this.carLocationObservor);
        AvmserviceReceiver.registerObservor(this.avmserviceObservor);
        CarPowerListenerImp.registerObservor(this.carPowerObservor);
        BluetoothSettingsCallBackImp.registerObservor(this.bluetoothSettingsObservor);
        BluetoothPhoneCallBackImp.registerObservor(this.bluetoothPhoneObservor);
        BluetoothMusicCallBackImp.registerObservor(this.bluetoothMusicObservor);
        this.mAudioManager = (AudioManager) CarTransferApplication.context.getSystemService("audio");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(CARPLAY_UI_CHANGE);
        intentFilter.addAction(SETTING_AP_CHANGE);
        intentFilter.addAction("autochips.intent.action.ALTERNATE_VOLUME_CONTROL");
        CarTransferApplication.context.registerReceiver(this.mReceiver, intentFilter);
        apLogical();
        initGps();
        configCarPlayLogo();
    }

    private void configCarPlayLogo() {
        boolean isGACLogoPresent = ProductDeviceManager.ins.isGACLogoPresent();
        Log.i(this.TAG, "gacLogoPresent:" + isGACLogoPresent);
        if (isGACLogoPresent) {
            SystemProperties.set("persist.carplay.icon.label", "");
            SystemProperties.set("persist.carplay.icon.104px", "");
            SystemProperties.set("persist.carplay.icon.120px", "");
            SystemProperties.set("persist.carplay.icon.180px", "");
            SystemProperties.set("persist.carplay.icon.256px", "");
            return;
        }
        SystemProperties.set("persist.carplay.icon.label", HiCarStateConst.PAGE_TYPE_HOME);
        SystemProperties.set("persist.carplay.icon.104px", "fca_104x104.png");
        SystemProperties.set("persist.carplay.icon.120px", "fca_120x120.png");
        SystemProperties.set("persist.carplay.icon.180px", "fca_180x180.png");
        SystemProperties.set("persist.carplay.icon.256px", "fca_256x256.png");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void apLogical() {
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        if (((curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) ? (char) 0 : (char) 65535) != 0) {
            boolean z = SystemProperties.getBoolean("ro.atc.carplay.certificate", false);
            LogUtil.i("apLogical certifiValue:" + z);
            if (z) {
                boolean isApEnable = WIfiUtils.isApEnable();
                LogUtil.i("apLogical isApEnable:" + isApEnable);
                if (isApEnable) {
                    AppUtil.onThread(new Consumer() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.18
                        @Override // io.reactivex.functions.Consumer
                        public void accept(Object obj) throws Exception {
                            WIfiUtils.setApEnable(false, null);
                            Thread.sleep(500L);
                            WIfiUtils.setApEnable(true, CarPlayLinkHelper.this.mOnStartTetheringCallback);
                        }
                    });
                } else {
                    WIfiUtils.setApEnable(true, this.mOnStartTetheringCallback);
                }
            }
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public void connectByUsb() {
        if (CarplayManager.getDefaultManager() == null) {
            Log.i(this.TAG, " connectByUsb disconnect CarplayManager.getDefaultManager() == null");
            return;
        }
        if (isConnected()) {
            Log.i(this.TAG, "connectByUsb ,isConnected:true");
            launchApp();
            return;
        }
        Log.i(this.TAG, "connectByUsb ,isConnected:false");
        List availableDevices = CarplayManager.getDefaultManager().getAvailableDevices();
        Log.i(this.TAG, "connectByUsb carplayDevices:" + availableDevices);
        if (availableDevices == null || availableDevices.size() == 0) {
            Log.i(this.TAG, "connectByUsb carplayDevices == null || carplayDevices.size() == 0");
            launchApp();
            return;
        }
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        Log.d(this.TAG, "connectByUsb,curProductDevice: " + curProductDevice);
        if (ProductDeviceManager.PRODUCT_CA1105.equals(curProductDevice)) {
            ProductDeviceManager.ins.resetUsb();
        }
        CarplayDevice carplayDevice = (CarplayDevice) availableDevices.get(0);
        if (carplayDevice == null) {
            launchApp();
        } else {
            CarplayManager.getDefaultManager().connect(carplayDevice);
            Log.i(this.TAG, "phonklinkprog carplay connect()");
        }
    }

    private void launchApp() {
        if (CarplayManager.getDefaultManager().getResourceState().getMainScreen() == 1) {
            CarplayManager.getDefaultManager().stopVideo(true);
        }
        sendRequestUICheckRunnable();
        CarPlayUtils.launchApp(CarTransferApplication.context);
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public void connectByWireless() {
        LogUtil.i("connectByWireless()");
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        List availableDevices = defaultManager.getAvailableDevices();
        LogUtil.i("connectByWireless availableDevices:" + availableDevices);
        if (availableDevices != null && !availableDevices.isEmpty()) {
            arrayList.addAll(availableDevices);
        }
        List connectedDevices = CarplayManager.getDefaultManager().getConnectedDevices();
        LogUtil.i("connectByWireless connectedDevices:" + connectedDevices);
        if (connectedDevices != null && !connectedDevices.isEmpty()) {
            arrayList.addAll(connectedDevices);
        }
        List bondedDevices = CarplayManager.getDefaultManager().getBondedDevices();
        LogUtil.i("connectByWireless bondedDevices:" + bondedDevices);
        if (bondedDevices != null && !bondedDevices.isEmpty()) {
            arrayList.addAll(bondedDevices);
        }
        LogUtil.i("connectByWireless list:" + arrayList);
        if (arrayList.isEmpty()) {
            return;
        }
        CarplayDevice carplayDevice = (CarplayDevice) arrayList.get(0);
        LogUtil.i("connectByWireless device:" + carplayDevice);
        LogUtil.i("connectByWireless connect result:" + defaultManager.connect(carplayDevice));
    }

    public boolean isEnable() {
        LogUtil.i(this.TAG + " isEnable()");
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return false;
        }
        boolean isEnabled = defaultManager.isEnabled();
        LogUtil.i(this.TAG + " isEnable result:" + isEnabled);
        return isEnabled;
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public void disconnect() {
        if (CarplayManager.getDefaultManager() == null) {
            return;
        }
        List<CarplayDevice> connectedDevices = CarplayManager.getDefaultManager().getConnectedDevices();
        LogUtil.i(this.TAG + "disconnect carplayDevices:" + connectedDevices);
        if (connectedDevices == null || connectedDevices.size() == 0) {
            return;
        }
        for (CarplayDevice carplayDevice : connectedDevices) {
            if (carplayDevice != null) {
                CarplayManager.getDefaultManager().disconnect(carplayDevice);
                this.isDisconnectFromApi = true;
                LogUtil.i(this.TAG + "disconnect carplayDevice:" + carplayDevice);
            }
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void enable(boolean z) {
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        LogUtil.i(this.TAG + " enable curProductDevice:" + curProductDevice);
        if (((curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) ? (char) 0 : (char) 65535) != 0) {
            boolean isCarplayPresent = CarControlManager.ins.isCarplayPresent();
            LogUtil.i(this.TAG + " enable isCarplayPresent:" + isCarplayPresent);
            if (!isCarplayPresent) {
                this.mLastEnableStatus = false;
                if (CarplayManager.getDefaultManager() != null) {
                    CarplayManager.getDefaultManager().disable();
                    return;
                }
                return;
            }
        }
        this.mLastEnableStatus = z;
        if (CarplayManager.getDefaultManager() == null) {
            return;
        }
        LogUtil.i(this.TAG + " enable preEnable:" + CarplayManager.getDefaultManager().isEnabled() + ",setEnable:" + z);
        if (z) {
            if (CarControlManager.ins.isUpgrading()) {
                return;
            }
            CarplayManager.getDefaultManager().enable();
            return;
        }
        CarplayManager.getDefaultManager().disable();
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void startVR() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        LogUtil.i(this.TAG + " startVR()");
        if (defaultManager == null) {
            return;
        }
        defaultManager.requestSiri(2);
        defaultManager.requestSiri(3);
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void acceptPhone() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        LogUtil.i(this.TAG + " acceptPhone TELEPHONY_HOOK_SWITCH");
        if (defaultManager == null) {
            return;
        }
        defaultManager.updateTelehony(1);
        defaultManager.updateTelehony(0);
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void rejectPhone() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        LogUtil.i(this.TAG + " rejectPhone TELEPHONY_DROP");
        if (defaultManager == null) {
            return;
        }
        ProductDeviceManager.ins.getCurProductDevice();
        defaultManager.updateTelehony(3);
        defaultManager.updateTelehony(0);
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void starCallPage() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        LogUtil.i(this.TAG + " starCallPage()");
        if (defaultManager == null) {
            return;
        }
        if (defaultManager.getResourceState().getMainScreen() == 1) {
            defaultManager.stopVideo(true);
        }
        sendRequestUICheckRunnable();
        defaultManager.requestDeviceUI(3, "url:");
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public int getCallStatus() {
        LogUtil.i(this.TAG + " getCallStatus:" + this.mCallStatus);
        if (isConnected()) {
            return this.mCallStatus;
        }
        return 0;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void mute(boolean z) {
        LogUtil.i("muteVrAndMap:" + z);
        CarControlManager.ins.mute(17, z);
        CarControlManager.ins.mute(18, z);
    }

    public void muteVR(boolean z) {
        CarControlManager.ins.mute(17, z);
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void startPage(int i) {
        LogUtil.i("startPage:" + i);
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        switch (i) {
            case 0:
                if (defaultManager.getResourceState().getMainScreen() == 1) {
                    defaultManager.stopVideo(true);
                }
                sendRequestUICheckRunnable();
                defaultManager.requestDeviceUI(1, "url:");
                return;
            case 1:
                if (defaultManager.getResourceState().getMainScreen() == 1) {
                    defaultManager.stopVideo(true);
                }
                sendRequestUICheckRunnable();
                defaultManager.requestDeviceUI(2, "url:");
                return;
            case 2:
                if (defaultManager.getResourceState().getMainScreen() == 1) {
                    defaultManager.stopVideo(true);
                }
                sendRequestUICheckRunnable();
                defaultManager.requestDeviceUI(5, "url:");
                return;
            case 3:
                if (defaultManager.getResourceState().getMainScreen() == 1) {
                    defaultManager.stopVideo(true);
                }
                sendRequestUICheckRunnable();
                defaultManager.requestDeviceUI(3, "url:");
                return;
            case 4:
                defaultManager.stopVideo(true);
                return;
            case 5:
                if (defaultManager.getResourceState().getMainScreen() == 1) {
                    defaultManager.stopVideo(true);
                }
                sendRequestUICheckRunnable();
                defaultManager.requestDeviceUI(6, "url:");
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ab  */
    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized List<CarLinkDevice> getCarLinkDeviceList() {
        List<CarplayDevice> bondedDevices;
        LogUtil.i("getCarLinkDeviceList,curthread:" + Thread.currentThread());
        ArrayList arrayList = new ArrayList();
        try {
            bondedDevices = getBondedDevices();
        } catch (Exception e) {
            LogUtil.i("getCarLinkDeviceList error:" + e.getMessage());
        }
        if (bondedDevices != null && !bondedDevices.isEmpty()) {
            for (CarplayDevice carplayDevice : bondedDevices) {
                if (carplayDevice != null) {
                    String str = this.mDeviceNameMap.get(carplayDevice.getDeviceId());
                    LogUtil.i("getCarLinkDeviceList deviceName:" + carplayDevice.getName());
                    LogUtil.i("getCarLinkDeviceList deviceMapName:" + str);
                    CarLinkDevice carLinkDevice = new CarLinkDevice();
                    carLinkDevice.setPhoneType("carplay");
                    if (str != null && !str.isEmpty()) {
                        carLinkDevice.setDeviceName(str);
                        carLinkDevice.setDeviceId(carplayDevice.getDeviceId());
                        carLinkDevice.setConnectedStatus(carplayDevice.isConnected() ? 1 : 0);
                        int i = 1;
                        if (carplayDevice.getTransport() == 1) {
                            i = 0;
                        }
                        carLinkDevice.setConnectedType(i);
                        carLinkDevice.setMacAddress(carplayDevice.getDeviceId());
                        boolean checkDeviceSupport = checkDeviceSupport(carplayDevice);
                        carLinkDevice.setStatus(checkDeviceSupport ? 1 : 0);
                        LogUtil.i("getCarLinkDeviceList isSupport:" + checkDeviceSupport);
                        arrayList.add(carLinkDevice);
                        LogUtil.i("getCarLinkDeviceList device:" + carLinkDevice);
                    }
                    carLinkDevice.setDeviceName(carplayDevice.getName());
                    carLinkDevice.setDeviceId(carplayDevice.getDeviceId());
                    carLinkDevice.setConnectedStatus(carplayDevice.isConnected() ? 1 : 0);
                    int i2 = 1;
                    if (carplayDevice.getTransport() == 1) {
                    }
                    carLinkDevice.setConnectedType(i2);
                    carLinkDevice.setMacAddress(carplayDevice.getDeviceId());
                    boolean checkDeviceSupport2 = checkDeviceSupport(carplayDevice);
                    carLinkDevice.setStatus(checkDeviceSupport2 ? 1 : 0);
                    LogUtil.i("getCarLinkDeviceList isSupport:" + checkDeviceSupport2);
                    arrayList.add(carLinkDevice);
                    LogUtil.i("getCarLinkDeviceList device:" + carLinkDevice);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<CarLinkDevice> getAvailableCarLinkDeviceList() {
        List<CarplayDevice> availableDevices;
        ArrayList arrayList = new ArrayList();
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return arrayList;
        }
        try {
            availableDevices = defaultManager.getAvailableDevices();
        } catch (Exception e) {
            LogUtil.i("getAvailableCarLinkDeviceList error:" + e.getMessage());
        }
        if (availableDevices != null && !availableDevices.isEmpty()) {
            for (CarplayDevice carplayDevice : availableDevices) {
                if (carplayDevice != null) {
                    String str = this.mDeviceNameMap.get(carplayDevice.getDeviceId());
                    LogUtil.i("getAvailableCarLinkDeviceList deviceName:" + carplayDevice.getName());
                    LogUtil.i("getAvailableCarLinkDeviceList deviceMapName:" + str);
                    CarLinkDevice carLinkDevice = new CarLinkDevice();
                    carLinkDevice.setPhoneType("carplay");
                    if (str != null && !str.isEmpty()) {
                        carLinkDevice.setDeviceName(str);
                        carLinkDevice.setDeviceId(carplayDevice.getDeviceId());
                        carLinkDevice.setConnectedStatus(carplayDevice.isConnected() ? 1 : 0);
                        int i = 1;
                        if (carplayDevice.getTransport() == 1) {
                            i = 0;
                        }
                        carLinkDevice.setConnectedType(i);
                        carLinkDevice.setMacAddress(carplayDevice.getDeviceId());
                        arrayList.add(carLinkDevice);
                        LogUtil.i("getAvailableCarLinkDeviceList device:" + carLinkDevice);
                    }
                    carLinkDevice.setDeviceName(carplayDevice.getName());
                    carLinkDevice.setDeviceId(carplayDevice.getDeviceId());
                    carLinkDevice.setConnectedStatus(carplayDevice.isConnected() ? 1 : 0);
                    int i2 = 1;
                    if (carplayDevice.getTransport() == 1) {
                    }
                    carLinkDevice.setConnectedType(i2);
                    carLinkDevice.setMacAddress(carplayDevice.getDeviceId());
                    arrayList.add(carLinkDevice);
                    LogUtil.i("getAvailableCarLinkDeviceList device:" + carLinkDevice);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void connectCarLinkDevice(CarLinkDevice carLinkDevice) {
        CarplayManager defaultManager;
        LogUtil.i("connectCarLinkDevice carLinkDevice:" + carLinkDevice);
        if (carLinkDevice == null || (defaultManager = CarplayManager.getDefaultManager()) == null) {
            return;
        }
        String deviceId = carLinkDevice.getDeviceId();
        if (isConnected()) {
            if (this.mPreConnectedDevice.getDeviceId().equals(deviceId)) {
                return;
            } else {
                disconnect();
            }
        }
        if (this.mConnectDeviceLaterD != null) {
            this.mConnectDeviceLaterD.dispose();
        }
        if (!defaultManager.isEnabled()) {
            enable(true);
        }
        this.mConnectDeviceLaterD = connectLater(defaultManager.getRemoteDevice(deviceId));
    }

    private Disposable connectLater(final CarplayDevice carplayDevice) {
        return AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.19
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) {
                LogUtil.i("connectCarLinkDevice connectLater device:" + carplayDevice);
                CarplayManager defaultManager = CarplayManager.getDefaultManager();
                if (defaultManager == null) {
                    return;
                }
                boolean isConnected = CarPlayLinkHelper.this.isConnected();
                LogUtil.i("connectCarLinkDevice connectLater connected:" + isConnected);
                if (isConnected) {
                    return;
                }
                CarPlayLinkHelper.this.mCarLinkConnectedAddress = carplayDevice.getDeviceId();
                LogUtil.i("connectCarLinkDevice connectLater result:" + defaultManager.connect(carplayDevice));
            }
        }, 2000L);
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void forgetCarLinkDevice(CarLinkDevice carLinkDevice) {
        LogUtil.i("forgetCarLinkDevice:" + carLinkDevice);
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        String deviceId = carLinkDevice.getDeviceId();
        for (CarplayDevice carplayDevice : getBondedDevices()) {
            if (deviceId.equals(carplayDevice.getDeviceId())) {
                defaultManager.forget(carplayDevice);
                return;
            }
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void uninit() {
        if (this.mInitDisposable != null) {
            this.mInitDisposable.dispose();
        }
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager != null) {
            defaultManager.unregisterCallback(this.mCarplayCallback);
        }
        WifiReceiver.unregisterObservor(this.wifiObservor);
        CarLightListenerImp.unregisterObservor(this.carLightObservor);
        CarAudioListenerImp.unregisterObservor(this.carAudioObservor);
        CarInfoListenerImp.unregisterObservor(this.carInfoObservor);
        ActivityChangedReceiver.unregisterObservor(this.activityChangedObservor);
        CarTransferApplication.context.unregisterReceiver(this.mReceiver);
        BluetoothSettingsCallBackImp.unregisterObservor(this.bluetoothSettingsObservor);
        CarSwcCallBackImp.unregisterObservor(this.carSwcObservor);
        CarLocationManager.unregisterObservor(this.carLocationObservor);
        CarPowerListenerImp.unregisterObservor(this.carPowerObservor);
        AvmserviceReceiver.unregisterObservor(this.avmserviceObservor);
        BluetoothPhoneCallBackImp.unregisterObservor(this.bluetoothPhoneObservor);
        BluetoothMusicCallBackImp.unregisterObservor(this.bluetoothMusicObservor);
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public boolean isConnected() {
        LogUtil.i("isConnected preConnectedDevice:" + this.mPreConnectedDevice);
        return this.mPreConnectedDevice != null;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void closeVR() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        defaultManager.requestSiri(2);
        defaultManager.requestSiri(3);
        LogUtil.i("carplay closeVR()");
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public int getVRStatus() {
        boolean isVROn = isVROn();
        LogUtil.i("getVRStatus isVROn:" + isVROn);
        return isVROn ? 1 : 0;
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void previous() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        defaultManager.updateMedia(5);
        defaultManager.updateMedia(0);
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void next() {
        LogUtil.i("next()");
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        defaultManager.updateMedia(4);
        defaultManager.updateMedia(0);
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void play() {
        LogUtil.i("carplaylink_play_start");
        if (this.mPauseOrPlayD != null) {
            this.mPauseOrPlayD.dispose();
        }
        this.mPauseOrPlayD = AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.20
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) {
                CarplayManager defaultManager = CarplayManager.getDefaultManager();
                if (defaultManager == null) {
                    return;
                }
                boolean isCarplayCertificateOn = CarPlayUtils.isCarplayCertificateOn();
                LogUtil.i("carplaylink_play_carplayCertificateOn:" + isCarplayCertificateOn);
                if (isCarplayCertificateOn) {
                    boolean isMusicOn = CarPlayLinkHelper.this.isMusicOn();
                    LogUtil.i("carplaylink_play_musicOn: " + isMusicOn);
                    if (isMusicOn) {
                        return;
                    }
                    LogUtil.i("carplaylink_play_updateMedia_MEDIA_PALYPAUSE");
                    defaultManager.updateMedia(3);
                    defaultManager.updateMedia(0);
                    return;
                }
                LogUtil.i("carplaylink_play_updateMedia_MEDIA_PLAY");
                defaultManager.updateMedia(1);
                defaultManager.updateMedia(0);
            }
        }, 180L);
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void pause() {
        LogUtil.i("carplaylink_stop_start");
        if (this.mPauseOrPlayD != null) {
            this.mPauseOrPlayD.dispose();
        }
        this.mPauseOrPlayD = AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.21
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) throws Exception {
                CarplayManager defaultManager = CarplayManager.getDefaultManager();
                if (defaultManager == null) {
                    return;
                }
                boolean isCarplayCertificateOn = CarPlayUtils.isCarplayCertificateOn();
                LogUtil.i("carplaylink_stop_carplayCertificateOn:" + isCarplayCertificateOn);
                if (isCarplayCertificateOn) {
                    boolean isMusicOn = CarPlayLinkHelper.this.isMusicOn();
                    LogUtil.i("carplaylink_stop_start_musicOn: " + isMusicOn);
                    if (isMusicOn) {
                        LogUtil.i("carplaylink_stop_updateMedia_MEDIA_PALYPAUSE");
                        defaultManager.updateMedia(3);
                        defaultManager.updateMedia(0);
                        return;
                    }
                    return;
                }
                LogUtil.i("carplaylink_stop_updateMedia_MEDIA_PAUSE");
                defaultManager.updateMedia(2);
                defaultManager.updateMedia(0);
            }
        }, 180L);
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper, com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void resume() {
        boolean z = this.mCallStatus == 0;
        boolean isAvmShow = AvmserviceReceiver.isAvmShow();
        boolean isPowerStandBy = ProductDeviceManager.ins.isPowerStandBy();
        boolean z2 = this.mPrePlayStatus == 1;
        boolean isEngineBoxOn = CarControlManager.ins.isEngineBoxOn();
        String audioSourcePackage = CarControlManager.ins.getAudioSourcePackage();
        LogUtil.i("resume callIdel:" + z + ",avm:" + isAvmShow + ",isPlaying:" + z2 + ",mPrePlayStatus:" + this.mPrePlayStatus + ",isPowerStandBy:" + isPowerStandBy + ",isEngineBoxOn:" + isEngineBoxOn + ",audioSourcePackage:" + audioSourcePackage);
        if (z2 && ActivityChangedReceiver.PKG_CARPLAY.equals(audioSourcePackage) && !isEngineBoxOn && z && !isPowerStandBy && this.mPrePlayStatus == 1) {
            play();
            this.mPrePlayStatus = 0;
        }
    }

    public int cancelAutoShow() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return -1;
        }
        LogUtil.i("cancelAutoShow activeLastUserModeForMainScreen");
        int activeLastUserModeForMainScreen = defaultManager.activeLastUserModeForMainScreen();
        LogUtil.i("cancelAutoShow result:" + activeLastUserModeForMainScreen);
        if (activeLastUserModeForMainScreen != 0) {
            SettingsUtil.putInt("isCancelAutoShow", 1);
        }
        return activeLastUserModeForMainScreen;
    }

    public void connetCarplayByAddress(String str) {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        LogUtil.i(this.TAG + " connetCarplayByAddress address:" + str + "\n");
        if (defaultManager == null) {
            return;
        }
        CarplayDevice remoteDevice = defaultManager.getRemoteDevice(str);
        LogUtil.i("connetCarplayByAddress remoteDevice:" + remoteDevice + "\n");
        LogUtil.i("connetCarplayByAddress connect:" + defaultManager.connect(remoteDevice) + "\n");
    }

    public void confirmFirstConnect(String str) {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        LogUtil.i("confirmFirstConnect defaultManager:" + defaultManager + "\n");
        LogUtil.i("confirmFirstConnect address:" + str + "\n");
        if (defaultManager == null) {
            return;
        }
        CarplayDevice remoteDevice = defaultManager.getRemoteDevice(str);
        LogUtil.i("confirmFirstConnect remoteDevice:" + remoteDevice + "\n");
        LogUtil.i("confirmFirstConnect connect:" + defaultManager.confirmFirstConnect(remoteDevice) + "\n");
    }

    public void disConnectByAddress(String str) {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        LogUtil.i("disconnectByAddress defaultManager:" + defaultManager + "\n");
        LogUtil.i("disconnectByAddress address:" + str + "\n");
        if (defaultManager == null) {
            return;
        }
        CarplayDevice remoteDevice = defaultManager.getRemoteDevice(str);
        LogUtil.i("disconnectByAddress remoteDevice:" + remoteDevice + "\n");
        LogUtil.i("disconnectByAddress disconnect:" + defaultManager.disconnect(remoteDevice) + "\n");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void updateCustomSentence(ICarInfo.GearPosition gearPosition, int i) {
        String str;
        String str2;
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        CarplayDevice connectedDevice = getConnectedDevice();
        if (defaultManager == null) {
            return;
        }
        if (connectedDevice == null) {
            return;
        }
        float nowToZeroTimeStamp = (((float) TimeUtils.nowToZeroTimeStamp()) * 1.0f) / 1000.0f;
        if (gearPosition == ICarInfo.GearPosition.DRIVE) {
            str2 = "D";
        } else if (gearPosition == ICarInfo.GearPosition.PARKING) {
            str2 = "P";
        } else if (gearPosition == ICarInfo.GearPosition.REVERSE) {
            str2 = "R";
        } else {
            if (gearPosition != ICarInfo.GearPosition.NEUTRAL) {
                str = "U";
                boolean z = i > 0;
                ArrayList arrayList = new ArrayList();
                arrayList.add(new CarplayVehicleSpeed.SpeedSampleData(0.0f, (i * 1000.0f) / 3600.0f));
                LogUtil.i("updateCustomSentence result :" + defaultManager.updateCustomSentence(connectedDevice, new CarplayVehicleSpeed(nowToZeroTimeStamp, str, z, 1, arrayList)));
            }
            str2 = "N";
        }
        str = str2;
        boolean z2 = i > 0;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new CarplayVehicleSpeed.SpeedSampleData(0.0f, (i * 1000.0f) / 3600.0f));
        LogUtil.i("updateCustomSentence result :" + defaultManager.updateCustomSentence(connectedDevice, new CarplayVehicleSpeed(nowToZeroTimeStamp, str, z2, 1, arrayList2)));
    }

    public synchronized void updateLocationInfo() {
        LogUtil.i("updateLocationInfo()");
        uploadINS();
        if (SettingsUtil.isNmeaPropFalse()) {
            return;
        }
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        CarplayDevice connectedDevice = getConnectedDevice();
        if (defaultManager == null) {
            return;
        }
        if (connectedDevice == null) {
            return;
        }
        if (this.mLocationMap.isEmpty()) {
            return;
        }
        try {
            int locationDataType = defaultManager.getLocationDataType(connectedDevice);
            LogUtil.i("carplay updateLocationInfo locationDataType:" + locationDataType + "\n");
            for (Integer num : this.mLocationMap.keySet()) {
                if ((num.intValue() & locationDataType) != 0) {
                    String[] split = this.mLocationMap.get(num).split("&");
                    int length = split.length;
                    int i = 0;
                    while (true) {
                        if (i < length) {
                            String str = split[i];
                            String nmeaValue = CarLocationManager.ins.getNmeaValue(str);
                            if (nmeaValue.isEmpty()) {
                                i++;
                            } else {
                                int vehicleSpeed = CarControlManager.ins.getVehicleSpeed();
                                ICarInfo.GearPosition gearPosition = CarControlManager.ins.getGearPosition();
                                if (vehicleSpeed == 0 && ICarInfo.GearPosition.REVERSE == gearPosition) {
                                    if (str.endsWith("GSV")) {
                                        String[] split2 = nmeaValue.split(",");
                                        String str2 = split2[6];
                                        if (!str2.isEmpty()) {
                                            double doubleValue = Double.valueOf(str2).doubleValue();
                                            split2[6] = String.valueOf(doubleValue <= 180.0d ? doubleValue + 180.0d : doubleValue - 180.0d);
                                        } else {
                                            split2[6] = String.valueOf(180);
                                        }
                                        nmeaValue = String.join(",", split2);
                                    } else if (str.endsWith("RMC")) {
                                        String[] split3 = nmeaValue.split(",");
                                        String str3 = split3[8];
                                        if (!str3.isEmpty()) {
                                            double doubleValue2 = Double.valueOf(str3).doubleValue();
                                            split3[8] = String.valueOf(doubleValue2 <= 180.0d ? doubleValue2 + 180.0d : doubleValue2 - 180.0d);
                                        } else {
                                            split3[8] = String.valueOf(180);
                                        }
                                        nmeaValue = String.join(",", split3);
                                    }
                                }
                                LogUtil.i("carplay updateLocationInfo nmeaValue:" + nmeaValue + ",result :" + defaultManager.updateLocationInfo(connectedDevice, nmeaValue) + "\n");
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.i("carplay updateLocationInfo error:" + e.getMessage());
        }
    }

    public void updateCarPlayMedia(int i) {
        LogUtil.i("updateCarPlayMedia:" + i);
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        LogUtil.i("updateCarPlayMedia result:" + defaultManager.updateMedia(i));
    }

    public void requestCarPlaySiri(int i) {
        LogUtil.i("requestCarPlaySiri:" + i);
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        LogUtil.i("requestCarPlaySiri result:" + defaultManager.requestSiri(i));
    }

    public void updateCarPlayTelehony(int i) {
        LogUtil.i("updateCarPlayTelehony:" + i);
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        LogUtil.i("updateCarPlayTelehony result:" + defaultManager.updateTelehony(i));
    }

    public void tel(String str) {
        LogUtil.i("tel:" + str);
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null) {
            return;
        }
        if (defaultManager.getResourceState().getMainScreen() == 1) {
            defaultManager.stopVideo(true);
        }
        sendRequestUICheckRunnable();
        LogUtil.i("tel result:" + defaultManager.requestDeviceUI(6, str));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initGps() {
        double d;
        double d2;
        double d3;
        double d4;
        boolean z;
        double d5;
        double d6;
        double d7;
        double d8;
        String string = SettingsUtil.getString(KEY_NMEA_GPGGA);
        String string2 = SettingsUtil.getString(KEY_NMEA_GPRMC);
        LogUtil.i("initGps nmeaGPGGA:" + string);
        LogUtil.i("initGps nmeaGPRMC:" + string2);
        double vehicleSpeed = (double) CarControlManager.ins.getVehicleSpeed();
        if (string != null && !string.isEmpty()) {
            try {
                String[] split = string.split(",");
                LogUtil.i("nmeaGPGGA:" + split);
                double doubleValue = Double.valueOf(split[2]).doubleValue();
                try {
                    d7 = formatLatLong(doubleValue);
                    try {
                        double doubleValue2 = Double.valueOf(split[4]).doubleValue();
                        try {
                            d8 = formatLatLong(doubleValue2);
                        } catch (Exception e) {
                            e = e;
                            d8 = doubleValue2;
                        }
                        try {
                            d6 = Double.valueOf(split[9]).doubleValue();
                        } catch (Exception e2) {
                            e = e2;
                            d6 = 0.0d;
                            e.printStackTrace();
                            d3 = d6;
                            d2 = d7;
                            d = d8;
                            d4 = 1.0d;
                            boolean z2 = false;
                            if (string2 != null) {
                            }
                            z = z2;
                            d5 = 0.0d;
                            StringBuilder sb = new StringBuilder();
                            sb.append("initGps gpsinfo:");
                            boolean z3 = z;
                            sb.append(System.currentTimeMillis());
                            sb.append(",");
                            sb.append(d2);
                            sb.append(",");
                            sb.append(d);
                            sb.append(",");
                            double d9 = d3;
                            sb.append(d9);
                            sb.append(",");
                            sb.append(vehicleSpeed);
                            sb.append(",");
                            sb.append(1.0d);
                            sb.append(",");
                            sb.append(d5);
                            sb.append(",");
                            sb.append(d4);
                            sb.append(",");
                            sb.append(z3 ? 1 : 0);
                            Log.e("ins", sb.toString());
                            GpsManager.getInstance().updateGps(System.currentTimeMillis(), d2, d, d9, vehicleSpeed, 1.0d, d5, d4, z3 ? 1 : 0);
                        }
                        try {
                            d3 = d6;
                            d2 = d7;
                            d = d8;
                            d4 = Double.valueOf(split[7]).doubleValue();
                        } catch (Exception e3) {
                            e = e3;
                            e.printStackTrace();
                            d3 = d6;
                            d2 = d7;
                            d = d8;
                            d4 = 1.0d;
                            boolean z22 = false;
                            if (string2 != null) {
                            }
                            z = z22;
                            d5 = 0.0d;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("initGps gpsinfo:");
                            boolean z32 = z;
                            sb2.append(System.currentTimeMillis());
                            sb2.append(",");
                            sb2.append(d2);
                            sb2.append(",");
                            sb2.append(d);
                            sb2.append(",");
                            double d92 = d3;
                            sb2.append(d92);
                            sb2.append(",");
                            sb2.append(vehicleSpeed);
                            sb2.append(",");
                            sb2.append(1.0d);
                            sb2.append(",");
                            sb2.append(d5);
                            sb2.append(",");
                            sb2.append(d4);
                            sb2.append(",");
                            sb2.append(z32 ? 1 : 0);
                            Log.e("ins", sb2.toString());
                            GpsManager.getInstance().updateGps(System.currentTimeMillis(), d2, d, d92, vehicleSpeed, 1.0d, d5, d4, z32 ? 1 : 0);
                        }
                    } catch (Exception e4) {
                        e = e4;
                        d6 = 0.0d;
                        d8 = 0.0d;
                    }
                } catch (Exception e5) {
                    e = e5;
                    d8 = 0.0d;
                    d7 = doubleValue;
                    d6 = 0.0d;
                }
            } catch (Exception e6) {
                e = e6;
                d6 = 0.0d;
                d7 = 0.0d;
                d8 = 0.0d;
            }
            boolean z222 = false;
            if (string2 != null && !string2.isEmpty()) {
                try {
                    String[] split2 = string2.split(",");
                    z = CarLocationManager.STATUS_EFFECT.equals(split2[2]);
                } catch (Exception e7) {
                    e = e7;
                }
                try {
                    d5 = Double.valueOf(split2[8]).doubleValue();
                } catch (Exception e8) {
                    e = e8;
                    z222 = z;
                    e.printStackTrace();
                    z = z222;
                    d5 = 0.0d;
                    StringBuilder sb22 = new StringBuilder();
                    sb22.append("initGps gpsinfo:");
                    boolean z322 = z;
                    sb22.append(System.currentTimeMillis());
                    sb22.append(",");
                    sb22.append(d2);
                    sb22.append(",");
                    sb22.append(d);
                    sb22.append(",");
                    double d922 = d3;
                    sb22.append(d922);
                    sb22.append(",");
                    sb22.append(vehicleSpeed);
                    sb22.append(",");
                    sb22.append(1.0d);
                    sb22.append(",");
                    sb22.append(d5);
                    sb22.append(",");
                    sb22.append(d4);
                    sb22.append(",");
                    sb22.append(z322 ? 1 : 0);
                    Log.e("ins", sb22.toString());
                    GpsManager.getInstance().updateGps(System.currentTimeMillis(), d2, d, d922, vehicleSpeed, 1.0d, d5, d4, z322 ? 1 : 0);
                }
                StringBuilder sb222 = new StringBuilder();
                sb222.append("initGps gpsinfo:");
                boolean z3222 = z;
                sb222.append(System.currentTimeMillis());
                sb222.append(",");
                sb222.append(d2);
                sb222.append(",");
                sb222.append(d);
                sb222.append(",");
                double d9222 = d3;
                sb222.append(d9222);
                sb222.append(",");
                sb222.append(vehicleSpeed);
                sb222.append(",");
                sb222.append(1.0d);
                sb222.append(",");
                sb222.append(d5);
                sb222.append(",");
                sb222.append(d4);
                sb222.append(",");
                sb222.append(z3222 ? 1 : 0);
                Log.e("ins", sb222.toString());
                GpsManager.getInstance().updateGps(System.currentTimeMillis(), d2, d, d9222, vehicleSpeed, 1.0d, d5, d4, z3222 ? 1 : 0);
            }
            z = z222;
            d5 = 0.0d;
            StringBuilder sb2222 = new StringBuilder();
            sb2222.append("initGps gpsinfo:");
            boolean z32222 = z;
            sb2222.append(System.currentTimeMillis());
            sb2222.append(",");
            sb2222.append(d2);
            sb2222.append(",");
            sb2222.append(d);
            sb2222.append(",");
            double d92222 = d3;
            sb2222.append(d92222);
            sb2222.append(",");
            sb2222.append(vehicleSpeed);
            sb2222.append(",");
            sb2222.append(1.0d);
            sb2222.append(",");
            sb2222.append(d5);
            sb2222.append(",");
            sb2222.append(d4);
            sb2222.append(",");
            sb2222.append(z32222 ? 1 : 0);
            Log.e("ins", sb2222.toString());
            GpsManager.getInstance().updateGps(System.currentTimeMillis(), d2, d, d92222, vehicleSpeed, 1.0d, d5, d4, z32222 ? 1 : 0);
        }
        d = 0.0d;
        d2 = 0.0d;
        d3 = 0.0d;
        d4 = 1.0d;
        boolean z2222 = false;
        if (string2 != null) {
            String[] split22 = string2.split(",");
            z = CarLocationManager.STATUS_EFFECT.equals(split22[2]);
            d5 = Double.valueOf(split22[8]).doubleValue();
            StringBuilder sb22222 = new StringBuilder();
            sb22222.append("initGps gpsinfo:");
            boolean z322222 = z;
            sb22222.append(System.currentTimeMillis());
            sb22222.append(",");
            sb22222.append(d2);
            sb22222.append(",");
            sb22222.append(d);
            sb22222.append(",");
            double d922222 = d3;
            sb22222.append(d922222);
            sb22222.append(",");
            sb22222.append(vehicleSpeed);
            sb22222.append(",");
            sb22222.append(1.0d);
            sb22222.append(",");
            sb22222.append(d5);
            sb22222.append(",");
            sb22222.append(d4);
            sb22222.append(",");
            sb22222.append(z322222 ? 1 : 0);
            Log.e("ins", sb22222.toString());
            GpsManager.getInstance().updateGps(System.currentTimeMillis(), d2, d, d922222, vehicleSpeed, 1.0d, d5, d4, z322222 ? 1 : 0);
        }
        z = z2222;
        d5 = 0.0d;
        StringBuilder sb222222 = new StringBuilder();
        sb222222.append("initGps gpsinfo:");
        boolean z3222222 = z;
        sb222222.append(System.currentTimeMillis());
        sb222222.append(",");
        sb222222.append(d2);
        sb222222.append(",");
        sb222222.append(d);
        sb222222.append(",");
        double d9222222 = d3;
        sb222222.append(d9222222);
        sb222222.append(",");
        sb222222.append(vehicleSpeed);
        sb222222.append(",");
        sb222222.append(1.0d);
        sb222222.append(",");
        sb222222.append(d5);
        sb222222.append(",");
        sb222222.append(d4);
        sb222222.append(",");
        sb222222.append(z3222222 ? 1 : 0);
        Log.e("ins", sb222222.toString());
        GpsManager.getInstance().updateGps(System.currentTimeMillis(), d2, d, d9222222, vehicleSpeed, 1.0d, d5, d4, z3222222 ? 1 : 0);
    }

    public void setAudioOff() {
        LogUtil.i("setAudioOff mCallStatus:" + this.mCallStatus + ",isVROn:" + isVROn());
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null || this.mCallStatus != 0 || isVROn()) {
            return;
        }
        defaultManager.setAudioOff(true);
    }

    public void setAudioOn() {
        LogUtil.i("setAudioOn mCallStatus:" + this.mCallStatus + ",isVROn:" + isVROn());
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager == null || this.mCallStatus != 0 || isVROn()) {
            return;
        }
        defaultManager.setAudioOn();
    }

    public void uploadINS() {
        int i;
        float swcAngle = CarControlManager.ins.getSwcAngle();
        int vehicleSpeed = CarControlManager.ins.getVehicleSpeed();
        ICarInfo.GearPosition gearPosition = CarControlManager.ins.getGearPosition();
        float wheelSpeedFL = CarControlManager.ins.getWheelSpeedFL();
        float wheelSpeedFR = CarControlManager.ins.getWheelSpeedFR();
        float wheelSpeedRL = CarControlManager.ins.getWheelSpeedRL();
        float wheelSpeedRR = CarControlManager.ins.getWheelSpeedRR();
        if (gearPosition == ICarInfo.GearPosition.DRIVE) {
            i = 1;
        } else if (gearPosition == ICarInfo.GearPosition.REVERSE) {
            i = 0;
        } else if (gearPosition == ICarInfo.GearPosition.PARKING) {
            i = 2;
        } else {
            i = gearPosition == ICarInfo.GearPosition.NEUTRAL ? 3 : -1;
        }
        Log.i("ins", "carinfo:" + vehicleSpeed + "," + swcAngle + ",1," + i + "," + wheelSpeedFL + "," + wheelSpeedFR + "," + wheelSpeedRL + "," + wheelSpeedRR + "," + System.currentTimeMillis());
        if (wheelSpeedFL == -1.0f || wheelSpeedFR == -1.0f || wheelSpeedRL == -1.0f || wheelSpeedRR == -1.0f) {
            return;
        }
        GpsManager.getInstance().updateEncoder(System.currentTimeMillis(), wheelSpeedFL, wheelSpeedFR, wheelSpeedRL, wheelSpeedRR, swcAngle, vehicleSpeed, i, 1);
    }

    public static void registerObservor(CarPlayObservor carPlayObservor) {
        observors.add(carPlayObservor);
    }

    public static void unregisterObservor(CarPlayObservor carPlayObservor) {
        observors.remove(carPlayObservor);
    }

    public static boolean isregisterObservor(CarPlayObservor carPlayObservor) {
        return observors.contains(carPlayObservor);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public class WirelessObdThread extends Thread {
        public static final int MSG_CPU_TEMPERATURE = 0;
        public static final int MSG_STOP_LOOP = 1;
        private int mBadRssiCount;
        private CarplayDevice mCarplayDevice;
        private Handler mObdhandler;
        private volatile boolean running;

        static /* synthetic */ int access$3708(WirelessObdThread wirelessObdThread) {
            int i = wirelessObdThread.mBadRssiCount;
            wirelessObdThread.mBadRssiCount = i + 1;
            return i;
        }

        public WirelessObdThread(String str, CarplayDevice carplayDevice) {
            super(str);
            this.running = true;
            this.mBadRssiCount = 0;
            this.mCarplayDevice = carplayDevice;
            this.mBadRssiCount = 0;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            this.mObdhandler = new Handler(Looper.myLooper()) { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.WirelessObdThread.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    switch (message.what) {
                        case 0:
                            WirelessObdThread.this.printCpuTemperature();
                            return;
                        case 1:
                            WirelessObdThread.this.stopLoop();
                            return;
                        default:
                            Log.w(CarPlayLinkHelper.this.TAG, "Unknown message type: " + message.what);
                            return;
                    }
                }
            };
            printCpuTemperature();
            startObdLoop();
            Looper.loop();
        }

        public Handler getHandler() {
            return this.mObdhandler;
        }

        public void setCarplayDevice(CarplayDevice carplayDevice) {
            this.mCarplayDevice = carplayDevice;
        }

        private void startObdLoop() {
            new Thread(new Runnable() { // from class: com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.WirelessObdThread.2
                @Override // java.lang.Runnable
                public void run() {
                    while (WirelessObdThread.this.running) {
                        SystemClock.sleep(1000L);
                        String str = SystemProperties.get("persist.carplay.peer.mac", (String) null);
                        if (str != null) {
                            try {
                                int parseInt = Integer.parseInt(ObdServiceManager.getInstance().runCommand("/vendor/bin/wl -i wlan0 rssi " + str, true, 0).content);
                                int mainScreen = CarplayManager.getDefaultManager().getResourceState().getMainScreen();
                                Log.d(CarPlayLinkHelper.this.TAG, "info.content: " + parseInt + ", carplaymac: " + str + ", mBadRssiCount: " + WirelessObdThread.this.mBadRssiCount + ", screen: " + mainScreen);
                                if (parseInt >= -80) {
                                    WirelessObdThread.this.mBadRssiCount = 0;
                                } else {
                                    WirelessObdThread.access$3708(WirelessObdThread.this);
                                }
                                if (SystemProperties.getBoolean("carplay.socket.debug", false)) {
                                    Log.d(CarPlayLinkHelper.this.TAG, "obd loop reconnect Carplay，carplay.socket.debug");
                                    SystemProperties.set("carplay.socket.debug", DeviceHelper.FALSE);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    Log.d(CarPlayLinkHelper.this.TAG, "obd loop task stopped.");
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void stopLoop() {
            this.running = false;
            Looper.myLooper().quit();
            Log.d(CarPlayLinkHelper.this.TAG, "Stopping obd loop task...");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void printCpuTemperature() {
            Log.d(CarPlayLinkHelper.this.TAG, "print cinfo: " + ObdServiceManager.getInstance().readFile("/proc/driver/thermal/tzcpu_read_temperature", 0));
            this.mObdhandler.sendEmptyMessageDelayed(0, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWorkerThread(boolean z, CarplayDevice carplayDevice) {
        Log.d(this.TAG, "startWorkerThread: " + z);
        if (SystemProperties.getBoolean("yf.carplay.obd.enable", true)) {
            if (z) {
                if (carplayDevice == null || carplayDevice.getTransport() != 2) {
                    return;
                }
                if (this.mWirelessObdThread == null) {
                    this.mWirelessObdThread = new WirelessObdThread("WirelessObdThread", carplayDevice);
                    this.mWirelessObdThread.start();
                    return;
                } else {
                    this.mWirelessObdThread.setCarplayDevice(carplayDevice);
                    return;
                }
            }
            if (this.mWirelessObdThread != null) {
                this.mWirelessObdThread.getHandler().sendEmptyMessage(1);
                this.mWirelessObdThread = null;
            }
        }
    }
}
