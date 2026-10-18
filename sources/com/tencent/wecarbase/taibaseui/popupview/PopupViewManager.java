package com.tencent.wecarbase.taibaseui.popupview;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.Keep;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import com.tencent.wecarbase.compat.PermissionCompat;
import com.tencent.wecarbase.compat.ViewCompatProxy;
import com.tencent.wecarbase.taibaseui.notification.DelayCloseView;
import com.tencent.wecarbase.utils.AppResourcesUtils;
import com.tencent.wecarbase.utils.LogUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class PopupViewManager {
    private static final int EVENT_CLOSE_POP_VIEW = 1000;
    private static final int EVENT_START_ANIMATION = 2000;
    private static final int POP_VIEW_CLOSE_DELAY = 5000;
    private static final int WEB_APP_POP_VIEW_CLOSE_DELAY = 8000;
    private static PopupViewManager sInstance;
    private Context mContext;
    private PopupView mPopupView;
    private WeakReference<PopupView> mPopupViewRef;
    private LinearLayout mRootViewGroup;
    private int mScreenHeight;
    private int mScreenWidth;
    private final String TAG = getClass().getSimpleName();
    private WindowManager mWindowManager = null;
    private WindowManager.LayoutParams mWindowParams = null;
    private ViewGroup.LayoutParams mLinearLayoutParams = null;
    private boolean isPopupWindowShow = false;
    private Handler mHandler = null;

    public static PopupViewManager getInstance() {
        if (sInstance == null) {
            synchronized (PopupViewManager.class) {
                if (sInstance == null) {
                    sInstance = new PopupViewManager();
                }
            }
        }
        return sInstance;
    }

    public synchronized void init(Context context) {
        if (context == null) {
            throw new RuntimeException("context can not be null");
        }
        this.mContext = context.getApplicationContext();
        getHandler();
        if (this.mWindowManager == null) {
            this.mWindowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.mWindowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            this.mScreenHeight = displayMetrics.heightPixels;
            this.mScreenWidth = displayMetrics.widthPixels;
        }
        if (this.mWindowParams == null) {
            this.mWindowParams = new WindowManager.LayoutParams();
            this.mWindowParams.type = ViewCompatProxy.getWindowOverlayType();
            this.mWindowParams.flags = 16777248;
            this.mWindowParams.format = -3;
            this.mWindowParams.width = -1;
            this.mWindowParams.height = -1;
            this.mWindowParams.gravity = 8388661;
        }
        if (this.mLinearLayoutParams == null) {
            this.mLinearLayoutParams = new LinearLayout.LayoutParams(-1, -2);
        }
        this.isPopupWindowShow = false;
    }

    public boolean isInit() {
        return this.mWindowManager != null;
    }

    public void setPopupViewLayout(int i) {
        PopupView.setLayoutResId(i);
    }

    public PopupView getCurrentPopupView() {
        return this.mPopupViewRef.get();
    }

    private Handler getHandler() {
        if (this.mHandler != null) {
            return this.mHandler;
        }
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.tencent.wecarbase.taibaseui.popupview.PopupViewManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                PopupView popupView;
                int i = message.what;
                if (i == 1000) {
                    PopupViewManager.this.dismissPopupWindows();
                } else if (i == 2000 && (popupView = (PopupView) message.obj) != null) {
                    popupView.setVisibility(0);
                    popupView.startAnimation(AnimationUtils.loadAnimation(PopupViewManager.this.mContext, AppResourcesUtils.getSdkId("slide_up", "anim")));
                }
                super.handleMessage(message);
            }
        };
        return this.mHandler;
    }

    public synchronized PopupView showPopupWebAppAutoClose(String str, String str2, String str3, Integer num, String str4, IPopupViewListener iPopupViewListener) {
        LogUtils.d(this.TAG, "showPopupWebAppAutoClose" + str);
        if (this.mHandler == null) {
            getHandler();
        }
        this.mHandler.removeMessages(1000);
        return showPopupWindowWithType(str, str2, null, num, PopupView.WEBAPP_LAYOUT, 8000, str3, str4, iPopupViewListener);
    }

    public synchronized PopupView showPopupWindowParkAutoClose(String str, String str2, String str3, Integer num) {
        LogUtils.d(this.TAG, "showPopupWindowParkAutoClose" + str);
        if (this.mHandler == null) {
            getHandler();
        }
        this.mHandler.removeMessages(1000);
        this.mHandler.sendEmptyMessageDelayed(1000, 5000L);
        return showPopupWindowWithType(str, str2, str3, num, PopupView.PARK_LAYOUT);
    }

    public synchronized PopupView showPopupWindowWithType(String str, String str2, String str3, Integer num, String str4) {
        return showPopupWindowWithType(str, str2, str3, num, str4, 0, null, null, null);
    }

    public synchronized PopupView showPopupWindowWithType(String str, String str2, String str3, Integer num, String str4, int i, String str5, String str6, IPopupViewListener iPopupViewListener) {
        LogUtils.d(this.TAG, "showPopupWindowWithType" + str);
        PopupView popupView = null;
        if (!PermissionCompat.hasPermission(this.mContext, "android.permission.SYSTEM_ALERT_WINDOW")) {
            LogUtils.e(this.TAG, "Check SYSTEM_ALERT_WINDOW permission failed!");
            return null;
        }
        assertUIThread();
        if (this.isPopupWindowShow) {
            this.mRootViewGroup.removeAllViews();
        }
        LogUtils.d(this.TAG, "isPopupWindowShow");
        if (this.mRootViewGroup == null) {
            createRootViewGroup(this.mContext);
        }
        LogUtils.d(this.TAG, "createRootViewGroup");
        try {
            if (PopupView.PARK_LAYOUT.equals(str4)) {
                this.mPopupView = createPopupViewPark(str, str2, str3, num);
            } else if (PopupView.WEBAPP_LAYOUT.equals(str4)) {
                this.mPopupView = createPopupViewWebApp(str, str2, i, str5, str6, iPopupViewListener);
            } else {
                this.mPopupView = createPopupViewLocked(str, null, null, null);
            }
            this.mRootViewGroup.addView(this.mPopupView, this.mLinearLayoutParams);
            this.mPopupView.setVisibility(8);
            this.mWindowManager.addView(this.mRootViewGroup, this.mWindowParams);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(2000, this.mPopupView));
            this.isPopupWindowShow = true;
        } catch (Exception e) {
            LogUtils.e(this.TAG, "Show popup window failed:", e);
        }
        if (this.mPopupViewRef != null) {
            popupView = this.mPopupViewRef.get();
        }
        return popupView;
    }

    public synchronized PopupView showPopupWindow(String str, String str2, String str3, ArrayList<String> arrayList, ArrayList<String> arrayList2, IPopupViewListener iPopupViewListener) {
        PopupView popupView = null;
        if (!PermissionCompat.hasPermission(this.mContext, "android.permission.SYSTEM_ALERT_WINDOW")) {
            LogUtils.e(this.TAG, "Check SYSTEM_ALERT_WINDOW permission failed!");
            return null;
        }
        assertUIThread();
        if (this.isPopupWindowShow) {
            this.mRootViewGroup.removeAllViews();
        }
        if (this.mRootViewGroup == null) {
            createRootViewGroup(this.mContext);
        }
        try {
            this.mPopupView = createPopupViewLocked(str, str2, str3, iPopupViewListener);
            this.mRootViewGroup.addView(this.mPopupView, this.mLinearLayoutParams);
            this.mPopupView.setVisibility(8);
            this.mWindowManager.addView(this.mRootViewGroup, this.mWindowParams);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(2000, this.mPopupView));
            this.isPopupWindowShow = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.mPopupViewRef != null) {
            popupView = this.mPopupViewRef.get();
        }
        return popupView;
    }

    public synchronized void dismissPopupWindows() {
        LogUtils.d(this.TAG, "dismissPopupWindows");
        if (this.isPopupWindowShow) {
            if ((this.mPopupViewRef != null ? this.mPopupViewRef.get() : null) != null) {
                removeAllViewInner();
            } else {
                LogUtils.e(this.TAG, "PopupView should not be null");
            }
            this.isPopupWindowShow = false;
        }
    }

    public boolean isPopupWindowShow() {
        return this.isPopupWindowShow;
    }

    private PopupView createPopupViewWebApp(String str, String str2, int i, String str3, String str4, IPopupViewListener iPopupViewListener) {
        LogUtils.d(this.TAG, "createPopupViewWebApp" + str);
        PopupView popupView = new PopupView(this.mContext, PopupView.WEBAPP_LAYOUT);
        if (i > 100) {
            popupView.setTimeShow(i, new DelayCloseView.OnCountDownListener() { // from class: com.tencent.wecarbase.taibaseui.popupview.PopupViewManager.2
                @Override // com.tencent.wecarbase.taibaseui.notification.DelayCloseView.OnCountDownListener
                public void onCountDown() {
                    PopupViewManager.this.dismissPopupWindows();
                }
            });
        } else {
            this.mHandler.sendEmptyMessageDelayed(1000, 5000L);
        }
        popupView.setPopupViewListener(iPopupViewListener);
        popupView.setTitle(str);
        popupView.setDetail(str2);
        if (!TextUtils.isEmpty(str3) && str3.length() <= 5) {
            popupView.setPostiveBtnTitle(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            popupView.setWebAppIcon(str4);
        }
        this.mPopupViewRef = new WeakReference<>(popupView);
        return popupView;
    }

    private PopupView createPopupViewPark(String str, String str2, String str3, Integer num) {
        LogUtils.d(this.TAG, "createPopupViewPark" + str);
        PopupView popupView = new PopupView(this.mContext, PopupView.PARK_LAYOUT);
        popupView.setTitle(str);
        popupView.setDetail(str2);
        popupView.setBottomBarLogoName(str3);
        popupView.setBottomBarLogo(num);
        popupView.setBottomBarVisibility(str3);
        this.mPopupViewRef = new WeakReference<>(popupView);
        return popupView;
    }

    private PopupView createPopupViewLocked(String str, String str2, String str3, IPopupViewListener iPopupViewListener) {
        PopupView popupView = new PopupView(this.mContext);
        popupView.setTitle(str);
        popupView.setPostiveBtnTitle(str2);
        popupView.setNegativeBtnTitle(str3);
        popupView.setPopupViewListener(iPopupViewListener);
        this.mPopupViewRef = new WeakReference<>(popupView);
        return popupView;
    }

    private void assertUIThread() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new RuntimeException("需要在UI线程进行此函数调用");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAllViewInner() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this.mContext, AppResourcesUtils.getSdkId("slide_down", "anim"));
        loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.tencent.wecarbase.taibaseui.popupview.PopupViewManager.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                PopupViewManager.this.mRootViewGroup.removeAllViews();
                PopupViewManager.this.mWindowManager.removeView(PopupViewManager.this.mRootViewGroup);
                PopupViewManager.this.mRootViewGroup = null;
            }
        });
        if (this.mPopupView != null) {
            this.mPopupView.notifyStartDismiss();
            this.mPopupView.startAnimation(loadAnimation);
        } else {
            this.mRootViewGroup.removeAllViews();
            this.mWindowManager.removeView(this.mRootViewGroup);
            this.mRootViewGroup = null;
        }
        this.mHandler.removeMessages(1000);
        this.mHandler.removeMessages(2000);
        this.isPopupWindowShow = false;
        this.mPopupViewRef = null;
    }

    private void createRootViewGroup(Context context) {
        this.mRootViewGroup = new LinearLayout(context);
        this.mRootViewGroup.setBackgroundColor(0);
        this.mRootViewGroup.setMinimumHeight(this.mScreenHeight);
        this.mRootViewGroup.setMinimumWidth(this.mScreenWidth);
        this.mRootViewGroup.setOrientation(1);
        this.mRootViewGroup.setGravity(80);
        this.mRootViewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.popupview.PopupViewManager.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PopupViewManager.this.removeAllViewInner();
            }
        });
    }
}
