package com.tencent.wecarbase.config;

import android.os.Environment;

/* loaded from: /home/user/work/dex/classes.dex */
public class CloudConfig {
    public static final int CLOUD_DNS_RESOLVER_TIME_OUT = 6000;
    public static final int CLOUD_RECORD_QUEUE_SIZE = 600;
    public static final int CLOUD_SERVER_CONNECT_ERROR_TIME = 30000;
    public static final int CLOUD_SERVER_CONNECT_TIME_OUT = 10000;
    public static final String CLOUD_SERVER_HOST_DEV = "platmsgc.wecar.map.qq.com";
    public static final String CLOUD_SERVER_HOST_ONLINE = "platmsg.wecar.map.qq.com";
    public static final int CLOUD_SERVER_PORT = 9000;
    public static final int CLOUD_SERVER_READ_TIME_OUT = 6000;
    public static final String CLOUD_SERVER_URL = "125.39.240.45";
    public static final boolean DEBUG = false;
    public static final int DELAY_FOR_TRACE_STOP = 5000;
    public static final int ERROR_ACC_ON_RECONNECT = 90;
    public static final int ERROR_AUTH_READ_EXCEPTION = 30;
    public static final int ERROR_AUTH_SOCKET_NULL = 10;
    public static final int ERROR_AUTH_WAIT_RESPONSE_TIMEOUT = 40;
    public static final int ERROR_AUTH_WRITE_EXCEPTION = 20;
    public static final int ERROR_RECEIVER_READ_EXCEPTION = 60;
    public static final int ERROR_RECEIVER_SOCKET_NULL = 50;
    public static final int ERROR_SENDER_CONNECTION_LOST = 70;
    public static final int ERROR_SENDER_WRITE_EXCEPTION = 80;
    public static final String HALLEY_APP_KEY = "0M000IDG191XQZNF";
    public static final int INTERVAL_RECORD_STILL = 8000;
    public static final int INTERVAL_SEND_STILL = 10000;
    public static final int NETWORK_RECONNECT_INTERVAL = 3000;
    public static final int TCP_EMPTY_QUEUE_SEND_INTERNAL = 1000;
    public static final int TCP_SEND_INTERNAL = 50;
    public static final String ROOT_PATH = Environment.getExternalStorageDirectory().getPath() + "/tencent/wecarcloud/";
    private static int TCP_HEART_BEAT_INTERNAL = 10000;
    private static int TCP_CAR_INFO_INTERNAL = 5000;
    private static int TCP_CAR_INFO_COUNTER = 5;
    private static int INTERVAL_RECORD_MOVING = 1000;
    private static int INTERVAL_SEND_MOVING = 5000;
    public static final String CLOUD_RECORD_SID_FILE = ROOT_PATH + "sid.dat";
    private static int CLOUD_RECORD_COUNTER = 10;
    private static int INTERVAL_LOW_SPEED_RECORD = 5000;
    private static int INTERVAL_HIGH_SPEED_RECORD = 1000;
    private static int INTERVAL_TRACE_RECORD_COUNTER = 5000;
    private static int CLOUD_RECORD_SID_TIME = 600;
    public static final String CLOUD_LOG = ROOT_PATH + "cloud.log";

    public static int getTcpHeartBeatInternal() {
        return TCP_HEART_BEAT_INTERNAL;
    }

    public static void setTcpHeartBeatInternal(int i) {
        TCP_HEART_BEAT_INTERNAL = i;
    }

    public static int getTcpCarInfoInternal() {
        return TCP_CAR_INFO_INTERNAL;
    }

    public static void setTcpCarInfoInternal(int i) {
        TCP_CAR_INFO_INTERNAL = i;
    }

    public static int getTcpCarInfoCounter() {
        return TCP_CAR_INFO_COUNTER;
    }

    public static void setTcpCarInfoCounter(int i) {
        TCP_CAR_INFO_COUNTER = i;
    }

    public static int getIntervalRecordMoving() {
        return INTERVAL_RECORD_MOVING;
    }

    public static void setIntervalRecordMoving(int i) {
        INTERVAL_RECORD_MOVING = i;
    }

    public static int getIntervalSendMoving() {
        return INTERVAL_SEND_MOVING;
    }

    public static void setIntervalSendMoving(int i) {
        INTERVAL_SEND_MOVING = i;
    }

    public static int getCloudRecordCounter() {
        return CLOUD_RECORD_COUNTER;
    }

    public static void setCloudRecordCounter(int i) {
        CLOUD_RECORD_COUNTER = i;
    }

    public static int getIntervalLowSpeedRecord() {
        return INTERVAL_LOW_SPEED_RECORD;
    }

    public static void setIntervalLowSpeedRecord(int i) {
        INTERVAL_LOW_SPEED_RECORD = i;
    }

    public static int getIntervalHighSpeedRecord() {
        return INTERVAL_HIGH_SPEED_RECORD;
    }

    public static void setIntervalHighSpeedRecord(int i) {
        INTERVAL_HIGH_SPEED_RECORD = i;
    }

    public static int getIntervalTraceRecordCounter() {
        return INTERVAL_TRACE_RECORD_COUNTER;
    }

    public static void setIntervalTraceRecordCounter(int i) {
        INTERVAL_TRACE_RECORD_COUNTER = i;
    }

    public static int getCloudRecordSidTime() {
        return CLOUD_RECORD_SID_TIME;
    }

    public static void setCloudRecordSidTime(int i) {
        CLOUD_RECORD_SID_TIME = i;
    }
}
