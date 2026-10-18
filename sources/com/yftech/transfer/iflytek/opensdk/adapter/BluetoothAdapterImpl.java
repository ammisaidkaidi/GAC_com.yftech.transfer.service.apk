package com.yftech.transfer.iflytek.opensdk.adapter;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.iflytek.autofly.custom.bluetooth.aidl.FlyCallLog;
import com.iflytek.autofly.custom.bluetooth.aidl.FlyContact;
import com.iflytek.autofly.custom.bluetooth.aidl.FlyDevice;
import com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager;
import com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener;
import com.utils.LogUtil;
import com.yftech.btphone.lib.sample.SampleDataProvider;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothContactsCallback;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.callback.CarBluetoothSettingsCallback;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BluetoothAdapterImpl extends CarBluetoothSettingsCallback {
    public static final String ACTION_CALL_STATE_CHANGED = "com.tencent.mm.bluetooth.headsetclient.action.AG_CALL_CHANGED";
    public static final String EXTRA_CALL_STATE = "com.tencent.mm.bluetooth.headsetclient.extra.STATE";
    public static final int EXTRA_CALL_STATE_ACTIVE_CALL = 0;
    public static final int EXTRA_CALL_STATE_CALL_RELEASED = 6;
    public static final int EXTRA_CALL_STATE_DIALING_CALL = 2;
    public static final int EXTRA_CALL_STATE_HELD_CALL = 1;
    public static final int EXTRA_CALL_STATE_INCOMING_CALL = 4;
    public static final int EXTRA_CALL_STATE_RINGING_CALL = 3;
    public static final int EXTRA_CALL_STATE_WAITING_CALL = 5;
    private static final int MSG_RECONNECT_IFlyTekService = 1;
    private static final int RECONNECT_TIME = 10000;
    private static final String TAG = "BluetoothAdapterImpl";
    private Context mContext;
    private BluetoothPhoneManager mIFlyCustomBTManager;
    private boolean mIsCustomBTServiceConnected;
    private int mCurWXPhoneState = 6;
    private int mBluetoothConnectState = -1;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.transfer.iflytek.opensdk.adapter.BluetoothAdapterImpl.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                BluetoothAdapterImpl.this.mIFlyCustomBTManager = BluetoothPhoneManager.registerListener(BluetoothAdapterImpl.this.mContext, BluetoothAdapterImpl.this.mIFBluetoothPhoneListener);
            }
        }
    };
    private CarBluetoothContactsCallback mCarBtContactsCallback = new CarBluetoothContactsCallback() { // from class: com.yftech.transfer.iflytek.opensdk.adapter.BluetoothAdapterImpl.2
        public void onBluetoothPbapConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
            super.onBluetoothPbapConnectStatusChanged(bluetoothDevice, i);
        }

        public void onBluetoothCallLogListChanged(List<CallLog> list) {
            super.onBluetoothCallLogListChanged(list);
        }

        public void onBluetoothCallLogDownloadStateChanged(int i) {
            super.onBluetoothCallLogDownloadStateChanged(i);
        }

        public void onBluetoothContactsDownloadStateChanged(int i) {
            Log.i(BluetoothAdapterImpl.TAG, "onBluetoothContactsDownloadStateChanged: sate = " + i);
            if (i != 100) {
                switch (i) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    default:
                        return;
                    case 7:
                        new SampleDataProvider().getContacts();
                        return;
                }
            }
        }

        public void onBluetoothCallLogDownloadPositionChanged(int i, int i2) {
            super.onBluetoothCallLogDownloadPositionChanged(i, i2);
        }

        public void onBluetoothContactsDownloadPositionChanged(int i, int i2) {
            super.onBluetoothContactsDownloadPositionChanged(i, i2);
        }

        public void onBluetoothMissedPhoneCallCountChanged(int i) {
            super.onBluetoothMissedPhoneCallCountChanged(i);
        }

        public void onBluetoothContactsListChanged(List<Contacts> list) {
            Log.i(BluetoothAdapterImpl.TAG, "onBluetoothContactsListChanged: listPeople = " + list.size());
            if (list.isEmpty()) {
                return;
            }
            BluetoothAdapterImpl.this.transferContacts(list);
            BluetoothAdapterImpl.this.mIFlyCustomBTManager.notifyPhoneContact(null, true);
        }
    };
    private CarBluetoothPhoneCallback mCarBtPhoneCallback = new CarBluetoothPhoneCallback() { // from class: com.yftech.transfer.iflytek.opensdk.adapter.BluetoothAdapterImpl.3
        public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        }

        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
            int i;
            if (list.isEmpty()) {
                return;
            }
            int callState = list.get(0).getCallState();
            if (callState != 7) {
                switch (callState) {
                    case 1:
                        i = 2;
                        break;
                    case 2:
                        i = 1;
                        break;
                    case 3:
                        i = 6;
                        break;
                    case 4:
                        i = 4;
                        break;
                    default:
                        i = 0;
                        break;
                }
            } else {
                i = 5;
            }
            LogUtil.i(" yfcallSt " + list.get(0).getCallState() + ",  flytek callSt = " + i);
            BluetoothAdapterImpl.this.mIFlyCustomBTManager.notifyCallStatusChanged(i, list.get(0).getCallNumber());
        }
    };
    private IBluetoothPhoneListener mIFBluetoothPhoneListener = new IBluetoothPhoneListener() { // from class: com.yftech.transfer.iflytek.opensdk.adapter.BluetoothAdapterImpl.4
        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public FlyDevice onGetBluetoothDevice() {
            return null;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public List<FlyCallLog> onGetCallLogList() {
            return null;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public List<FlyContact> onGetContactByName(String str) {
            return null;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public List<FlyContact> onGetContactByNumber(String str) {
            return null;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public String onGetName() {
            return null;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public int onRecall() {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public int onTransfer() {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public void onServiceStatusChanged(int i) {
            Log.d(BluetoothAdapterImpl.TAG, "Iflytek BluetoothService onServiceStatusChanged:" + i);
            switch (i) {
                case 1:
                case 4:
                    BluetoothAdapterImpl.this.mIsCustomBTServiceConnected = false;
                    BluetoothAdapterImpl.this.reConnect();
                    return;
                case 2:
                default:
                    return;
                case 3:
                    BluetoothAdapterImpl.this.mIsCustomBTServiceConnected = true;
                    BluetoothAdapterImpl.this.mHandler.removeMessages(1);
                    Log.d(BluetoothAdapterImpl.TAG, "bind IFlytek BluetoothPhone Service Successful");
                    return;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public int onGetConnectionState() {
            if (BluetoothAdapterImpl.this.mCarBtManager.getPairedDevices().isEmpty()) {
                return 4;
            }
            if (BluetoothAdapterImpl.this.mCarBtManager.getRemoteDevices().isEmpty()) {
                return 0;
            }
            int contactsDownloadState = BluetoothAdapterImpl.this.mCarBtManager.getContactsDownloadState();
            return (contactsDownloadState == 7 || contactsDownloadState != 100) ? 1 : 5;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public int onCall(String str) {
            boolean dial = BluetoothAdapterImpl.this.mCarBtManager.dial(str);
            Log.i(BluetoothAdapterImpl.TAG, "onCall: number;" + str + " result = " + dial);
            return dial ? 0 : -1003;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public int onHang(String str) {
            Log.i(BluetoothAdapterImpl.TAG, "onHang: number: " + str);
            BluetoothAdapterImpl.this.mCarBtManager.hangup();
            return 0;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public int onReject(String str) {
            Log.i(BluetoothAdapterImpl.TAG, "onReject: s：" + str);
            BluetoothAdapterImpl.this.mCarBtManager.hangup();
            return 0;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public int onAccept(String str) {
            return BluetoothAdapterImpl.this.mCarBtManager.answer() ? 0 : -1003;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public List<FlyContact> onGetContactList() {
            Log.i(BluetoothAdapterImpl.TAG, "onGetContactList: lise.size = " + BluetoothAdapterImpl.this.mFlyContactList.size());
            return BluetoothAdapterImpl.this.mFlyContactList;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public int onLaunchActivity(int i) {
            Intent intent = new Intent();
            switch (i) {
                case 1:
                    intent.setAction("com.yftech.intent.action.bluetooth.ui.contacts");
                    break;
                case 2:
                    intent.setAction("com.yftech.intent.action.bluetooth.ui.calllog");
                    break;
                case 3:
                    intent.setAction("com.yftech.intent.action.bluetooth.ui.dial");
                    break;
            }
            BluetoothAdapterImpl.this.mContext.startActivity(intent);
            return 0;
        }

        @Override // com.iflytek.autofly.custom.bluetooth.util.IBluetoothPhoneListener
        public int onSyncPhoneBook(int i) {
            boolean requestContactsList = i == 0 ? BluetoothAdapterImpl.this.mCarBtManager.requestContactsList() : false;
            Log.i(BluetoothAdapterImpl.TAG, "onSyncPhoneBook: type = " + i + "   result = " + requestContactsList);
            return requestContactsList ? 0 : -1003;
        }
    };
    private CarBluetoothManager mCarBtManager = CarBluetoothManager.getInstance();
    private List<FlyContact> mFlyContactList = new ArrayList();

    public BluetoothAdapterImpl(Context context) {
        this.mContext = context;
        this.mIFlyCustomBTManager = BluetoothPhoneManager.registerListener(this.mContext, this.mIFBluetoothPhoneListener);
        this.mCarBtManager.registerBluetoothSettingsCallback(this, this.mHandler);
        this.mCarBtManager.registerBluetoothPhoneCallback(this.mCarBtPhoneCallback, this.mHandler);
        this.mCarBtManager.registerBluetoothContactsCallback(this.mCarBtContactsCallback, this.mHandler);
    }

    public void release() {
        if (this.mHandler.hasMessages(1)) {
            this.mHandler.removeMessages(1);
        }
        this.mCarBtManager.unregisterBluetoothContactsCallback(this.mCarBtContactsCallback);
        this.mCarBtManager.unregisterBluetoothSettingsCallback(this);
        BluetoothPhoneManager.unRegisterListener(this.mIFBluetoothPhoneListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reConnect() {
        if (this.mIsCustomBTServiceConnected) {
            this.mHandler.removeMessages(1);
        } else {
            this.mHandler.sendEmptyMessageDelayed(1, 10000L);
        }
    }

    public void onBluetoothConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        super.onBluetoothConnectStateChanged(bluetoothDevice, i);
        if (this.mBluetoothConnectState != i) {
            int i2 = 0;
            switch (i) {
                case 1:
                    i2 = 2;
                    break;
                case 2:
                    i2 = 1;
                    break;
            }
            this.mBluetoothConnectState = i;
            Log.i(TAG, "onBluetoothConnectStateChanged: state = " + i + " ifBtConnectSt = " + i2);
            this.mIFlyCustomBTManager.notifyConnectStatus(i2);
        }
    }

    public void transferContacts(List<Contacts> list) {
        this.mFlyContactList.clear();
        for (Contacts contacts : list) {
            FlyContact flyContact = new FlyContact();
            flyContact.setName(contacts.getName());
            HashMap<String, List<String>> hashMap = new HashMap<>();
            ArrayList arrayList = new ArrayList();
            arrayList.add(contacts.getNumber());
            hashMap.put(FlyContact.NUMBER_TYPE_CELL, arrayList);
            flyContact.setNumberList(hashMap);
            this.mFlyContactList.add(flyContact);
        }
    }
}
