package com.tencent.wecarbase.config;

import android.os.Environment;

/* loaded from: /home/user/work/dex/classes.dex */
public class MqttConfig {
    public static final String AI_PUSH_TOPIC = "/facpush";
    public static final boolean AUTO_RECONNECT = true;
    public static final int BUFFER_SIZE = 600;
    public static final String CA_FILE = "ca-cert.crt";
    public static final boolean CLEAN_SESSION = false;
    public static final boolean DEBUG = false;
    public static final String MQTT_HALLAY_SSL_URL_DEV = "mqttlinktlstest.map.qq.com";
    public static final String MQTT_HALLAY_SSL_URL_ONLINE = "mqttlinktls.map.qq.com";
    public static final String MQTT_HALLAY_TCP_URL_DEV = "mqttlinktest.map.qq.com";
    public static final String MQTT_HALLAY_TCP_URL_ONLINE = "mqttlink.map.qq.com";
    public static final String MQTT_HALLAY_URL_DEV = "http://mqtthalley.sparta.html5.qq.com/";
    public static final String MQTT_HALLAY_URL_ONLINE = "http://mqtthalley.wecar.map.qq.com/";
    public static final String MQTT_SERVER_HOST_DEV = "platmsgc.wecar.map.qq.com";
    public static final String MQTT_SERVER_HOST_ONLINE = "platmsg.wecar.map.qq.com";
    public static final int MQTT_SERVER_PORT = 9000;
    public static final int PUBLISH_QOS = 0;
    public static final String PUSH_ACTION = "com.tencent.wecarcloud.PUSH";
    public static final String PUSH_CONTENT = "push_content";
    public static final String PUSH_STATIC_ACTION = "com.tencent.wecarcloud.PUSH_STATIC";
    public static final boolean RETAIN = false;
    public static final String ROOT_PATH = Environment.getExternalStorageDirectory().getPath() + "/tencent/wecarcloud/";
    public static final int TCP_HEART_BEAT_INTERNAL = 30;
    public static final String TOPIC_CONFIG = "config";
    public static final String TOPIC_LOC = "loc";
    public static final String USERNAME = "proto=1";
}
