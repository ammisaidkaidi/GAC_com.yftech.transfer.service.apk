.class public Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;
.super Ljava/lang/Object;
.source "NaviNotifyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$LazyHolder;
    }
.end annotation


# static fields
.field private static final DELAY_MIS:I = 0x2710

.field private static final MSG_CANCEL:I = 0x92

.field private static TAG:Ljava/lang/String; = "NaviNotifyView"


# instance fields
.field private mAddressView:Landroid/widget/TextView;

.field private mCancelIv:Landroid/widget/ImageView;

.field private mCancelTv:Landroid/widget/TextView;

.field private mCancelView:Landroid/widget/LinearLayout;

.field private mClickIv:Landroid/widget/ImageView;

.field private mClickTv:Landroid/widget/TextView;

.field private mClickView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

.field private mHandler:Lcom/tencent/wecarbase/common/UIHandler;

.field private mIconView:Landroid/widget/ImageView;

.field private mMainView:Landroid/view/View;

.field private mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mRemoteView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$5;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$5;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 241
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$6;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$6;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mHandler:Lcom/tencent/wecarbase/common/UIHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;
    .locals 1

    .line 44
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$LazyHolder;->access$100()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    move-result-object v0

    return-object v0
.end method

.method private updateStyle()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mRemoteView:Landroid/view/View;

    const-string v1, "tai_pop_status_bar_bg_normal"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setBackground(Landroid/view/View;I)V

    .line 257
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickIv:Landroid/widget/ImageView;

    const-string v1, "tai_pop_status_bar_tip_click"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setBackground(Landroid/view/View;I)V

    .line 258
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelIv:Landroid/widget/ImageView;

    const-string v1, "tai_pop_status_bar_tip_close_click_image"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setImageSrc(Landroid/widget/ImageView;I)V

    .line 259
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelIv:Landroid/widget/ImageView;

    const-string v1, "tai_pop_status_bar_tip_close_click"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setBackground(Landroid/view/View;I)V

    .line 260
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelTv:Landroid/widget/TextView;

    const-string v1, "tai_push_maphome_tip_close_text_color"

    const-string v2, "color"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setTextColor(Landroid/widget/TextView;I)V

    .line 261
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickIv:Landroid/widget/ImageView;

    const-string v1, "tai_pop_status_bar_tip_click_image"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setImageSrc(Landroid/widget/ImageView;I)V

    .line 262
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    const-string v1, "tai_push_maphome_tip_click_color"

    const-string v2, "color"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result v1

    const-string v2, "white"

    const-string v3, "color"

    .line 263
    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result v2

    .line 262
    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->setRingColor(II)V

    .line 265
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickTv:Landroid/widget/TextView;

    const-string v1, "tai_push_maphome_tip_click_color"

    const-string v2, "color"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setTextColor(Landroid/widget/TextView;I)V

    .line 266
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mTitleView:Landroid/widget/TextView;

    const-string v1, "tai_push_notify_text_color"

    const-string v2, "color"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setTextColor(Landroid/widget/TextView;I)V

    .line 267
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mAddressView:Landroid/widget/TextView;

    const-string v0, "tai_push_notify_address_text_color"

    const-string v1, "color"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setTextColor(Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method public clickCancelBtn()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarbase/utils/ClickUtils;->isSingleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;->onCancelClick(Landroid/view/View;)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->hide()Z

    .line 203
    sget-object p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->TAG:Ljava/lang/String;

    const-string v0, "NotifyView:rev cmd cancel"

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clickGoBtn()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarbase/utils/ClickUtils;->isSingleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;->onGoClick(Landroid/view/View;)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->hide()Z

    .line 195
    sget-object p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->TAG:Ljava/lang/String;

    const-string v0, "NotifyView:rev cmd ok"

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hide()Z
    .locals 2

    .line 173
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->TAG:Ljava/lang/String;

    const-string v1, "NaviNotifyView hide"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mHandler:Lcom/tencent/wecarbase/common/UIHandler;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/UIHandler;->removeMessages(I)V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    invoke-interface {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;->onNotificationHide()V

    :cond_0
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    const/4 p0, 0x1

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 51
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mContext:Landroid/content/Context;

    .line 52
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "tai_view_notify"

    const-string v1, "layout"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    .line 53
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 54
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_nofity_remote_view"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mRemoteView:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_app_icon"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mIconView:Landroid/widget/ImageView;

    .line 56
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_notification_title"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mTitleView:Landroid/widget/TextView;

    .line 57
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "address"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mAddressView:Landroid/widget/TextView;

    .line 58
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_notification_click_layout"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickView:Landroid/widget/LinearLayout;

    .line 59
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_notification_cancel_layout"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelView:Landroid/widget/LinearLayout;

    .line 60
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_notification_click_iv"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickIv:Landroid/widget/ImageView;

    .line 61
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_notification_cancel_iv"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelIv:Landroid/widget/ImageView;

    .line 62
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_notification_click_tv"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickTv:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_notification_cancel_tv"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelTv:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const-string v0, "tai_notification_delay_close_view"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    .line 65
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mWindowManager:Landroid/view/WindowManager;

    .line 69
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 70
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7d3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 71
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x3

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public setDismissTime(I)V
    .locals 6

    .line 209
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyView:set time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    new-instance v1, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$4;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$4;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)V

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, v1, p1}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->setOnCountDownListener(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mHandler:Lcom/tencent/wecarbase/common/UIHandler;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/UIHandler;->removeMessages(I)V

    .line 219
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mHandler:Lcom/tencent/wecarbase/common/UIHandler;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/wecarbase/common/UIHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public setOnNotifyListener(Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mNotifyListener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    return-object p0
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->init(Landroid/content/Context;)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->updateStyle()V

    .line 134
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mAddressView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u201d"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mHandler:Lcom/tencent/wecarbase/common/UIHandler;

    const/16 p2, 0x92

    invoke-virtual {p1, p2}, Lcom/tencent/wecarbase/common/UIHandler;->removeMessages(I)V

    .line 158
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mHandler:Lcom/tencent/wecarbase/common/UIHandler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Lcom/tencent/wecarbase/common/UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    new-instance p2, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$3;

    invoke-direct {p2, p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$3;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    iget-object p3, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object p0
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->init(Landroid/content/Context;)V

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->updateStyle()V

    .line 85
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mAddressView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickTv:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u201c"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u201d"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelTv:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u201c"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u201d"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mClickView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mCancelView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    new-instance p2, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$1;

    invoke-direct {p2, p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$1;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)V

    const/16 p3, 0x2710

    invoke-virtual {p1, p2, p3}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->setOnCountDownListener(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;I)V

    .line 116
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    new-instance p2, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$2;

    invoke-direct {p2, p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$2;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mMainView:Landroid/view/View;

    iget-object p3, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p0
.end method
