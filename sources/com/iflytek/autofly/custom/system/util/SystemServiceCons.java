package com.iflytek.autofly.custom.system.util;

/* loaded from: /home/user/work/dex/classes.dex */
public class SystemServiceCons {
    public static final String SERVICE_ACTION = "com.iflytek.autofly.customsystemservice";

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class AidlStatus {
        public static final int SERVICE_AIDL_BINDING = 2;
        public static final int SERVICE_AIDL_BOUND = 3;
        public static final int SERVICE_AIDL_DISCONNECTED = 4;
        public static final int SERVICE_AIDL_NOT_BOUND = 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CarConfig {
        public static final int CAR_NETWORK_MOBILE_ONLY = 101;
        public static final int CAR_NETWORK_MOBILE_WIFI = 102;
        public static final int CAR_NETWORK_NOT_SUPPORT = 100;
        public static final int CAR_NETWORK_TBOX_ONLY = 103;
        public static final int CAR_NETWORK_TBOX_WIFI = 104;
        public static final int CAR_NETWORK_WIFI_ONLY = 105;
        public static final int NAVI_TYPE_AMAP = 201;
        public static final int NAVI_TYPE_BAIDU = 203;
        public static final int NAVI_TYPE_OTHER = 200;
        public static final int NAVI_TYPE_TENCENT = 202;
        public static final int VEHICLE_CONFIG_HIGH = 2;
        public static final int VEHICLE_CONFIG_LOW = 0;
        public static final int VEHICLE_CONFIG_MEDIUM = 1;
        public static final int VEHICLE_CONFIG_TOP = 3;
        public static final int VEHICLE_SYSTEM_TYPE_COCKPIT_MASTER = 301;
        public static final int VEHICLE_SYSTEM_TYPE_COCKPIT_SLAVE = 302;
        public static final int VEHICLE_SYSTEM_TYPE_NORMAL = 300;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CarConfigType {
        public static final String CAR_NETWORK = "car_network";
        public static final String NAVI_TYPE = "navi";
        public static final String VEHICLE_CONFIG = "vehicle";
        public static final String VEHICLE_SYSTEM_TYPE = "vehicle_system_type";
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ErrorCode {
        public static final int ERROR_AIDL_BINDING = -1004;
        public static final int ERROR_AIDL_NOT_BOUND = -1005;
        public static final int ERROR_AIDL_NO_SERVICE = -1006;
        public static final int ERROR_AIDL_UNBINDING = -1010;
        public static final int ERROR_BASE = -1000;
        public static final int ERROR_COMMON = -1003;
        public static final int ERROR_INVALID_ARG_VALUE = -1008;
        public static final int ERROR_NOT_SUPPORT = -1009;
        public static final int ERROR_OK = 0;
        public static final int ERROR_PARAM_NULL = -1002;
        public static final int ERROR_PARAM_OUTOFBOUND = -1001;
        public static final int ERROR_REBUNDANCE_LISTENER = -1007;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class VehicleState {
        public static final int AVM_OFF = 1016;
        public static final int AVM_ON = 1015;
        public static final int GEAR_DRIVE = 1003;
        public static final int GEAR_NONE = 1001;
        public static final int GEAR_PARKING = 1002;
        public static final int GEAR_REVERSE = 1000;
        public static final int POWER_ACC = 1012;
        public static final int POWER_ACC_ON = 1013;
        public static final int POWER_INVALID = 1010;
        public static final int POWER_OFF = 1011;
        public static final int POWER_START = 1014;
        public static final int SCREEN_OFF = 0;
        public static final int SCREEN_ON = 1;
        public static final int SCREEN_SAVER = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class VehicleStateType {
        public static final String AVM = "avm";
        public static final String GEAR = "gear";
        public static final String POWER = "power";
        public static final String SCREEN = "screen";
    }
}
