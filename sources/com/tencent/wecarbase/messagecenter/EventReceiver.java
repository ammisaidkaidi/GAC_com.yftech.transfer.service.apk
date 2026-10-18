package com.tencent.wecarbase.messagecenter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.wecarbase.client.CloudManager;
import com.tencent.wecarbase.client.PushListener;
import com.tencent.wecarbase.client.SimpleEventListener;
import com.tencent.wecarbase.client.applet.AppletNotify;
import com.tencent.wecarbase.client.highway.HighwayNotify;
import com.tencent.wecarbase.client.onlife.OnlifeNotify;
import com.tencent.wecarbase.client.park.ParkNotify;
import com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory;
import com.tencent.wecarbase.config.MqttConfig;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.model.TxAccount;
import com.tencent.wecarbase.model.WeCarAccount;
import com.tencent.wecarbase.taibaseui.commonui.CommonUIManager;
import com.tencent.wecarbase.taibaseui.commonui.ICommonUIViewListener;
import com.tencent.wecarbase.taibaseui.popupview.PopupView;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.PackageUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class EventReceiver {
    private static EventReceiver INSTANCE = new EventReceiver();
    private Context mContext;
    private String TAG = getClass().getSimpleName();
    private Receiver mDynamicReceiver = new Receiver();
    private List<SimpleEventListener> mSimpleEventListeners = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAppBroadCastRecv(Context context, Intent intent) {
    }

    private EventReceiver() {
    }

    public static EventReceiver getInstance() {
        return INSTANCE;
    }

    public void init(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(MqttConfig.PUSH_ACTION);
        intentFilter.addAction("com.tencent.wecarbase.ACTION_AUTH_RESULT");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_WECAR_ID_REGISTERED");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_WECAR_ID_CHANGED");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_WX_BIND");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_WX_UNBIND");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_WX_UPDATE");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_WX_PAGE_OPEN_OR_CLOSE");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_FEED_BACK_CENT_OPEN_OR_CLOSE");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_QQ_BIND");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_QQ_UNBIND");
        intentFilter.addAction("com.tencent.wecarbase.ACTION_QQ_UPDATE");
        intentFilter.addAction(SDKConfig.ACTION_ROM_STANDARD_BROADCAST_RECV);
        intentFilter.addAction(SDKConfig.ACTION_APP_STANDARD_BROADCAST_RECV);
        context.registerReceiver(this.mDynamicReceiver, intentFilter);
        this.mContext = context;
    }

    public void unInit() {
        if (this.mDynamicReceiver == null || this.mContext == null) {
            return;
        }
        this.mContext.unregisterReceiver(this.mDynamicReceiver);
        this.mSimpleEventListeners.clear();
    }

    public synchronized void registerSimpleEventListener(SimpleEventListener simpleEventListener) {
        if (simpleEventListener != null) {
            if (!this.mSimpleEventListeners.contains(simpleEventListener)) {
                this.mSimpleEventListeners.add(simpleEventListener);
            }
        }
    }

    public synchronized void unregisterSimpleEventListener(SimpleEventListener simpleEventListener) {
        if (simpleEventListener != null) {
            if (this.mSimpleEventListeners.contains(simpleEventListener)) {
                this.mSimpleEventListeners.remove(simpleEventListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePushEvent(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(MqttConfig.PUSH_CONTENT);
        LogUtils.d(this.TAG, "push msg: " + stringExtra);
        try {
            JSONObject jSONObject = new JSONObject(stringExtra);
            String string = jSONObject.has("type") ? jSONObject.getString("type") : null;
            if (TextUtils.isEmpty(string)) {
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                pushToOther(stringExtra);
                return;
            }
            char c = 65535;
            switch (string.hashCode()) {
                case -1354792126:
                    if (string.equals("config")) {
                        c = 5;
                        break;
                    }
                    break;
                case -1177318867:
                    if (string.equals("account")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -1012222629:
                    if (string.equals("onlife")) {
                        c = 3;
                        break;
                    }
                    break;
                case -791575966:
                    if (string.equals("weixin")) {
                        c = 0;
                        break;
                    }
                    break;
                case -737679898:
                    if (string.equals("tts_push")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -580365492:
                    if (string.equals("h5_push")) {
                        c = 6;
                        break;
                    }
                    break;
                case -434925006:
                    if (string.equals(CommonUIManager.TOAST_PUSH)) {
                        c = '\b';
                        break;
                    }
                    break;
                case -337049891:
                    if (string.equals("mini_program_push")) {
                        c = 4;
                        break;
                    }
                    break;
                case 3433450:
                    if (string.equals(PopupView.PARK_LAYOUT)) {
                        c = 1;
                        break;
                    }
                    break;
                case 196076312:
                    if (string.equals(CommonUIManager.POPWINDOW_PUSH)) {
                        c = 7;
                        break;
                    }
                    break;
                case 915501581:
                    if (string.equals("highway")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 5:
                case 6:
                case 7:
                case '\b':
                case '\t':
                case '\n':
                    return;
                case 1:
                    if (PackageUtils.isMainAppProcess(context)) {
                        LogUtils.d(this.TAG, "--receive park push msg--");
                        ParkNotify.getInstance().handleMessage(jSONObject);
                        return;
                    }
                    return;
                case 2:
                    if (PackageUtils.isMainAppProcess(context)) {
                        LogUtils.d(this.TAG, "--receive highway push msg--");
                        HighwayNotify.getInstance().handleMessage(jSONObject);
                        return;
                    }
                    return;
                case 3:
                    if (PackageUtils.isMainAppProcess(context)) {
                        LogUtils.d(this.TAG, "--receive onlife push msg--");
                        OnlifeNotify.getInstance().handleMessage(jSONObject);
                        return;
                    }
                    return;
                case 4:
                    if (PackageUtils.isMainAppProcess(context)) {
                        LogUtils.d(this.TAG, "--receive webapp push msg--");
                        AppletNotify.getInstance().handleMessage(jSONObject);
                        return;
                    }
                    return;
                default:
                    pushToOther(stringExtra);
                    return;
            }
        } catch (Exception e) {
            LogUtils.e(this.TAG, "error = " + Log.getStackTraceString(e));
        }
    }

    private void pushToOther(final String str) {
        final PushListener pushListener = CloudManager.getInstance().getPushListener();
        if (pushListener != null) {
            TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (pushListener) {
                        pushListener.onPush(str);
                    }
                }
            });
        }
    }

    private void showCommonUI(JSONObject jSONObject, String str, Context context) {
        if (CommonUIManager.POPWINDOW_PUSH.equals(str)) {
            CommonUIManager.getInstance().showPopupWindow(context, jSONObject, new ICommonUIViewListener() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.2
                @Override // com.tencent.wecarbase.taibaseui.commonui.ICommonUIViewListener
                public void onNegativeSelection(boolean z) {
                }

                @Override // com.tencent.wecarbase.taibaseui.commonui.ICommonUIViewListener
                public void onPositiveSelection(boolean z) {
                }

                @Override // com.tencent.wecarbase.taibaseui.commonui.ICommonUIViewListener
                public void onViewDismiss() {
                }
            });
        } else if (CommonUIManager.TOAST_PUSH.equals(str)) {
            CommonUIManager.getInstance().showToast(context, jSONObject, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069 A[Catch: Exception -> 0x006d, TRY_LEAVE, TryCatch #0 {Exception -> 0x006d, blocks: (B:2:0x0000, B:4:0x0006, B:9:0x0013, B:11:0x0021, B:19:0x0065, B:22:0x0069, B:26:0x0047, B:29:0x0051, B:32:0x005a), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void handleRomBroadCastRecv(Context context, Intent intent) {
        try {
        } catch (Exception e) {
            LogUtils.e(this.TAG, "error = " + Log.getStackTraceString(e));
        }
        if (PackageUtils.isWeCarBaseProcess(context)) {
            char c = 0;
            if (intent.getIntExtra("KEY_TYPE", 0) == 1001 && CommonUIManager.POPWINDOW_PUSH.equals(intent.getStringExtra(SDKConfig.INTENT_EXTRA_UI_TYPE))) {
                new JSONObject(intent.getStringExtra(SDKConfig.INTENT_EXTRA_UI_DATA));
                String stringExtra = intent.getStringExtra(SDKConfig.INTENT_EXTRA_UI_OP_TYPE);
                int hashCode = stringExtra.hashCode();
                if (hashCode == -128081247) {
                    if (stringExtra.equals(CommonUIManager.UI_OP_TYPE_DO_ACTION)) {
                        c = 1;
                        switch (c) {
                        }
                    }
                    c = 65535;
                    switch (c) {
                    }
                } else if (hashCode != 3529469) {
                    if (hashCode == 1671672458 && stringExtra.equals(CommonUIManager.UI_OP_TYPE_DISMISS)) {
                        c = 2;
                        switch (c) {
                            case 0:
                            case 2:
                                return;
                            case 1:
                                callAppDoAction(context, intent);
                                return;
                            default:
                                return;
                        }
                    }
                    c = 65535;
                    switch (c) {
                    }
                } else {
                    if (stringExtra.equals(CommonUIManager.UI_OP_TYPE_SHOW)) {
                        switch (c) {
                        }
                    }
                    c = 65535;
                    switch (c) {
                    }
                }
                LogUtils.e(this.TAG, "error = " + Log.getStackTraceString(e));
            }
        }
    }

    private void callAppDoAction(Context context, Intent intent) throws JSONException {
        JSONObject jSONObject = new JSONObject(intent.getStringExtra(SDKConfig.INTENT_EXTRA_UI_OP_ACTION));
        String string = jSONObject.getString(SDKConfig.INTENT_EXTRA_ACTION_ID);
        String string2 = jSONObject.getString(SDKConfig.INTENT_EXTRA_ACTION_PACKAGENAME);
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            return;
        }
        String string3 = jSONObject.getString(SDKConfig.INTENT_EXTRA_ACTION_ARGS);
        Intent intent2 = new Intent(SDKConfig.ACTION_APP_STANDARD_BROADCAST_SEND);
        intent2.setPackage(string2);
        intent2.addFlags(32);
        intent2.putExtra(SDKConfig.INTENT_EXTRA_ACTION_ARGS, string3);
        context.sendBroadcast(intent2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAuthResult(Intent intent) {
        final boolean booleanExtra = intent.getBooleanExtra("extra_has_auth", true);
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.3
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onAuthChanged(booleanExtra);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWeCarIdRegistered(Intent intent) {
        final WeCarAccount weCarAccount = (WeCarAccount) intent.getParcelableExtra("extra_wecar_account");
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.4
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onWeCarIdRegistered(weCarAccount);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWeCarIdChanged(Intent intent) {
        final WeCarAccount weCarAccount = (WeCarAccount) intent.getParcelableExtra("extra_old_wecar_account");
        final WeCarAccount weCarAccount2 = (WeCarAccount) intent.getParcelableExtra("extra_new_wecar_account");
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.5
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onWeCarIdChanged(weCarAccount, weCarAccount2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWXBind(Intent intent) {
        final TxAccount txAccount = (TxAccount) intent.getParcelableExtra("extra_tx_account");
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.6
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onWXAccountBind(txAccount);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWXUnbind(Intent intent) {
        final TxAccount txAccount = (TxAccount) intent.getParcelableExtra("extra_tx_account");
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.7
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onWXAccountUnbind(txAccount);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWXUpdate(Intent intent) {
        final TxAccount txAccount = (TxAccount) intent.getParcelableExtra("extra_old_wx_account");
        final TxAccount txAccount2 = (TxAccount) intent.getParcelableExtra("extra_new_wx_account");
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.8
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onWXAccountUpdate(txAccount, txAccount2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWXBindActivityOpenOrClose(Intent intent) {
        final boolean booleanExtra = intent.getBooleanExtra("extra_open_or_close", false);
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.9
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onWXBindActivityOpenOrClose(booleanExtra);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFeedBackCenterOpenOrClose(Intent intent) {
        final boolean booleanExtra = intent.getBooleanExtra("extra_open_or_close", false);
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.10
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onFeedBackCenterOpenOrClose(booleanExtra);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleQQBind(Intent intent) {
        final TxAccount txAccount = (TxAccount) intent.getParcelableExtra("extra_tx_account");
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.11
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onQQAccountBind(txAccount.getPkgName(), txAccount);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleQQUnbind(Intent intent) {
        final TxAccount txAccount = (TxAccount) intent.getParcelableExtra("extra_tx_account");
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.12
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onQQAccountUnbind(txAccount.getPkgName(), txAccount);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleQQUpdate(Intent intent) {
        final TxAccount txAccount = (TxAccount) intent.getParcelableExtra("extra_old_qq_account");
        final TxAccount txAccount2 = (TxAccount) intent.getParcelableExtra("extra_new_qq_account");
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.messagecenter.EventReceiver.13
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = new ArrayList(EventReceiver.this.mSimpleEventListeners).iterator();
                while (it.hasNext()) {
                    ((SimpleEventListener) it.next()).onQQAccountUpdate(txAccount.getPkgName(), txAccount, txAccount2);
                }
            }
        });
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Receiver extends BroadcastReceiver {
        private String TAG = getClass().getSimpleName();

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            LogUtils.d(this.TAG, "receive action: " + action);
            try {
                if (MqttConfig.PUSH_ACTION.equals(action)) {
                    EventReceiver.getInstance().handlePushEvent(context, intent);
                } else if ("com.tencent.wecarbase.ACTION_AUTH_RESULT".equals(action)) {
                    EventReceiver.getInstance().handleAuthResult(intent);
                } else if ("com.tencent.wecarbase.ACTION_WECAR_ID_REGISTERED".equals(action)) {
                    EventReceiver.getInstance().handleWeCarIdRegistered(intent);
                } else if ("com.tencent.wecarbase.ACTION_WECAR_ID_CHANGED".equals(action)) {
                    EventReceiver.getInstance().handleWeCarIdChanged(intent);
                } else if ("com.tencent.wecarbase.ACTION_WX_BIND".equals(action)) {
                    EventReceiver.getInstance().handleWXBind(intent);
                } else if ("com.tencent.wecarbase.ACTION_WX_UNBIND".equals(action)) {
                    EventReceiver.getInstance().handleWXUnbind(intent);
                } else if ("com.tencent.wecarbase.ACTION_WX_UPDATE".equals(action)) {
                    EventReceiver.getInstance().handleWXUpdate(intent);
                } else if ("com.tencent.wecarbase.ACTION_FEED_BACK_CENT_OPEN_OR_CLOSE".equals(action)) {
                    EventReceiver.getInstance().handleFeedBackCenterOpenOrClose(intent);
                } else if ("com.tencent.wecarbase.ACTION_WX_PAGE_OPEN_OR_CLOSE".equals(action)) {
                    EventReceiver.getInstance().handleWXBindActivityOpenOrClose(intent);
                } else if ("com.tencent.wecarbase.ACTION_QQ_BIND".equals(action)) {
                    EventReceiver.getInstance().handleQQBind(intent);
                } else if ("com.tencent.wecarbase.ACTION_QQ_UNBIND".equals(action)) {
                    EventReceiver.getInstance().handleQQUnbind(intent);
                } else if ("com.tencent.wecarbase.ACTION_QQ_UPDATE".equals(action)) {
                    EventReceiver.getInstance().handleQQUpdate(intent);
                } else if (SDKConfig.ACTION_ROM_STANDARD_BROADCAST_RECV.equals(action)) {
                    EventReceiver.getInstance().handleRomBroadCastRecv(context, intent);
                } else if (SDKConfig.ACTION_APP_STANDARD_BROADCAST_RECV.equals(action)) {
                    EventReceiver.getInstance().handleAppBroadCastRecv(context, intent);
                }
            } catch (Exception e) {
                LogUtils.e(this.TAG, "handle broadcast exception, e = " + Log.getStackTraceString(e));
            }
        }
    }
}
