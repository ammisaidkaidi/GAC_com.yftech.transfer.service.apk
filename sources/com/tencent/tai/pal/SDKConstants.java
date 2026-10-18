package com.tencent.tai.pal;

/* loaded from: /home/user/work/dex/classes.dex */
public class SDKConstants implements INoProguardClass {
    public static final String ACTION_SERVICE_CREATE_BROADCAST = "tai_pal_core_service_start_up";
    public static final String KEY_PACKAGE_NAME = "package_name";
    public static final String SERVICE_AUDIO = "com.tencent.tai.pal.AUDIO";
    public static final String SERVICE_BLUETOOTH = "com.tencent.tai.pal.BLUETOOTH";
    public static final String SERVICE_EXTENSIBLE = "com.tencent.tai.pal.EXTENSIBLE";
    public static final String SERVICE_INPUT = "com.tencent.tai.pal.INPUT";
    public static final String SERVICE_INS = "com.tencent.tai.pal.INS";
    public static final String SERVICE_NETWORK = "com.tencent.tai.pal.NETWORK";
    public static final String SERVICE_POWER = "com.tencent.tai.pal.POWER";
    public static final String SERVICE_SCREEN = "com.tencent.tai.pal.SCREEN";
    public static final String SERVICE_TELEPHONE = "com.tencent.tai.pal.TELEPHONE";
    public static final String SERVICE_VEHICLE_BASIC_INFO = "com.tencent.tai.pal.VEHICLE_BASIC_INFO";
    public static final String SERVICE_VEHICLE_RICH_INFO = "com.tencent.tai.pal.VEHICLE_RICH_INFO";
    public static final String TAG = "PAL_SDK";

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ApiResult extends INoProguardInterface {
        public static final int API_RESULT_ALREADY = 4;
        public static final int API_RESULT_FAIL = 2;
        public static final int API_RESULT_NOSUPPORT = 0;
        public static final int API_RESULT_OUTOFRANGE = 3;
        public static final int API_RESULT_SUCCESS = 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum SpeedUnit implements INoProguardClass {
        METERS_PER_SECOND,
        KILOMETERS_PER_HOUR
    }
}
