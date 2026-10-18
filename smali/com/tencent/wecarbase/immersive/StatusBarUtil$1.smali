.class final Lcom/tencent/wecarbase/immersive/StatusBarUtil$1;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/immersive/StatusBarUtil;->setAppDensity(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$displayMetrics:Landroid/util/DisplayMetrics;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/app/Application;Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil$1;->val$resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil$1;->val$application:Landroid/app/Application;

    iput-object p3, p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil$1;->val$displayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 342
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil$1;->val$resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {p1}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->access$002(F)F

    .line 344
    iget-object p1, p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil$1;->val$application:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/wecarbase/immersive/StatusBarUtil$1;->val$displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p0}, Lcom/tencent/wecarbase/immersive/StatusBarUtil;->access$100(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
