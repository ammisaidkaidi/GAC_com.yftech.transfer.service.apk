.class public Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;
.super Ljava/lang/Object;
.source "PopupViewManager.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final EVENT_CLOSE_POP_VIEW:I = 0x3e8

.field private static final EVENT_START_ANIMATION:I = 0x7d0

.field private static final POP_VIEW_CLOSE_DELAY:I = 0x1388

.field private static final WEB_APP_POP_VIEW_CLOSE_DELAY:I = 0x1f40

.field private static sInstance:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isPopupWindowShow:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLinearLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

.field private mPopupViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;",
            ">;"
        }
    .end annotation
.end field

.field private mRootViewGroup:Landroid/widget/LinearLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowManager:Landroid/view/WindowManager;

    .line 52
    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 53
    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mLinearLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z

    .line 66
    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)Landroid/view/WindowManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->removeAllViewInner()V

    return-void
.end method

.method private assertUIThread()V
    .locals 1

    .line 371
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    .line 372
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "\u9700\u8981\u5728UI\u7ebf\u7a0b\u8fdb\u884c\u6b64\u51fd\u6570\u8c03\u7528"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createPopupViewLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    .locals 2

    .line 356
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setTitle(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, p2}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setPostiveBtnTitle(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p3}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setNegativeBtnTitle(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, p4}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setPopupViewListener(Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)V

    .line 363
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private createPopupViewPark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPopupViewPark"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    const-string v2, "park"

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setTitle(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, p2}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setDetail(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, p3}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setBottomBarLogoName(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, p4}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setBottomBarLogo(Ljava/lang/Integer;)V

    .line 347
    invoke-virtual {v0, p3}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setBottomBarVisibility(Ljava/lang/String;)V

    .line 350
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private createPopupViewWebApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPopupViewWebApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    const-string v2, "web_app"

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x64

    if-le p3, v1, :cond_0

    .line 315
    new-instance v1, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$2;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$2;-><init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)V

    invoke-virtual {v0, p3, v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setTimeShow(ILcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object p3, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x1388

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 324
    :goto_0
    invoke-virtual {v0, p6}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setPopupViewListener(Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)V

    .line 325
    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setTitle(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p2}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setDetail(Ljava/lang/String;)V

    .line 327
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_1

    .line 328
    invoke-virtual {v0, p4}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setPostiveBtnTitle(Ljava/lang/String;)V

    .line 329
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 330
    invoke-virtual {v0, p5}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setWebAppIcon(Ljava/lang/String;)V

    .line 331
    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private createRootViewGroup(Landroid/content/Context;)V
    .locals 1

    .line 413
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    .line 414
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 415
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mScreenHeight:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 416
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mScreenWidth:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 417
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 418
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 419
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$4;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$4;-><init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    return-object p0

    .line 131
    :cond_0
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$1;-><init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    .line 155
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;
    .locals 2

    .line 40
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->sInstance:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->sInstance:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    invoke-direct {v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->sInstance:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->sInstance:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    return-object v0
.end method

.method private removeAllViewInner()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    const-string v1, "slide_down"

    const-string v2, "anim"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 379
    new-instance v1, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$3;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$3;-><init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 397
    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->notifyStartDismiss()V

    .line 399
    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    invoke-virtual {v1, v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 402
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 403
    iput-object v2, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z

    .line 408
    iput-object v2, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public declared-synchronized dismissPopupWindows()V
    .locals 2

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    const-string v1, "dismissPopupWindows"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->removeAllViewInner()V

    goto :goto_1

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    const-string v1, "PopupView should not be null"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 289
    monitor-exit p0

    throw v0
.end method

.method public getCurrentPopupView()Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    return-object p0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 73
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getHandler()Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowManager:Landroid/view/WindowManager;

    .line 79
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mScreenHeight:I

    .line 86
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mScreenWidth:I

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 89
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 90
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/tencent/wecarbase/compat/ViewCompatProxy;->getWindowOverlayType()I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 91
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1000020

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 93
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800035

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mLinearLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez p1, :cond_2

    .line 101
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mLinearLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :cond_2
    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 70
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "context can not be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method

.method public isInit()Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPopupWindowShow()Z
    .locals 0

    .line 306
    iget-boolean p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z

    return p0
.end method

.method public setPopupViewLayout(I)V
    .locals 0

    .line 119
    invoke-static {p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setLayoutResId(I)V

    return-void
.end method

.method public declared-synchronized showPopupWebAppAutoClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    .locals 12

    move-object v11, p0

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, v11, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPopupWebAppAutoClose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, v11, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getHandler()Landroid/os/Handler;

    .line 168
    :cond_0
    iget-object v0, v11, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v4, 0x0

    const-string v6, "web_app"

    const/16 v7, 0x1f40

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move-object v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 171
    invoke-virtual/range {v1 .. v10}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->showPopupWindowWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 162
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;",
            ")",
            "Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;"
        }
    .end annotation

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object p4, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    const-string p5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p4, p5}, Lcom/tencent/wecarbase/compat/PermissionCompat;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    const/4 p5, 0x0

    if-nez p4, :cond_0

    .line 257
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    const-string p2, "Check SYSTEM_ALERT_WINDOW permission failed!"

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-object p5

    .line 261
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->assertUIThread()V

    .line 262
    iget-boolean p4, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z

    if-eqz p4, :cond_1

    .line 264
    iget-object p4, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 268
    :cond_1
    iget-object p4, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    if-nez p4, :cond_2

    .line 269
    iget-object p4, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p4}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->createRootViewGroup(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->createPopupViewLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    .line 274
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    iget-object p3, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mLinearLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x7d0

    iget-object p3, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 278
    iget-object p2, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 281
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    :goto_0
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object p5, p1

    check-cast p5, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p5

    :catchall_0
    move-exception p1

    .line 255
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showPopupWindowParkAutoClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    .locals 10

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPopupWindowParkAutoClose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getHandler()Landroid/os/Handler;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v9, "park"

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 192
    invoke-virtual/range {v4 .. v9}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->showPopupWindowWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 182
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showPopupWindowWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    .locals 10

    monitor-enter p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 200
    :try_start_0
    invoke-virtual/range {v0 .. v9}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->showPopupWindowWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showPopupWindowWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    .locals 10

    move-object v8, p0

    move-object v0, p1

    move-object v1, p5

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPopupWindowWithType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/compat/PermissionCompat;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 212
    iget-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Check SYSTEM_ALERT_WINDOW permission failed!"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-object v9

    .line 216
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->assertUIThread()V

    .line 217
    iget-boolean v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 221
    :cond_1
    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    const-string v3, "isPopupWindowShow"

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    if-nez v2, :cond_2

    .line 225
    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->createRootViewGroup(Landroid/content/Context;)V

    .line 227
    :cond_2
    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    const-string v3, "createRootViewGroup"

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "park"

    .line 230
    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->createPopupViewPark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    move-result-object v0

    iput-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    goto :goto_0

    :cond_3
    const-string v2, "web_app"

    .line 232
    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 233
    invoke-direct/range {v1 .. v7}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->createPopupViewWebApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    move-result-object v0

    iput-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    goto :goto_0

    .line 235
    :cond_4
    invoke-direct {p0, p1, v9, v9, v9}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->createPopupViewLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/popupview/IPopupViewListener;)Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    move-result-object v0

    iput-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    .line 237
    :goto_0
    iget-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mLinearLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setVisibility(I)V

    .line 239
    iget-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mRootViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    iget-object v2, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupView:Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 241
    iget-object v1, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->isPopupWindowShow:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 244
    :try_start_3
    iget-object v1, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->TAG:Ljava/lang/String;

    const-string v2, "Show popup window failed:"

    invoke-static {v1, v2, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    :goto_1
    iget-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, v8, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->mPopupViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v9

    :catchall_0
    move-exception v0

    .line 209
    monitor-exit p0

    throw v0
.end method
