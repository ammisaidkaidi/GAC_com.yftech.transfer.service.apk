package com.tencent.wecarbase.wecarnavi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.wecarnavi.ExternalDefaultBroadcastKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class TASNaviSRActionDispatcher {
    private static final int DAY_NIGHT_KEY_TYPE = 1001;
    private static final String EXTRA_FROM_TOUCH = "EXTRA_FROM_TOUCH";
    private static final String FEEDBACK_TTS_TEMPLATE_ID_PREFIX = "m";
    private static final String KEY_TYPE = "KEY_TYPE";
    private static final int MSG_SESSION_NEW = 2;
    private static final int MSG_SESSION_RECEIVED = 3;
    private static final int MSG_SESSION_TIMEOUT = 1;
    private static final int NAVI_HOME_KEY_TYPE = 1016;
    private static final int ROUTE_PREFERENCE_KEY_TYPE = 1024;
    private static final int SEARCH_ON_THE_WAY_KEY_TYPE = 3004;
    private static final int START_NAVI_KEY_TYPE = 1003;
    private static final String TAG = "TASNaviSRActionDispatcher";
    private static volatile TASNaviSRActionDispatcher sInstance;
    private Handler mHandler;
    private String mSessionid = "";
    private ArrayList<String> mSessionIds = new ArrayList<>();
    private OnFeedbackListener mListener = null;
    private Map<String, String> mFeedbackTtsMap = null;
    private BroadcastReceiver mFeedbackReceiver = new BroadcastReceiver() { // from class: com.tencent.wecarbase.wecarnavi.TASNaviSRActionDispatcher.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra(ExternalDefaultBroadcastKey.KEY.TAG);
            Log.d(TASNaviSRActionDispatcher.TAG, "FeedbackReceiver onReceive mSessionid:" + TASNaviSRActionDispatcher.this.mSessionid + " Feedbacksessionid:" + stringExtra);
            int i = 0;
            int intExtra = intent.getIntExtra(ExternalDefaultBroadcastKey.KEY.FEEDBACK_CODE, 0);
            String stringExtra2 = intent.getStringExtra(ExternalDefaultBroadcastKey.KEY.FEEDBACK_WORD);
            Bundle extras = intent.getExtras();
            if (extras == null || !extras.getBoolean("EXTRA_FROM_TOUCH", false)) {
                if (TextUtils.isEmpty(stringExtra) || !stringExtra.equals(TASNaviSRActionDispatcher.this.mSessionid)) {
                    Log.w(TASNaviSRActionDispatcher.TAG, "session id error!");
                    return;
                }
                String[] split = stringExtra.split("&");
                if (split.length != 2) {
                    return;
                }
                try {
                    i = Integer.parseInt(split[1]);
                } catch (Exception e) {
                    Log.e(TASNaviSRActionDispatcher.TAG, "keyType parseInt error" + e.toString());
                }
                Log.d(TASNaviSRActionDispatcher.TAG, "FeedbackReceiver onReceive mSessionid:" + TASNaviSRActionDispatcher.this.mSessionid + " errorCode:" + intExtra + " word:" + stringExtra2);
                if (TASNaviSRActionDispatcher.this.mHandler != null) {
                    Message message = new Message();
                    message.what = 3;
                    message.obj = stringExtra;
                    TASNaviSRActionDispatcher.this.mHandler.sendMessage(message);
                }
                if (TASNaviSRActionDispatcher.this.mListener != null) {
                    TASNaviSRActionDispatcher.this.mListener.onFeedback(i, intExtra, extras, stringExtra2);
                }
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    interface OnFeedbackListener {
        void onFeedback(int i, int i2, Bundle bundle, String str);

        void onTimeOut(int i);
    }

    public static TASNaviSRActionDispatcher getInstance() {
        if (sInstance == null) {
            synchronized (TASNaviSRActionDispatcher.class) {
                if (sInstance == null) {
                    sInstance = new TASNaviSRActionDispatcher();
                }
            }
        }
        return sInstance;
    }

    public void init() {
        ContextHolder.getContext().registerReceiver(this.mFeedbackReceiver, new IntentFilter(ExternalDefaultBroadcastKey.BROADCAST_ACTION.FEEDBACK), null, this.mHandler);
    }

    public void unInit() {
        ContextHolder.getContext().unregisterReceiver(this.mFeedbackReceiver);
    }

    private TASNaviSRActionDispatcher() {
        HandlerThread handlerThread = new HandlerThread("TNFeedbackReceiver");
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper()) { // from class: com.tencent.wecarbase.wecarnavi.TASNaviSRActionDispatcher.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Log.d(TASNaviSRActionDispatcher.TAG, "msg = " + message.what + "; mSessionIds count " + TASNaviSRActionDispatcher.this.mSessionIds.size());
                switch (message.what) {
                    case 1:
                        String str = (String) message.obj;
                        String[] split = str.split("&");
                        if (split.length != 2) {
                            return;
                        }
                        int parseInt = Integer.parseInt(split[1]);
                        Iterator it = TASNaviSRActionDispatcher.this.mSessionIds.iterator();
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            if (str2.equals(str)) {
                                TASNaviSRActionDispatcher.this.mSessionIds.remove(str2);
                                if (TASNaviSRActionDispatcher.this.mListener != null) {
                                    TASNaviSRActionDispatcher.this.mListener.onTimeOut(parseInt);
                                    return;
                                }
                                return;
                            }
                        }
                        return;
                    case 2:
                        TASNaviSRActionDispatcher.this.mSessionIds.add((String) message.obj);
                        return;
                    case 3:
                        String str3 = (String) message.obj;
                        Iterator it2 = TASNaviSRActionDispatcher.this.mSessionIds.iterator();
                        while (it2.hasNext()) {
                            String str4 = (String) it2.next();
                            if (str4.equals(str3)) {
                                TASNaviSRActionDispatcher.this.mSessionIds.remove(str4);
                                return;
                            }
                        }
                        return;
                    default:
                        return;
                }
            }
        };
    }

    void setFeedbackListener(OnFeedbackListener onFeedbackListener) {
        this.mListener = onFeedbackListener;
    }

    public void action(int i, Bundle bundle) {
        action(i, bundle, 10000);
    }

    public void action(int i, Bundle bundle, int i2) {
        this.mSessionid = SystemClock.elapsedRealtime() + "&" + i;
        if (this.mHandler != null) {
            Message message = new Message();
            message.what = 1;
            message.obj = this.mSessionid;
            this.mHandler.sendMessageDelayed(message, i2);
            Message message2 = new Message();
            message2.what = 2;
            message2.obj = this.mSessionid;
            this.mHandler.sendMessage(message2);
        }
        sendActionBroadCast(i, bundle);
    }

    private void sendActionBroadCast(int i, Bundle bundle) {
        Intent intent = new Intent(ExternalDefaultBroadcastKey.BROADCAST_ACTION.RECV);
        intent.putExtra(ExternalDefaultBroadcastKey.KEY.TAG, this.mSessionid);
        intent.putExtra(ExternalDefaultBroadcastKey.KEY.KEY_TYPE, i);
        if (bundle != null && !bundle.isEmpty()) {
            intent.putExtras(bundle);
        }
        intent.setFlags(32);
        if (1002 == i) {
            intent.addFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        }
        if (ContextHolder.getContext() != null) {
            ContextHolder.getContext().sendBroadcast(intent);
        }
    }
}
