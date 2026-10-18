.class public Lcom/tencent/wecarbase/immersive/StatusBarUtil;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "StatusBarUtil"

.field private static appDensity:F = 0.0f

.field private static appScaleDensity:F = 0.0f

.field private static hasSetDensity:Z = false

.field private static mAppDisplayMetrics:Landroid/util/DisplayMetrics; = null

.field private static mImmersive:Ljava/lang/String; = "0"

.field private static mNavigationBarHeight:I

.field private static mScaledTimes:F

.field private static mStatusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(F)F
    .locals 0

    .line 25
    sput p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->appScaleDensity:F

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->setCustomDensity(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static getAppDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    .line 306
    sget-object v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string v0, "StatusBarUtil"

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppDisplayMetrics. appDisplayMetrics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " scaledDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " densityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 168
    sget v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mNavigationBarHeight:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->hasSetDensity:Z

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mNavigationBarHeight:I

    .line 175
    :cond_0
    sget p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mNavigationBarHeight:I

    return p0
.end method

.method public static getPaddingBottom(Landroid/content/Context;)I
    .locals 2

    .line 389
    invoke-static {}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->isImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 390
    invoke-static {p0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getSoftKeyHeightIfVisible(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getPaddingRight(Landroid/content/Context;)I
    .locals 2

    .line 397
    invoke-static {}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->isImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 398
    invoke-static {p0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getSoftKeyHeightIfVisible(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getPaddingTop(Landroid/content/Context;)I
    .locals 1

    .line 381
    invoke-static {}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->isImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {p0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getRealDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    const-string v0, "window"

    .line 198
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 199
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 200
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static getScaledTimes()F
    .locals 8

    .line 281
    sget v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mScaledTimes:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 282
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 284
    invoke-static {v0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const-string v3, "StatusBarUtil"

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenHeight="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {v0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 288
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getScreenOrientation()I

    move-result v3

    .line 290
    invoke-static {}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->isImmersive()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 291
    invoke-static {v0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getSoftKeyHeightIfVisible(Landroid/content/Context;)I

    move-result v0

    int-to-float v4, v1

    sub-float v4, v2, v4

    const-string v5, "StatusBarUtil"

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "statusBarH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", navigationBarH="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", orientation="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StatusBarUtil"

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayHeight="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    div-float/2addr v4, v2

    .line 299
    sput v4, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mScaledTimes:F

    :cond_1
    const-string v0, "StatusBarUtil"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScaledTimes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mScaledTimes:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mScaledTimes:F

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 6

    const-string v0, "window"

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 208
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 209
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 210
    invoke-static {p0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int v2, v0, p0

    const-string v3, "StatusBarUtil"

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realSize.y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", display.getHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", navigationBarHeight="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", display.getHeight+navigationBarHeight="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 5

    const-string v0, "window"

    .line 218
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 221
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 222
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 223
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 224
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getScreenOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 225
    invoke-static {p0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getSoftKeyHeightIfVisible(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v0, p0

    :cond_0
    const-string p0, "StatusBarUtil"

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "realSize.x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", display.getWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", display.getWidth-navigationBarH="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getSoftKeyHeightIfVisible(Landroid/content/Context;)I
    .locals 1

    .line 194
    invoke-static {p0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 140
    sget v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mStatusBarHeight:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->hasSetDensity:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 141
    sput v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mStatusBarHeight:I

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mStatusBarHeight:I

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height_portrait"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mStatusBarHeight:I

    .line 152
    :cond_1
    :goto_0
    sget p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mStatusBarHeight:I

    return p0
.end method

.method public static isImmersive()Z
    .locals 2

    .line 319
    sget-object v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mImmersive:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mImmersive:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNavigationBarShow(Landroid/content/Context;)Z
    .locals 6

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    const-string v0, "window"

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 182
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 183
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 185
    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 186
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getScreenOrientation()I

    move-result p0

    const-string v3, "StatusBarUtil"

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". realSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p0, v3, :cond_0

    .line 188
    iget p0, v2, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-le p0, v0, :cond_1

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_0
    iget p0, v2, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static setAppDensity(Landroid/app/Application;)V
    .locals 4

    .line 330
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 332
    sget v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->appDensity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 334
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->appDensity:F

    .line 335
    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->appScaleDensity:F

    .line 338
    new-instance v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil$1;

    invoke-direct {v2, v0, p0, v1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil$1;-><init>(Landroid/content/res/Resources;Landroid/app/Application;Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0, v2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 354
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->setCustomDensity(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static setCommonUI(Landroid/app/Activity;Z)Z
    .locals 2

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v0, -0x2001

    .line 127
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 128
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized setCustomAppDensity(Landroid/app/Application;)V
    .locals 9

    const-class v0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "StatusBarUtil"

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "application="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 240
    invoke-static {v1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 241
    invoke-static {v1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    const-string v4, "StatusBarUtil"

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sceenHeight="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string p0, "StatusBarUtil"

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before. appDisplayMetrics="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n density="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " scaledDensity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " densityDpi="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-boolean p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->hasSetDensity:Z

    if-nez p0, :cond_2

    .line 250
    invoke-static {v1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    .line 251
    invoke-static {}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->isImmersive()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    mul-int/lit8 v2, p0, 0x4

    int-to-float v2, v2

    sub-float v2, v3, v2

    .line 253
    invoke-static {v1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getSoftKeyHeightIfVisible(Landroid/content/Context;)I

    move-result v1

    .line 254
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getScreenOrientation()I

    move-result v5

    const-string v6, "StatusBarUtil"

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "statusBarH="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", navigationBarH="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", orientation="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, v4, :cond_0

    int-to-float p0, v1

    sub-float/2addr v2, p0

    :cond_0
    div-float p0, v2, v3

    const-string v1, "StatusBarUtil"

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayHeight="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " scaledTimes="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v1, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p0

    .line 263
    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, p0

    .line 264
    sget-object v3, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    mul-float/2addr p0, v3

    .line 265
    sget-object v3, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iput v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 266
    sget-object v1, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 267
    sget-object v1, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    float-to-int p0, p0

    iput p0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 269
    :cond_1
    sput-boolean v4, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->hasSetDensity:Z

    :cond_2
    const-string p0, "StatusBarUtil"

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After. appDisplayMetrics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " scaledDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " densityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mAppDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 237
    monitor-exit v0

    throw p0
.end method

.method private static setCustomDensity(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 6

    .line 359
    invoke-static {}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->getScaledTimes()F

    move-result v0

    .line 360
    sget v1, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->appDensity:F

    mul-float/2addr v0, v1

    .line 361
    sget v1, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->appScaleDensity:F

    sget v2, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->appDensity:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const-string v3, "StatusBarUtil"

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "targetDensity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " targetScaleDensity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " targetDensityDpi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 369
    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 370
    iput v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 374
    iput v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 376
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    return-void
.end method

.method public static setImmersive(Landroid/view/Window;)V
    .locals 2

    .line 156
    invoke-static {}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->isImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x8000000

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/16 v0, 0x400

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setImmersive(Ljava/lang/String;)V
    .locals 0

    .line 323
    sput-object p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->mImmersive:Ljava/lang/String;

    return-void
.end method

.method public static setRootViewFitsSystemWindows(Landroid/app/Activity;Z)V
    .locals 2

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const v0, 0x1020002

    .line 83
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    :cond_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 2

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 38
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 40
    invoke-static {p0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->setTranslucentStatus(Landroid/app/Activity;)V

    .line 41
    new-instance v0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    const/4 p0, 0x1

    .line 42
    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 43
    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setStatusBarTintColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setStatusBarDarkTheme(Landroid/app/Activity;Z)Z
    .locals 3

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 100
    invoke-static {p0, p1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->setStatusBarFontIconDark(Landroid/app/Activity;Z)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static setStatusBarFontIconDark(Landroid/app/Activity;Z)Z
    .locals 0

    .line 113
    invoke-static {p0, p1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->setCommonUI(Landroid/app/Activity;Z)Z

    move-result p0

    return p0
.end method

.method public static setTranslucentStatus(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 64
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 68
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
