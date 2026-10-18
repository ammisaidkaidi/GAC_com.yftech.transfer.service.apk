package com.iflytek.autofly.custom.bluetooth.util;

import com.iflytek.autofly.custom.bluetooth.aidl.FlyCallLog;
import com.iflytek.autofly.custom.bluetooth.aidl.FlyContact;
import com.iflytek.autofly.custom.bluetooth.aidl.FlyDevice;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IBluetoothPhoneListener {
    int onAccept(String str);

    int onCall(String str);

    FlyDevice onGetBluetoothDevice();

    List<FlyCallLog> onGetCallLogList();

    int onGetConnectionState();

    List<FlyContact> onGetContactByName(String str);

    List<FlyContact> onGetContactByNumber(String str);

    List<FlyContact> onGetContactList();

    String onGetName();

    int onHang(String str);

    int onLaunchActivity(int i);

    int onRecall();

    int onReject(String str);

    void onServiceStatusChanged(int i);

    int onSyncPhoneBook(int i);

    int onTransfer();
}
