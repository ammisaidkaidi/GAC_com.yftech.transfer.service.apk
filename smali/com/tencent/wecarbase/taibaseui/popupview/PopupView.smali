.class public Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
.super Landroid/widget/FrameLayout;
.source "PopupView.java"


# static fields
.field public static final DEFAULT_LAYOUT:Ljava/lang/String; = "default"

.field public static final PARK_LAYOUT:Ljava/lang/String; = "park"

.field public static final WEBAPP_LAYOUT:Ljava/lang/String; = "web_app"

.field private static mLayoutMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBottomBar:Landroid/view/View;

.field private mBottomBarLogo:Landroid/widget/ImageView;

.field private mBottomBarLogoName:Landroid/widget/TextView;

.field private mCancelIv:Landroid/widget/ImageView;

.field private mCancelTv:Landroid/widget/TextView;

.field private mCancelView:Landroid/widget/LinearLayout;

.field private mClickIv:Landroid/widget/ImageView;

.field private mClickTv:Landroid/widget/TextView;

.field private mClickView:Landroid/widget/LinearLayout;

.field private mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

.field private mDetail:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mLayout:Ljava/lang/Integer;

.field private mLayoutType:Ljava/lang/String;

.field private mListener:Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

.field private mNegativeBtn:Landroid/widget/Button;

.field mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mPositiveBtn:Landroid/widget/Button;

.field private mRemoteView:Landroid/widget/LinearLayout;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutMap:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->TAG:Ljava/lang/String;

    const-string p1, "wbsdk_layout_popup_view"

    const-string v0, "layout"

    .line 46
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayout:Ljava/lang/Integer;

    const-string p1, "default"

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    .line 211
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 213
    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    new-instance v0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 214
    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    const-string v0, "tai_pop_common_status_bar_header"

    const-string v1, "drawable"

    .line 215
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 72
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->TAG:Ljava/lang/String;

    const-string p1, "wbsdk_layout_popup_view"

    const-string p2, "layout"

    .line 46
    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayout:Ljava/lang/Integer;

    const-string p1, "default"

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    .line 211
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 p2, 0x1

    .line 212
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 213
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    new-instance p2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 214
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    const-string p2, "tai_pop_common_status_bar_header"

    const-string v0, "drawable"

    .line 215
    invoke-static {p2, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 89
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->TAG:Ljava/lang/String;

    const-string p1, "wbsdk_layout_popup_view"

    const-string p2, "layout"

    .line 46
    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayout:Ljava/lang/Integer;

    const-string p1, "default"

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    .line 211
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 p2, 0x1

    .line 212
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 213
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    new-instance p2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 214
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    const-string p2, "tai_pop_common_status_bar_header"

    const-string p3, "drawable"

    .line 215
    invoke-static {p2, p3}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 94
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->TAG:Ljava/lang/String;

    const-string p1, "wbsdk_layout_popup_view"

    const-string p2, "layout"

    .line 46
    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayout:Ljava/lang/Integer;

    const-string p1, "default"

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    .line 211
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 p2, 0x1

    .line 212
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 213
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    new-instance p2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 214
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    const-string p2, "tai_pop_common_status_bar_header"

    const-string p3, "drawable"

    .line 215
    invoke-static {p2, p3}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 100
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->TAG:Ljava/lang/String;

    const-string p1, "wbsdk_layout_popup_view"

    const-string v0, "layout"

    .line 46
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayout:Ljava/lang/Integer;

    const-string p1, "default"

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    .line 211
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 213
    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    new-instance v0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 214
    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    const-string v0, "tai_pop_common_status_bar_header"

    const-string v1, "drawable"

    .line 215
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 78
    sget-object p1, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    .line 80
    sget-object p1, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayout:Ljava/lang/Integer;

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mListener:Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget-object v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutMap:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "park"

    .line 107
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "popup_view_title"

    const-string v0, "id"

    .line 108
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mTitle:Landroid/widget/TextView;

    const-string p1, "popup_view_detail"

    const-string v0, "id"

    .line 109
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDetail:Landroid/widget/TextView;

    const-string p1, "popup_view_bottom_bar"

    const-string v0, "id"

    .line 110
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mBottomBar:Landroid/view/View;

    const-string p1, "popup_view_bottom_bar_logo"

    const-string v0, "id"

    .line 111
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mBottomBarLogo:Landroid/widget/ImageView;

    const-string p1, "popup_view_bottom_bar_logo_name"

    const-string v0, "id"

    .line 112
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mBottomBarLogoName:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const-string p1, "web_app"

    .line 113
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->initWebAppView()V

    goto :goto_0

    :cond_1
    const-string p1, "popup_view_title"

    const-string v0, "id"

    .line 116
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mTitle:Landroid/widget/TextView;

    const-string p1, "popup_view_positive_btn"

    const-string v0, "id"

    .line 117
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mPositiveBtn:Landroid/widget/Button;

    .line 118
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mPositiveBtn:Landroid/widget/Button;

    new-instance v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$2;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$2;-><init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "popup_view_negative_btn"

    const-string v0, "id"

    .line 126
    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mNegativeBtn:Landroid/widget/Button;

    .line 127
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mNegativeBtn:Landroid/widget/Button;

    new-instance v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$3;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$3;-><init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private initImageLoader()V
    .locals 4

    .line 176
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->isInited()Z

    move-result p0

    if-nez p0, :cond_0

    .line 177
    new-instance p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x200000

    .line 178
    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p0

    const/16 v0, 0x64

    .line 179
    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p0

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    .line 180
    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x7530

    const v3, 0x1d4c0

    invoke-direct {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object p0

    .line 183
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    :cond_0
    return-void
.end method

.method private initWebAppView()V
    .locals 2

    const-string v0, "n_notification_layout"

    const-string v1, "id"

    .line 145
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mRemoteView:Landroid/widget/LinearLayout;

    const-string v0, "tai_notification_title"

    const-string v1, "id"

    .line 146
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mTitle:Landroid/widget/TextView;

    const-string v0, "address"

    const-string v1, "id"

    .line 147
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDetail:Landroid/widget/TextView;

    const-string v0, "tai_app_icon"

    const-string v1, "id"

    .line 148
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mIconView:Landroid/widget/ImageView;

    const-string v0, "tai_notification_click_layout"

    const-string v1, "id"

    .line 149
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickView:Landroid/widget/LinearLayout;

    .line 150
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$4;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$4;-><init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tai_notification_cancel_layout"

    const-string v1, "id"

    .line 157
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mCancelView:Landroid/widget/LinearLayout;

    .line 158
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mCancelView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$5;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView$5;-><init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tai_notification_click_iv"

    const-string v1, "id"

    .line 165
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickIv:Landroid/widget/ImageView;

    const-string v0, "tai_notification_cancel_iv"

    const-string v1, "id"

    .line 166
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mCancelIv:Landroid/widget/ImageView;

    const-string v0, "tai_notification_click_tv"

    const-string v1, "id"

    .line 167
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickTv:Landroid/widget/TextView;

    const-string v0, "tai_notification_cancel_tv"

    const-string v1, "id"

    .line 168
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mCancelTv:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mCancelView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "tai_notification_delay_close_view"

    const-string v1, "id"

    .line 170
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    .line 171
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->updateStyle()V

    .line 172
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->initImageLoader()V

    return-void
.end method

.method public static setLayoutResId(I)V
    .locals 2

    .line 67
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "default"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateStyle()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickIv:Landroid/widget/ImageView;

    const-string v1, "tai_pop_status_bar_tip_click"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setBackground(Landroid/view/View;I)V

    .line 189
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mRemoteView:Landroid/widget/LinearLayout;

    const-string v1, "tai_pop_status_bar_bg_normal"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setBackground(Landroid/view/View;I)V

    .line 193
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickIv:Landroid/widget/ImageView;

    const-string v1, "tai_pop_status_bar_tip_click_image"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setImageSrc(Landroid/widget/ImageView;I)V

    .line 194
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    const-string v1, "tai_push_maphome_tip_click_color"

    const-string v2, "color"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result v1

    const-string v2, "white"

    const-string v3, "color"

    .line 195
    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result v2

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->setRingColor(II)V

    .line 197
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickTv:Landroid/widget/TextView;

    const-string v1, "tai_push_maphome_tip_click_color"

    const-string v2, "color"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setTextColor(Landroid/widget/TextView;I)V

    .line 198
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mTitle:Landroid/widget/TextView;

    const-string v1, "tai_push_notify_text_color"

    const-string v2, "color"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setTextColor(Landroid/widget/TextView;I)V

    .line 199
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDetail:Landroid/widget/TextView;

    const-string v0, "tai_push_notify_address_text_color"

    const-string v1, "color"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->setTextColor(Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 323
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 324
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->dismissPopupWindows()V

    .line 326
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    const-string v0, "tai_pop_common_status_bar_header"

    const-string v1, "drawable"

    .line 218
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, p2, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method

.method public notifyStartDismiss()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mListener:Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mListener:Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    invoke-interface {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;->onPopupViewDismiss()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 309
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 310
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mListener:Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mListener:Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    invoke-interface {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 316
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 317
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mListener:Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mListener:Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    invoke-interface {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public setBottomBarLogo(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 226
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mBottomBarLogo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setBottomBarLogoName(Ljava/lang/String;)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mBottomBarLogoName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBottomBarVisibility(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 261
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mBottomBar:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mBottomBar:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDetail:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDetailVisibility(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 253
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDetail:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDetail:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setNegativeBtnTitle(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "web_app"

    .line 287
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 288
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mCancelView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mNegativeBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "web_app"

    .line 292
    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mCancelView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mCancelTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mNegativeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mNegativeBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setPopupViewListener(Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mListener:Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;

    return-void
.end method

.method public setPostiveBtnTitle(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "web_app"

    .line 270
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 271
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "web_app"

    .line 275
    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mLayoutType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mClickTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTimeShow(ILcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    if-eqz v0, :cond_0

    .line 204
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mDelayCloseView:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    invoke-virtual {p0, p2, p1}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->setOnCountDownListener(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWebAppIcon(Ljava/lang/String;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
