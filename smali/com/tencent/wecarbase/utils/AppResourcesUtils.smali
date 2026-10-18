.class public Lcom/tencent/wecarbase/utils/AppResourcesUtils;
.super Ljava/lang/Object;
.source "AppResourcesUtils.java"


# static fields
.field public static final RS_COLOR:Ljava/lang/String; = "color"

.field public static final RS_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final RS_STRING:Ljava/lang/String; = "string"

.field public static final SUFFIX_NIGHT_MODEL:Ljava/lang/String; = "_night"

.field public static final SUFFIX_PRESS_MODEL:Ljava/lang/String; = "_press"

.field private static final TAG:Ljava/lang/String; = "AppResourcesUtils"

.field private static mContext:Landroid/content/Context;

.field private static mInflater:Landroid/view/LayoutInflater;

.field private static mPackageName:Ljava/lang/String;

.field private static mResIdInPressMap:Landroid/util/SparseIntArray;

.field private static mResIdMap:Landroid/util/SparseIntArray;

.field private static mResources:Landroid/content/res/Resources;

.field private static mStyle:Lcom/tencent/wecarbase/utils/SkinStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/tencent/wecarbase/utils/SkinStyle;->DAY:Lcom/tencent/wecarbase/utils/SkinStyle;

    sput-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mStyle:Lcom/tencent/wecarbase/utils/SkinStyle;

    .line 48
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdInPressMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCacheResId()V
    .locals 1

    .line 127
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 128
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdInPressMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public static dp2px(I)I
    .locals 3

    .line 459
    :try_start_0
    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    .line 460
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    int-to-float p0, p0

    .line 461
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    .line 462
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 461
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0

    .line 464
    :cond_0
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mContext:Landroid/content/Context;

    .line 465
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 466
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    .line 468
    :cond_1
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    int-to-float p0, p0

    .line 469
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    .line 470
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 469
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p0, p0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "AppResourcesUtils"

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 325
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 330
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static getBoolean(I)Z
    .locals 2

    .line 266
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 271
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p0, v1

    :goto_0
    return p0
.end method

.method public static getColor(I)I
    .locals 1

    .line 183
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mStyle:Lcom/tencent/wecarbase/utils/SkinStyle;

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(ILcom/tencent/wecarbase/utils/SkinStyle;)I

    move-result p0

    return p0
.end method

.method private static getColor(ILcom/tencent/wecarbase/utils/SkinStyle;)I
    .locals 4

    .line 187
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 190
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/utils/SkinStyle;->NIGHT:Lcom/tencent/wecarbase/utils/SkinStyle;

    if-ne p1, v0, :cond_4

    .line 191
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {p0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getResourceNameById(I)Ljava/lang/String;

    move-result-object p1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_night"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const-string v2, "color"

    sget-object v3, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 199
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move p0, p1

    .line 206
    :cond_4
    :goto_1
    :try_start_0
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move p0, v1

    :goto_2
    return p0
.end method

.method public static getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    .line 279
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mStyle:Lcom/tencent/wecarbase/utils/SkinStyle;

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColorStateList(ILcom/tencent/wecarbase/utils/SkinStyle;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private static getColorStateList(ILcom/tencent/wecarbase/utils/SkinStyle;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 283
    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 287
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/utils/SkinStyle;->NIGHT:Lcom/tencent/wecarbase/utils/SkinStyle;

    if-ne p1, v0, :cond_4

    .line 288
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    invoke-static {p0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getResourceNameById(I)Ljava/lang/String;

    move-result-object p1

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_night"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const-string v2, "drawable"

    sget-object v3, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 296
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move p0, p1

    .line 305
    :cond_4
    :goto_1
    :try_start_0
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object p0, v1

    :goto_2
    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 112
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mContext:Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public static getDimension(I)I
    .locals 2

    .line 240
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 245
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int v1, p0

    :catch_0
    return v1
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 144
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mStyle:Lcom/tencent/wecarbase/utils/SkinStyle;

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getDrawable(ILcom/tencent/wecarbase/utils/SkinStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getDrawable(ILcom/tencent/wecarbase/utils/SkinStyle;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 148
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 151
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/utils/SkinStyle;->NIGHT:Lcom/tencent/wecarbase/utils/SkinStyle;

    if-ne p1, v0, :cond_4

    .line 152
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v0, :cond_2

    :cond_1
    move p0, p1

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {p0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getResourceNameById(I)Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_night"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const-string v2, "drawable"

    sget-object v3, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 160
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    if-nez p1, :cond_1

    .line 168
    :cond_4
    :goto_0
    :try_start_0
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p0, v1

    :goto_1
    return-object p0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 422
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 426
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mStyle:Lcom/tencent/wecarbase/utils/SkinStyle;

    sget-object v2, Lcom/tencent/wecarbase/utils/SkinStyle;->NIGHT:Lcom/tencent/wecarbase/utils/SkinStyle;

    if-ne v0, v2, :cond_1

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_night"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 429
    :goto_0
    sget-object v2, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    sget-object v4, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 431
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const-string v2, "drawable"

    sget-object v3, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 435
    :cond_2
    :try_start_0
    sget-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p0, v1

    :goto_1
    return-object p0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public static getDrawableSelector(ILcom/tencent/wecarbase/utils/SkinStyle;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    .line 488
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 491
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 494
    :try_start_0
    invoke-static {p0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getResourceNameById(I)Ljava/lang/String;

    move-result-object v2

    .line 495
    sget-object v3, Lcom/tencent/wecarbase/utils/SkinStyle;->DAY:Lcom/tencent/wecarbase/utils/SkinStyle;

    const/4 v4, -0x1

    if-ne p1, v3, :cond_1

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_press"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 500
    :cond_1
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v4, :cond_2

    if-eqz p1, :cond_2

    move p0, p1

    goto :goto_1

    .line 506
    :cond_2
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_night"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "drawable"

    sget-object v6, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_3

    move v3, p1

    goto :goto_0

    :cond_3
    move v3, p0

    .line 513
    :goto_0
    sget-object v5, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    move p0, v3

    .line 515
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_press"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_night"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 519
    :goto_2
    sget-object v2, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdInPressMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v4, :cond_4

    if-eqz v2, :cond_4

    goto :goto_5

    .line 525
    :cond_4
    sget-object v2, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    sget-object v5, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    move v2, p1

    goto :goto_4

    :cond_6
    :goto_3
    move v2, p0

    .line 529
    :goto_4
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdInPressMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 531
    :goto_5
    sget-object p1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-ne v2, p0, :cond_8

    .line 535
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 537
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/16 v4, 0x7f

    if-ge v2, v3, :cond_7

    .line 538
    invoke-static {p0, v4}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getDrawableWithSpecAlpha(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_6

    .line 540
    :cond_7
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_6

    .line 543
    :cond_8
    sget-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_6
    const/4 v2, 0x2

    .line 545
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    .line 546
    new-array p0, p0, [I

    const v2, 0x101009e

    const/4 v3, 0x0

    aput v2, p0, v3

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 547
    new-array p0, v3, [I

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-object v0, v1

    :goto_7
    return-object v0

    :cond_9
    :goto_8
    return-object v1

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private static getDrawableWithSpecAlpha(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 556
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 558
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 559
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 560
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 561
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 562
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object p0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "AppResourcesUtils"

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getId  name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-type:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -packageName:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInteger(I)I
    .locals 1

    .line 176
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 179
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private static getResourceNameById(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 133
    sget-object v1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 135
    :try_start_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 2

    .line 314
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 315
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    .line 318
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    .line 321
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static getSdkId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 73
    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .line 214
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 219
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 227
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 232
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 443
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 447
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const-string v2, "string"

    sget-object v3, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 450
    :try_start_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v1

    :goto_0
    return-object p0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .locals 2

    .line 253
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 258
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static getStyle()Lcom/tencent/wecarbase/utils/SkinStyle;
    .locals 1

    .line 123
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mStyle:Lcom/tencent/wecarbase/utils/SkinStyle;

    return-object v0
.end method

.method public static final getStyleableIntArray(Ljava/lang/String;)[I
    .locals 3

    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".R$styleable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static final getStyleableIntArrayIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 102
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".R$styleable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 338
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .line 342
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mContext:Landroid/content/Context;

    .line 67
    sget-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResources:Landroid/content/res/Resources;

    .line 68
    sget-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mPackageName:Ljava/lang/String;

    .line 69
    sget-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sput-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static loadAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    .line 346
    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static loadInterpolator(I)Landroid/view/animation/Interpolator;
    .locals 1

    .line 350
    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public static loadLayoutAnimation(I)Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .line 354
    invoke-static {}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object p0

    return-object p0
.end method

.method public static setBackground(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 361
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 362
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static setBackgroundColor(Landroid/view/View;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static setColorFilter(Landroid/widget/ImageView;I)V
    .locals 0

    .line 418
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public static setHintTextColor(Landroid/widget/TextView;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    return-void
.end method

.method public static setImageSelector(Landroid/widget/ImageView;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 484
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mStyle:Lcom/tencent/wecarbase/utils/SkinStyle;

    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getDrawableSelector(ILcom/tencent/wecarbase/utils/SkinStyle;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setImageSrc(Landroid/widget/ImageView;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 372
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setProgressDrawableSrc(Landroid/widget/ProgressBar;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static setStyle(Lcom/tencent/wecarbase/utils/SkinStyle;)V
    .locals 1

    .line 117
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 118
    sget-object v0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mResIdInPressMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 119
    sput-object p0, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->mStyle:Lcom/tencent/wecarbase/utils/SkinStyle;

    return-void
.end method

.method public static setTextColor(Landroid/widget/Button;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 393
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static setTextColorSelector(Landroid/widget/TextView;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
