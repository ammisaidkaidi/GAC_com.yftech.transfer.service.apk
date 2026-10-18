.class public Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/immersive/SystemBarTintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarConfig"
.end annotation


# static fields
.field private static final NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final NAV_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAV_BAR_WIDTH_RES_NAME:Ljava/lang/String; = "navigation_bar_width"

.field private static final SHOW_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_showNavigationBar"

.field private static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"


# instance fields
.field private final mActionBarHeight:I

.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I

.field private final mNavigationBarWidth:I

.field private final mSmallestWidthDp:F

.field private final mStatusBarHeight:I

.field private final mTranslucentNavBar:Z

.field private final mTranslucentStatusBar:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 4

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    .line 360
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getSmallestWidthDp(Landroid/app/Activity;)F

    move-result v1

    iput v1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const-string v1, "status_bar_height"

    .line 361
    invoke-direct {p0, v0, v1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    .line 362
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    .line 363
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    .line 364
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    .line 365
    iget p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    if-lez p1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    .line 366
    iput-boolean p2, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    .line 367
    iput-boolean p3, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZLcom/tencent/wecarbase/immersive/SystemBarTintManager$1;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 373
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p0, v0, :cond_0

    .line 374
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10102eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 376
    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1

    const-string p0, "dimen"

    const-string v0, "android"

    .line 431
    invoke-virtual {p1, p2, p0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 433
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 385
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 386
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 388
    iget-boolean p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz p1, :cond_0

    const-string p1, "navigation_bar_height"

    goto :goto_0

    :cond_0
    const-string p1, "navigation_bar_height_landscape"

    .line 393
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getNavigationBarWidth(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 403
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "navigation_bar_width"

    .line 405
    invoke-direct {p0, v0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getSmallestWidthDp(Landroid/app/Activity;)F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 440
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 442
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 447
    :goto_0
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    .line 448
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    .line 449
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_showNavigationBar"

    const-string v1, "bool"

    const-string v2, "android"

    .line 414
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const-string p1, "1"

    .line 418
    invoke-static {}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 420
    invoke-static {}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    return v1

    .line 425
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 0

    .line 478
    iget p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    return p0
.end method

.method public getNavigationBarHeight()I
    .locals 0

    .line 497
    iget p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    return p0
.end method

.method public getNavigationBarWidth()I
    .locals 0

    .line 507
    iget p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    return p0
.end method

.method public getPixelInsetBottom()I
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPixelInsetRight()I
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPixelInsetTop(Z)I
    .locals 2

    .line 517
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 469
    iget p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    return p0
.end method

.method public hasNavigtionBar()Z
    .locals 0

    .line 487
    iget-boolean p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    return p0
.end method

.method public isNavigationAtBottom()Z
    .locals 2

    .line 460
    iget v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
