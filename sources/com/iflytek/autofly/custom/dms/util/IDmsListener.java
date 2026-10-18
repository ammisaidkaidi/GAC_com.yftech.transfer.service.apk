package com.iflytek.autofly.custom.dms.util;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IDmsListener {
    public static final String SERVICE_ACTION = "com.iflytek.autofly.customdmsservice";

    String onReadDmsMessage(int i);

    void onServiceStatusChanged(int i);

    int onWriteDmsMessage(int i, String str);
}
