.class public Lcom/tencent/wecarbase/immersive/SystemBarTintManager;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;
    }
.end annotation


# static fields
.field public static final DEFAULT_TINT_COLOR:I = -0x67000000

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

.field private mNavBarAvailable:Z

.field private mNavBarTintEnabled:Z

.field private mNavBarTintView:Landroid/view/View;

.field private mStatusBarAvailable:Z

.field private mStatusBarTintEnabled:Z

.field private mStatusBarTintView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 37
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 38
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    sput-object v0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x13

    if-lt v2, v4, :cond_1

    const/4 v2, 0x2

    .line 78
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 80
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 82
    :try_start_0
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarAvailable:Z

    const/4 v4, 0x1

    .line 83
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x4000000

    .line 91
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    .line 92
    iput-boolean v4, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarAvailable:Z

    :cond_0
    const/high16 v2, 0x8000000

    .line 95
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 96
    iput-boolean v4, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 85
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    iget-boolean v2, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarAvailable:Z

    iget-boolean v4, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    const/4 v5, 0x0

    invoke-direct {v0, p1, v2, v4, v5}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZLcom/tencent/wecarbase/immersive/SystemBarTintManager$1;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    .line 102
    iget-object v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->hasNavigtionBar()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iput-boolean v3, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    .line 106
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_3

    .line 107
    invoke-direct {p0, p1, v1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 109
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_4

    .line 110
    invoke-direct {p0, p1, v1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    return-object v0
.end method

.method private setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 320
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    .line 322
    iget-object p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 323
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    .line 324
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 326
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x5

    .line 327
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 331
    iget-object p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 307
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    .line 308
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getStatusBarHeight()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x30

    .line 309
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 310
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 315
    iget-object p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mConfig:Lcom/tencent/wecarbase/immersive/SystemBarTintManager$SystemBarConfig;

    return-object p0
.end method

.method public isNavBarTintEnabled()Z
    .locals 0

    .line 303
    iget-boolean p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintEnabled:Z

    return p0
.end method

.method public isStatusBarTintEnabled()Z
    .locals 0

    .line 294
    iget-boolean p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintEnabled:Z

    return p0
.end method

.method public setNavigationBarAlpha(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 274
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 275
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintColor(I)V
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintEnabled(Z)V
    .locals 1

    .line 141
    iput-boolean p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintEnabled:Z

    .line 142
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setNavigationBarTintResource(I)V
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarAlpha(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 228
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 229
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintColor(I)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintEnabled(Z)V
    .locals 1

    .line 125
    iput-boolean p1, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintEnabled:Z

    .line 126
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setStatusBarTintResource(I)V
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTintAlpha(F)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setStatusBarAlpha(F)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setNavigationBarAlpha(F)V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setStatusBarTintColor(I)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setNavigationBarTintColor(I)V

    return-void
.end method

.method public setTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTintResource(I)V
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setStatusBarTintResource(I)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/immersive/SystemBarTintManager;->setNavigationBarTintResource(I)V

    return-void
.end method
