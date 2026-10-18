package com.tencent.wecarbase.taibaseui.popupview;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.tencent.wecarbase.config.CloudConfig;
import com.tencent.wecarbase.taibaseui.notification.DelayCloseView;
import com.tencent.wecarbase.utils.AppResourcesUtils;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class PopupView extends FrameLayout {
    public static final String DEFAULT_LAYOUT = "default";
    public static final String PARK_LAYOUT = "park";
    public static final String WEBAPP_LAYOUT = "web_app";
    private static ArrayMap<String, Integer> mLayoutMap = new ArrayMap<String, Integer>() { // from class: com.tencent.wecarbase.taibaseui.popupview.PopupView.1
        {
            put(PopupView.DEFAULT_LAYOUT, Integer.valueOf(AppResourcesUtils.getSdkId("wbsdk_layout_popup_view", "layout")));
            put(PopupView.PARK_LAYOUT, Integer.valueOf(AppResourcesUtils.getSdkId("wbsdk_layout_park_popup_view", "layout")));
            put(PopupView.WEBAPP_LAYOUT, Integer.valueOf(AppResourcesUtils.getSdkId("tai_notification_layout", "layout")));
        }
    };
    private final String TAG;
    private View mBottomBar;
    private ImageView mBottomBarLogo;
    private TextView mBottomBarLogoName;
    private ImageView mCancelIv;
    private TextView mCancelTv;
    private LinearLayout mCancelView;
    private ImageView mClickIv;
    private TextView mClickTv;
    private LinearLayout mClickView;
    private DelayCloseView mDelayCloseView;
    private TextView mDetail;
    private ImageView mIconView;
    private Integer mLayout;
    private String mLayoutType;
    private IPopupViewListener mListener;
    private Button mNegativeBtn;
    DisplayImageOptions mOptions;
    private Button mPositiveBtn;
    private LinearLayout mRemoteView;
    TextView mTitle;

    public static void setLayoutResId(int i) {
        mLayoutMap.put(DEFAULT_LAYOUT, Integer.valueOf(i));
    }

    public PopupView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mLayout = Integer.valueOf(AppResourcesUtils.getSdkId("wbsdk_layout_popup_view", "layout"));
        this.mLayoutType = DEFAULT_LAYOUT;
        this.mOptions = new DisplayImageOptions.Builder().cacheInMemory(true).cacheOnDisk(true).bitmapConfig(Bitmap.Config.RGB_565).displayer(new RoundedBitmapDisplayer(4)).showImageOnFail(AppResourcesUtils.getSdkId("tai_pop_common_status_bar_header", AppResourcesUtils.RS_DRAWABLE)).build();
        init(getContext());
    }

    public PopupView(Context context, String str) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mLayout = Integer.valueOf(AppResourcesUtils.getSdkId("wbsdk_layout_popup_view", "layout"));
        this.mLayoutType = DEFAULT_LAYOUT;
        this.mOptions = new DisplayImageOptions.Builder().cacheInMemory(true).cacheOnDisk(true).bitmapConfig(Bitmap.Config.RGB_565).displayer(new RoundedBitmapDisplayer(4)).showImageOnFail(AppResourcesUtils.getSdkId("tai_pop_common_status_bar_header", AppResourcesUtils.RS_DRAWABLE)).build();
        if (mLayoutMap.get(str) != null) {
            this.mLayoutType = str;
            this.mLayout = mLayoutMap.get(str);
        }
        init(getContext());
    }

    public PopupView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = getClass().getSimpleName();
        this.mLayout = Integer.valueOf(AppResourcesUtils.getSdkId("wbsdk_layout_popup_view", "layout"));
        this.mLayoutType = DEFAULT_LAYOUT;
        this.mOptions = new DisplayImageOptions.Builder().cacheInMemory(true).cacheOnDisk(true).bitmapConfig(Bitmap.Config.RGB_565).displayer(new RoundedBitmapDisplayer(4)).showImageOnFail(AppResourcesUtils.getSdkId("tai_pop_common_status_bar_header", AppResourcesUtils.RS_DRAWABLE)).build();
        init(getContext());
    }

    public PopupView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = getClass().getSimpleName();
        this.mLayout = Integer.valueOf(AppResourcesUtils.getSdkId("wbsdk_layout_popup_view", "layout"));
        this.mLayoutType = DEFAULT_LAYOUT;
        this.mOptions = new DisplayImageOptions.Builder().cacheInMemory(true).cacheOnDisk(true).bitmapConfig(Bitmap.Config.RGB_565).displayer(new RoundedBitmapDisplayer(4)).showImageOnFail(AppResourcesUtils.getSdkId("tai_pop_common_status_bar_header", AppResourcesUtils.RS_DRAWABLE)).build();
        init(getContext());
    }

    @TargetApi(21)
    public PopupView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.TAG = getClass().getSimpleName();
        this.mLayout = Integer.valueOf(AppResourcesUtils.getSdkId("wbsdk_layout_popup_view", "layout"));
        this.mLayoutType = DEFAULT_LAYOUT;
        this.mOptions = new DisplayImageOptions.Builder().cacheInMemory(true).cacheOnDisk(true).bitmapConfig(Bitmap.Config.RGB_565).displayer(new RoundedBitmapDisplayer(4)).showImageOnFail(AppResourcesUtils.getSdkId("tai_pop_common_status_bar_header", AppResourcesUtils.RS_DRAWABLE)).build();
        init(getContext());
    }

    private void init(Context context) {
        LayoutInflater.from(context).inflate(mLayoutMap.get(this.mLayoutType).intValue(), this);
        if (PARK_LAYOUT.equals(this.mLayoutType)) {
            this.mTitle = (TextView) findViewById(AppResourcesUtils.getSdkId("popup_view_title", "id"));
            this.mDetail = (TextView) findViewById(AppResourcesUtils.getSdkId("popup_view_detail", "id"));
            this.mBottomBar = findViewById(AppResourcesUtils.getSdkId("popup_view_bottom_bar", "id"));
            this.mBottomBarLogo = (ImageView) findViewById(AppResourcesUtils.getSdkId("popup_view_bottom_bar_logo", "id"));
            this.mBottomBarLogoName = (TextView) findViewById(AppResourcesUtils.getSdkId("popup_view_bottom_bar_logo_name", "id"));
            return;
        }
        if (WEBAPP_LAYOUT.equals(this.mLayoutType)) {
            initWebAppView();
            return;
        }
        this.mTitle = (TextView) findViewById(AppResourcesUtils.getSdkId("popup_view_title", "id"));
        this.mPositiveBtn = (Button) findViewById(AppResourcesUtils.getSdkId("popup_view_positive_btn", "id"));
        this.mPositiveBtn.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.popupview.PopupView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogUtils.d(PopupView.this.TAG, "click positive btn");
                if (PopupView.this.mListener != null) {
                    PopupView.this.mListener.onPositiveSelection(true);
                }
            }
        });
        this.mNegativeBtn = (Button) findViewById(AppResourcesUtils.getSdkId("popup_view_negative_btn", "id"));
        this.mNegativeBtn.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.popupview.PopupView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogUtils.d(PopupView.this.TAG, "click negative btn");
                if (PopupView.this.mListener != null) {
                    PopupView.this.mListener.onNegativeSelection(true);
                }
            }
        });
    }

    private void initWebAppView() {
        this.mRemoteView = (LinearLayout) findViewById(AppResourcesUtils.getSdkId("n_notification_layout", "id"));
        this.mTitle = (TextView) findViewById(AppResourcesUtils.getSdkId("tai_notification_title", "id"));
        this.mDetail = (TextView) findViewById(AppResourcesUtils.getSdkId("address", "id"));
        this.mIconView = (ImageView) findViewById(AppResourcesUtils.getSdkId("tai_app_icon", "id"));
        this.mClickView = (LinearLayout) findViewById(AppResourcesUtils.getSdkId("tai_notification_click_layout", "id"));
        this.mClickView.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.popupview.PopupView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogUtils.d(PopupView.this.TAG, "ui 2.0 click positive btn");
                if (PopupView.this.mListener != null) {
                    PopupView.this.mListener.onPositiveSelection(true);
                }
            }
        });
        this.mCancelView = (LinearLayout) findViewById(AppResourcesUtils.getSdkId("tai_notification_cancel_layout", "id"));
        this.mCancelView.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.wecarbase.taibaseui.popupview.PopupView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogUtils.d(PopupView.this.TAG, "ui 2.0 click negative btn");
                if (PopupView.this.mListener != null) {
                    PopupView.this.mListener.onNegativeSelection(true);
                }
            }
        });
        this.mClickIv = (ImageView) findViewById(AppResourcesUtils.getSdkId("tai_notification_click_iv", "id"));
        this.mCancelIv = (ImageView) findViewById(AppResourcesUtils.getSdkId("tai_notification_cancel_iv", "id"));
        this.mClickTv = (TextView) findViewById(AppResourcesUtils.getSdkId("tai_notification_click_tv", "id"));
        this.mCancelTv = (TextView) findViewById(AppResourcesUtils.getSdkId("tai_notification_cancel_tv", "id"));
        this.mCancelView.setVisibility(8);
        this.mDelayCloseView = (DelayCloseView) findViewById(AppResourcesUtils.getSdkId("tai_notification_delay_close_view", "id"));
        updateStyle();
        initImageLoader();
    }

    private void initImageLoader() {
        if (ImageLoader.getInstance().isInited()) {
            return;
        }
        ImageLoader.getInstance().init(new ImageLoaderConfiguration.Builder(AppResourcesUtils.getContext().getApplicationContext()).memoryCacheSize(2097152).diskCacheFileCount(100).imageDownloader(new BaseImageDownloader(AppResourcesUtils.getContext().getApplicationContext(), CloudConfig.CLOUD_SERVER_CONNECT_ERROR_TIME, 120000)).writeDebugLogs().build());
    }

    private void updateStyle() {
        AppResourcesUtils.setBackground(this.mClickIv, AppResourcesUtils.getSdkId("tai_pop_status_bar_tip_click", AppResourcesUtils.RS_DRAWABLE));
        AppResourcesUtils.setBackground(this.mRemoteView, AppResourcesUtils.getSdkId("tai_pop_status_bar_bg_normal", AppResourcesUtils.RS_DRAWABLE));
        AppResourcesUtils.setImageSrc(this.mClickIv, AppResourcesUtils.getSdkId("tai_pop_status_bar_tip_click_image", AppResourcesUtils.RS_DRAWABLE));
        this.mDelayCloseView.setRingColor(AppResourcesUtils.getColor(AppResourcesUtils.getSdkId("tai_push_maphome_tip_click_color", AppResourcesUtils.RS_COLOR)), AppResourcesUtils.getColor(AppResourcesUtils.getSdkId("white", AppResourcesUtils.RS_COLOR)));
        AppResourcesUtils.setTextColor(this.mClickTv, AppResourcesUtils.getSdkId("tai_push_maphome_tip_click_color", AppResourcesUtils.RS_COLOR));
        AppResourcesUtils.setTextColor(this.mTitle, AppResourcesUtils.getSdkId("tai_push_notify_text_color", AppResourcesUtils.RS_COLOR));
        AppResourcesUtils.setTextColor(this.mDetail, AppResourcesUtils.getSdkId("tai_push_notify_address_text_color", AppResourcesUtils.RS_COLOR));
    }

    public void setTimeShow(int i, DelayCloseView.OnCountDownListener onCountDownListener) {
        if (this.mDelayCloseView != null) {
            this.mDelayCloseView.setOnCountDownListener(onCountDownListener, i);
        }
    }

    public void setWebAppIcon(String str) {
        loadImage(str, this.mIconView);
    }

    public void loadImage(String str, ImageView imageView) {
        imageView.setImageResource(AppResourcesUtils.getSdkId("tai_pop_common_status_bar_header", AppResourcesUtils.RS_DRAWABLE));
        ImageLoader.getInstance().displayImage(str, imageView, this.mOptions);
    }

    public void setBottomBarLogo(Integer num) {
        if (num != null) {
            this.mBottomBarLogo.setImageResource(num.intValue());
        }
    }

    public void setBottomBarLogoName(String str) {
        this.mBottomBarLogoName.setText(str);
    }

    public void setTitle(String str) {
        this.mTitle.setText(str);
    }

    public void setDetail(String str) {
        this.mDetail.setText(str);
    }

    public void setDetailVisibility(String str) {
        if (str == null) {
            this.mDetail.setVisibility(8);
        } else {
            this.mDetail.setVisibility(0);
        }
    }

    public void setBottomBarVisibility(String str) {
        if (str == null) {
            this.mBottomBar.setVisibility(8);
        } else {
            this.mBottomBar.setVisibility(0);
        }
    }

    public void setPostiveBtnTitle(String str) {
        if (str == null) {
            if (WEBAPP_LAYOUT.equals(this.mLayoutType)) {
                this.mClickView.setVisibility(8);
                return;
            } else {
                this.mPositiveBtn.setVisibility(8);
                return;
            }
        }
        if (WEBAPP_LAYOUT.equals(this.mLayoutType)) {
            this.mClickView.setVisibility(0);
            this.mClickTv.setText(str);
        } else {
            this.mPositiveBtn.setVisibility(0);
            this.mPositiveBtn.setText(str);
        }
    }

    public void setNegativeBtnTitle(String str) {
        if (str == null) {
            if (WEBAPP_LAYOUT.equals(this.mLayoutType)) {
                this.mCancelView.setVisibility(8);
                return;
            } else {
                this.mNegativeBtn.setVisibility(8);
                return;
            }
        }
        if (WEBAPP_LAYOUT.equals(this.mLayoutType)) {
            this.mCancelView.setVisibility(0);
            this.mCancelTv.setText(str);
        } else {
            this.mNegativeBtn.setVisibility(0);
            this.mNegativeBtn.setText(str);
        }
    }

    public void setPopupViewListener(IPopupViewListener iPopupViewListener) {
        this.mListener = iPopupViewListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mListener != null) {
            this.mListener.onAttachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mListener != null) {
            this.mListener.onDetachedFromWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
            PopupViewManager.getInstance().dismissPopupWindows();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public void notifyStartDismiss() {
        if (this.mListener != null) {
            this.mListener.onPopupViewDismiss();
        }
    }
}
