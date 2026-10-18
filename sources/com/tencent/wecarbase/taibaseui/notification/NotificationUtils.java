package com.tencent.wecarbase.taibaseui.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.ThreadUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class NotificationUtils {
    public static final String ACTION_ADD_ASR_CONTROL = "action.notity.asr.control";
    public static final String ACTION_DISMISS = "action.notity.dismiss";
    public static final String ACTION_REVCMD = "action.notity.revcmd";
    public static final String ACTION_SET_TIME = "action.notity.set.time";
    public static final String CANCEL_STR = "cancel_str";
    public static final String CMD = "cmd";
    public static final String CMD_CANCEL = "cmd_cancel";
    public static final String CMD_OK = "cmd_ok";
    public static final int NOTIFICATION_MY_CAR_PLATE_REGISTER = 10;
    public static final int NOTIFICATION_TYPE_CALL = 12;
    public static final int NOTIFICATION_TYPE_FUEL = 11;
    public static final int NOTIFICATION_TYPE_LIGHT_NAVI_COMPANY = 8;
    public static final int NOTIFICATION_TYPE_LIGHT_NAVI_HOME = 7;
    public static final int NOTIFICATION_TYPE_LIGHT_NAVI_OTHER = 9;
    public static final int NOTIFICATION_TYPE_PARK = 4;
    public static final int NOTIFICATION_TYPE_POI = 3;
    public static final int NOTIFICATION_TYPE_SET_TARGET = 13;
    public static final int NOTIFICATION_TYPE_TEAMTRIP_JOIN = 1;
    public static final int NOTIFICATION_TYPE_UPAN = 5;
    public static final int NOTIFICATION_TYPE_VIEW_TARGET = 6;
    public static final int NOTIFICATION_TYPE_WEIXIN = 2;
    public static final String OK_STR = "ok_str";
    public static final String TIME = "time";
    public static final String TTS_WORD = "tts_word";
    public static final String TYPE = "type";
    private static boolean mIsShowing = false;
    private static int mNotificationId = 1024;
    private static int mNotificationType = -1;
    private static INotification sExtNotification;
    private static INotification mDefaultNotication = new INotification() { // from class: com.tencent.wecarbase.taibaseui.notification.NotificationUtils.1
        @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.INotification
        public void showNotification(String str, String str2, String str3, String str4, NotifyListener notifyListener) {
            NaviNotifyView.getInstance().show(str, str2, str3, str4).setOnNotifyListener(notifyListener);
        }

        @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.INotification
        public void showNotification(String str, String str2, String str3, NotifyListener notifyListener) {
            NaviNotifyView.getInstance().show(str, str2, str3).setOnNotifyListener(notifyListener);
        }

        @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.INotification
        public void clickGoBtn() {
            NaviNotifyView.getInstance().clickGoBtn();
        }

        @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.INotification
        public void clickCancelBtn() {
            NaviNotifyView.getInstance().clickCancelBtn();
        }

        @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.INotification
        public void setDismissTime(int i) {
            NaviNotifyView.getInstance().setDismissTime(i);
        }
    };
    static final BroadcastReceiver mAsrReceiver = new BroadcastReceiver() { // from class: com.tencent.wecarbase.taibaseui.notification.NotificationUtils.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            char c;
            String action = intent.getAction();
            int hashCode = action.hashCode();
            if (hashCode != -2087743406) {
                if (hashCode == 1065136308 && action.equals(NotificationUtils.ACTION_SET_TIME)) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (action.equals(NotificationUtils.ACTION_REVCMD)) {
                    c = 0;
                }
                c = 65535;
            }
            switch (c) {
                case 0:
                    String stringExtra = intent.getStringExtra(NotificationUtils.CMD);
                    if (NotificationUtils.CMD_OK.equals(stringExtra)) {
                        if (NotificationUtils.sExtNotification != null) {
                            NotificationUtils.sExtNotification.clickGoBtn();
                        }
                        LogUtils.d("Asr", "NotificationUtils:rev cmd ok");
                        return;
                    } else {
                        if (NotificationUtils.CMD_CANCEL.equals(stringExtra)) {
                            if (NotificationUtils.sExtNotification != null) {
                                NotificationUtils.sExtNotification.clickCancelBtn();
                            }
                            LogUtils.d("Asr", "NotificationUtils:rev cmd cancel");
                            return;
                        }
                        return;
                    }
                case 1:
                    int intExtra = intent.getIntExtra("time", 10);
                    if (NotificationUtils.sExtNotification != null) {
                        NotificationUtils.sExtNotification.setDismissTime(intExtra);
                    }
                    LogUtils.d("Asr", "NotificationUtils:set time:" + intExtra);
                    return;
                default:
                    return;
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface INotification {
        void clickCancelBtn();

        void clickGoBtn();

        void setDismissTime(int i);

        void showNotification(String str, String str2, String str3, NotifyListener notifyListener);

        void showNotification(String str, String str2, String str3, String str4, NotifyListener notifyListener);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface NotifyListener {
        void onCancelClick(View view);

        void onGoClick(View view);

        void onNotificationHide();
    }

    public static int showNotification(Context context, Notification notification) {
        mNotificationId++;
        if (mNotificationId > 10240) {
            mNotificationId = 1024;
        }
        ((NotificationManager) context.getSystemService("notification")).notify(mNotificationId, notification);
        return mNotificationId;
    }

    public static void showNotification(int i, Context context, Notification notification) {
        ((NotificationManager) context.getSystemService("notification")).notify(i, notification);
    }

    public static void cancelNotification(Context context, int i) {
        ((NotificationManager) context.getSystemService("notification")).cancel(i);
    }

    public static void cancelNotification(Context context) {
        ((NotificationManager) context.getSystemService("notification")).cancelAll();
    }

    public static void setExtNotification(INotification iNotification) {
        sExtNotification = iNotification;
    }

    public static void showNotification(final int i, final String str, final String str2, final String str3, final String str4, final NotifyListener notifyListener) {
        if (sExtNotification == null) {
            setExtNotification(mDefaultNotication);
        }
        if (sExtNotification != null) {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecarbase.taibaseui.notification.NotificationUtils.2
                @Override // java.lang.Runnable
                public void run() {
                    if (NotificationUtils.mIsShowing) {
                        NotificationUtils.sendAsrNotificationDismissBroadcast();
                    } else {
                        NotificationUtils.registerAsrReceiver();
                    }
                    NotificationUtils.sExtNotification.showNotification(str, str2, str3, str4, new NotifyListener() { // from class: com.tencent.wecarbase.taibaseui.notification.NotificationUtils.2.1
                        @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.NotifyListener
                        public void onGoClick(View view) {
                            if (notifyListener != null) {
                                notifyListener.onGoClick(view);
                            }
                        }

                        @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.NotifyListener
                        public void onCancelClick(View view) {
                            if (notifyListener != null) {
                                notifyListener.onCancelClick(view);
                            }
                        }

                        @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.NotifyListener
                        public void onNotificationHide() {
                            if (notifyListener != null) {
                                notifyListener.onNotificationHide();
                            }
                            NotificationUtils.onNotificationHide();
                        }
                    });
                    boolean unused = NotificationUtils.mIsShowing = true;
                    int unused2 = NotificationUtils.mNotificationType = i;
                }
            });
        }
    }

    public static void showNotification(final int i, final String str, final String str2, final String str3, final NotifyListener notifyListener) {
        if (sExtNotification == null) {
            setExtNotification(mDefaultNotication);
        }
        if (sExtNotification != null) {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecarbase.taibaseui.notification.NotificationUtils.3
                @Override // java.lang.Runnable
                public void run() {
                    if (NotificationUtils.sExtNotification != null) {
                        NotificationUtils.sExtNotification.showNotification(str, str2, str3, new NotifyListener() { // from class: com.tencent.wecarbase.taibaseui.notification.NotificationUtils.3.1
                            @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.NotifyListener
                            public void onGoClick(View view) {
                                if (notifyListener != null) {
                                    notifyListener.onGoClick(view);
                                }
                            }

                            @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.NotifyListener
                            public void onCancelClick(View view) {
                                if (notifyListener != null) {
                                    notifyListener.onCancelClick(view);
                                }
                            }

                            @Override // com.tencent.wecarbase.taibaseui.notification.NotificationUtils.NotifyListener
                            public void onNotificationHide() {
                                if (notifyListener != null) {
                                    notifyListener.onNotificationHide();
                                }
                                NotificationUtils.onNotificationHide();
                            }
                        });
                        boolean unused = NotificationUtils.mIsShowing = true;
                        int unused2 = NotificationUtils.mNotificationType = i;
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onNotificationHide() {
        LogUtils.d("Asr", "NotificationUtils onNotificationHide");
        sendAsrNotificationDismissBroadcast();
        mIsShowing = false;
        mNotificationType = -1;
        try {
            LocalBroadcastManager.getInstance(ContextHolder.getContext()).unregisterReceiver(mAsrReceiver);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendAsrNotificationDismissBroadcast() {
        Intent intent = new Intent(ACTION_DISMISS);
        intent.putExtra("type", mNotificationType);
        LocalBroadcastManager.getInstance(ContextHolder.getContext()).sendBroadcast(intent);
    }

    public static void addAsrControl(int i, String str, String str2, String str3) {
        Intent intent = new Intent(ACTION_ADD_ASR_CONTROL);
        intent.putExtra("type", i);
        intent.putExtra(TTS_WORD, str);
        intent.putExtra(OK_STR, str2);
        intent.putExtra(CANCEL_STR, str3);
        LocalBroadcastManager.getInstance(ContextHolder.getContext()).sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void registerAsrReceiver() {
        try {
            IntentFilter intentFilter = new IntentFilter(ACTION_REVCMD);
            intentFilter.addAction(ACTION_SET_TIME);
            LocalBroadcastManager.getInstance(ContextHolder.getContext()).registerReceiver(mAsrReceiver, intentFilter);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
