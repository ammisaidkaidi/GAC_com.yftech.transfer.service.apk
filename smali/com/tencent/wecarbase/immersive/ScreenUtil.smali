.class public Lcom/tencent/wecarbase/immersive/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# static fields
.field private static mDPI:I

.field private static mDensity:F

.field private static mHeightPixels:I

.field private static mMapDensity:F

.field private static mStatusBarHeight:I

.field private static mWidthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(F)I
    .locals 1

    .line 141
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getDensity()F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static dip2px(I)I
    .locals 1

    .line 131
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getDensity()F

    move-result v0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 2

    .line 30
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the context in TNSdkManager is null ,you may have not init the SDK"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDPI()I
    .locals 2

    .line 78
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mDPI:I

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 82
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mDensity:F

    .line 83
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mDPI:I

    .line 86
    :cond_0
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mDPI:I

    return v0
.end method

.method public static getDensity()F
    .locals 2

    .line 38
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 42
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mDensity:F

    .line 43
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mDPI:I

    .line 44
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mHeightPixels:I

    .line 45
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mWidthPixels:I

    .line 48
    :cond_0
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mDensity:F

    return v0
.end method

.method public static getHeightPixels()I
    .locals 1

    .line 101
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mHeightPixels:I

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 105
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mHeightPixels:I

    .line 108
    :cond_0
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mHeightPixels:I

    return v0
.end method

.method public static getMapDensity()F
    .locals 2

    .line 59
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mMapDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->initMapDensity()F

    .line 62
    :cond_0
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mMapDensity:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getScreenOrientation()I
    .locals 1

    .line 159
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getStatusBarHeight()I
    .locals 4

    .line 112
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mStatusBarHeight:I

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    .line 116
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "status_bar_height"

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mStatusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :catch_0
    :cond_0
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mStatusBarHeight:I

    return v0
.end method

.method public static getWidthPixels()I
    .locals 1

    .line 90
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mWidthPixels:I

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 94
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mWidthPixels:I

    .line 97
    :cond_0
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mWidthPixels:I

    return v0
.end method

.method public static initMapDensity()F
    .locals 2

    .line 66
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mMapDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 70
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mMapDensity:F

    .line 73
    :cond_0
    sget v0, Lcom/tencent/wecarbase/immersive/ScreenUtil;->mMapDensity:F

    return v0
.end method

.method public static isHDPI()Z
    .locals 2

    .line 52
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getMapDensity()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static percentHeight(F)I
    .locals 1

    .line 151
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getHeightPixels()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static percentWidth(F)I
    .locals 1

    .line 155
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getWidthPixels()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static px2dip(F)I
    .locals 2

    .line 145
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getDensity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr p0, v0

    add-float/2addr p0, v1

    float-to-int p0, p0

    return p0
.end method

.method public static px2dip(I)I
    .locals 2

    .line 135
    invoke-static {}, Lcom/tencent/wecarbase/immersive/ScreenUtil;->getDensity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    int-to-float p0, p0

    div-float/2addr p0, v0

    add-float/2addr p0, v1

    float-to-int p0, p0

    return p0
.end method
