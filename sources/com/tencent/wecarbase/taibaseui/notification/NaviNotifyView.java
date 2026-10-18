package com.tencent.wecarbase.taibaseui.notification;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.common.UIHandler;
import com.tencent.wecarbase.taibaseui.notification.DelayCloseView;
import com.tencent.wecarbase.taibaseui.notification.NotificationUtils;
import com.tencent.wecarbase.utils.AppResourcesUtils;
import com.tencent.wecarbase.utils.ClickUtils;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class NaviNotifyView {
    private static final int DELAY_MIS = 10000;
    private static final int MSG_CANCEL = 146;
    private static String TAG = "NaviNotifyView";
    private TextView mAddressView;
    private ImageView mCancelIv;
    private TextView mCancelTv;
    private LinearLayout mCancelView;
    private ImageView mClickIv;
    private TextView mClickTv;
    private LinearLayout mClickView;
    private Context mContext;
    private DelayCloseView mDelayCloseView;
    private UIHandler mHandler;
    private ImageView mIconView;
    private View mMainView;
    private NotificationUtils.NotifyListener mNotifyListener;
    private View.OnClickListener mOnClickListener;
    private WindowManager.LayoutParams mParams;
    private View mRemoteView;
    private TextView mTitleView;
    private WindowManager mWindowManager;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class LazyHolder {
        private static final NaviNotifyView instance = new NaviNotifyView();

        private LazyHolder() {
        }
    }

    public static NaviNotifyView getInstance() {
        return LazyHolder.instance;
    }

    private NaviNotifyView() {
        this.mOnClickListener = new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.notification.NaviNotifyView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NaviNotifyView.this.mNotifyListener != null && ClickUtils.isSingleClick()) {
                    int id = view.getId();
                    if (id == AppResourcesUtils.getSdkId("tai_notification_click_layout", "id")) {
                        NaviNotifyView.this.mNotifyListener.onGoClick(view);
                    } else if (id == AppResourcesUtils.getSdkId("tai_notification_cancel_layout", "id")) {
                        NaviNotifyView.this.mNotifyListener.onCancelClick(view);
                    }
                }
                NaviNotifyView.this.hide();
            }
        };
        this.mHandler = new UIHandler() { // from class: com.tencent.wecarbase.taibaseui.notification.NaviNotifyView.6
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                NaviNotifyView.this.hide();
            }
        };
    }

    public void init(Context context) {
        this.mContext = context;
        this.mMainView = LayoutInflater.from(this.mContext).inflate(AppResourcesUtils.getSdkId("tai_view_notify", "layout"), (ViewGroup) null);
        this.mMainView.setLayerType(1, null);
        this.mRemoteView = this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_nofity_remote_view", "id"));
        this.mIconView = (ImageView) this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_app_icon", "id"));
        this.mTitleView = (TextView) this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_notification_title", "id"));
        this.mAddressView = (TextView) this.mMainView.findViewById(AppResourcesUtils.getSdkId("address", "id"));
        this.mClickView = (LinearLayout) this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_notification_click_layout", "id"));
        this.mCancelView = (LinearLayout) this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_notification_cancel_layout", "id"));
        this.mClickIv = (ImageView) this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_notification_click_iv", "id"));
        this.mCancelIv = (ImageView) this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_notification_cancel_iv", "id"));
        this.mClickTv = (TextView) this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_notification_click_tv", "id"));
        this.mCancelTv = (TextView) this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_notification_cancel_tv", "id"));
        this.mDelayCloseView = (DelayCloseView) this.mMainView.findViewById(AppResourcesUtils.getSdkId("tai_notification_delay_close_view", "id"));
        this.mClickView.setOnClickListener(this.mOnClickListener);
        this.mCancelView.setOnClickListener(this.mOnClickListener);
        this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        this.mParams = new WindowManager.LayoutParams();
        this.mParams.type = 2003;
        this.mParams.format = -3;
    }

    public NaviNotifyView setOnNotifyListener(NotificationUtils.NotifyListener notifyListener) {
        this.mNotifyListener = notifyListener;
        return this;
    }

    public NaviNotifyView show(String str, String str2, String str3, String str4) {
        if (this.mMainView == null) {
            init(ContextHolder.getContext());
        }
        updateStyle();
        this.mMainView.setVisibility(0);
        this.mTitleView.setText(str);
        this.mAddressView.setText(str2);
        this.mClickTv.setText("“" + str3 + "”");
        this.mCancelTv.setText("“" + str4 + "”");
        this.mClickView.setVisibility(0);
        this.mCancelView.setVisibility(0);
        this.mDelayCloseView.setOnCountDownListener(new DelayCloseView.OnCountDownListener() { // from class: com.tencent.wecarbase.taibaseui.notification.NaviNotifyView.1
            @Override // com.tencent.wecarbase.taibaseui.notification.DelayCloseView.OnCountDownListener
            public void onCountDown() {
                NaviNotifyView.this.hide();
            }
        }, 10000);
        this.mMainView.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.notification.NaviNotifyView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NaviNotifyView.this.hide();
            }
        });
        if (this.mMainView.getParent() == null) {
            this.mWindowManager.addView(this.mMainView, this.mParams);
        }
        return this;
    }

    public NaviNotifyView show(String str, String str2, String str3) {
        if (this.mMainView == null) {
            init(ContextHolder.getContext());
        }
        updateStyle();
        this.mMainView.setVisibility(0);
        this.mTitleView.setText(str);
        this.mAddressView.setText(str2);
        if (TextUtils.isEmpty(str3)) {
            this.mCancelView.setVisibility(8);
        } else {
            this.mCancelTv.setText("“" + str3 + "”");
            this.mCancelView.setVisibility(0);
        }
        this.mClickView.setVisibility(8);
        this.mHandler.removeMessages(MSG_CANCEL);
        this.mHandler.sendEmptyMessageDelayed(MSG_CANCEL, 10000L);
        this.mMainView.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.notification.NaviNotifyView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NaviNotifyView.this.hide();
            }
        });
        if (this.mMainView.getParent() == null) {
            this.mWindowManager.addView(this.mMainView, this.mParams);
        }
        return this;
    }

    public boolean hide() {
        LogUtils.d(TAG, "NaviNotifyView hide");
        this.mMainView.setVisibility(8);
        this.mHandler.removeMessages(MSG_CANCEL);
        try {
            this.mWindowManager.removeView(this.mMainView);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (this.mNotifyListener != null) {
            this.mNotifyListener.onNotificationHide();
        }
        this.mNotifyListener = null;
        return true;
    }

    public void clickGoBtn() {
        if (this.mNotifyListener != null && ClickUtils.isSingleClick()) {
            this.mNotifyListener.onGoClick(null);
        }
        hide();
        LogUtils.d(TAG, "NotifyView:rev cmd ok");
    }

    public void clickCancelBtn() {
        if (this.mNotifyListener != null && ClickUtils.isSingleClick()) {
            this.mNotifyListener.onCancelClick(null);
        }
        hide();
        LogUtils.d(TAG, "NotifyView:rev cmd cancel");
    }

    public void setDismissTime(int i) {
        LogUtils.d(TAG, "NotifyView:set time:" + i);
        if (this.mDelayCloseView != null) {
            this.mDelayCloseView.setOnCountDownListener(new DelayCloseView.OnCountDownListener() { // from class: com.tencent.wecarbase.taibaseui.notification.NaviNotifyView.4
                @Override // com.tencent.wecarbase.taibaseui.notification.DelayCloseView.OnCountDownListener
                public void onCountDown() {
                    NaviNotifyView.this.hide();
                }
            }, i * 1000);
        } else {
            this.mHandler.removeMessages(MSG_CANCEL);
            this.mHandler.sendEmptyMessageDelayed(MSG_CANCEL, i * 1000);
        }
    }

    private void updateStyle() {
        AppResourcesUtils.setBackground(this.mRemoteView, AppResourcesUtils.getSdkId("tai_pop_status_bar_bg_normal", AppResourcesUtils.RS_DRAWABLE));
        AppResourcesUtils.setBackground(this.mClickIv, AppResourcesUtils.getSdkId("tai_pop_status_bar_tip_click", AppResourcesUtils.RS_DRAWABLE));
        AppResourcesUtils.setImageSrc(this.mCancelIv, AppResourcesUtils.getSdkId("tai_pop_status_bar_tip_close_click_image", AppResourcesUtils.RS_DRAWABLE));
        AppResourcesUtils.setBackground(this.mCancelIv, AppResourcesUtils.getSdkId("tai_pop_status_bar_tip_close_click", AppResourcesUtils.RS_DRAWABLE));
        AppResourcesUtils.setTextColor(this.mCancelTv, AppResourcesUtils.getSdkId("tai_push_maphome_tip_close_text_color", AppResourcesUtils.RS_COLOR));
        AppResourcesUtils.setImageSrc(this.mClickIv, AppResourcesUtils.getSdkId("tai_pop_status_bar_tip_click_image", AppResourcesUtils.RS_DRAWABLE));
        this.mDelayCloseView.setRingColor(AppResourcesUtils.getColor(AppResourcesUtils.getSdkId("tai_push_maphome_tip_click_color", AppResourcesUtils.RS_COLOR)), AppResourcesUtils.getColor(AppResourcesUtils.getSdkId("white", AppResourcesUtils.RS_COLOR)));
        AppResourcesUtils.setTextColor(this.mClickTv, AppResourcesUtils.getSdkId("tai_push_maphome_tip_click_color", AppResourcesUtils.RS_COLOR));
        AppResourcesUtils.setTextColor(this.mTitleView, AppResourcesUtils.getSdkId("tai_push_notify_text_color", AppResourcesUtils.RS_COLOR));
        AppResourcesUtils.setTextColor(this.mAddressView, AppResourcesUtils.getSdkId("tai_push_notify_address_text_color", AppResourcesUtils.RS_COLOR));
    }
}
