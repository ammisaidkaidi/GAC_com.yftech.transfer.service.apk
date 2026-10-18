package com.tencent.wecarbase.taibaseui.notification;

import android.view.View;

/* loaded from: /home/user/work/dex/classes.dex */
public class NaviNotificationManager {
    private final String TAG;
    private NotificationItem mNotificationItem;

    private NaviNotificationManager() {
        this.TAG = NaviNotificationManager.class.getSimpleName();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class InnerHolder {
        public static NaviNotificationManager sInstance = new NaviNotificationManager();

        private InnerHolder() {
        }
    }

    public static NaviNotificationManager getInstance() {
        return InnerHolder.sInstance;
    }

    public NotificationItem getNotificationItem() {
        return this.mNotificationItem;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class NotificationItem {
        public View.OnClickListener cancelBtnListener;
        public String cancelBtnText;
        public boolean cancelBtnVisible;
        public String message;
        public int notifyType;
        public View.OnClickListener okBtnClickListener;
        public String okBtnText;
        public boolean okBtnVisible;
        public String title;

        public NotificationItem(int i, String str, String str2, String str3, String str4, View.OnClickListener onClickListener, View.OnClickListener onClickListener2, boolean z, boolean z2) {
            this.okBtnVisible = true;
            this.cancelBtnVisible = true;
            this.notifyType = i;
            this.title = str;
            this.message = str2;
            this.okBtnText = str3;
            this.cancelBtnText = str4;
            this.okBtnClickListener = onClickListener;
            this.cancelBtnListener = onClickListener2;
            this.okBtnVisible = z;
            this.cancelBtnVisible = z2;
        }

        public NotificationItem(String str, String str2, String str3, String str4, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
            this(3, str, str2, str3, str4, onClickListener, onClickListener2, true, true);
        }
    }
}
