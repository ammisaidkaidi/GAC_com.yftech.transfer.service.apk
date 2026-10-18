.class final Lcom/tencent/wecarbase/utils/ToolUtils$1;
.super Ljava/lang/Object;
.source "ToolUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/utils/ToolUtils;->mergeBitmap(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$naviBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$screenFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tencent/wecarbase/utils/ToolUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tencent/wecarbase/utils/ToolUtils$1;->val$naviBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/tencent/wecarbase/utils/ToolUtils$1;->val$screenFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/tencent/wecarbase/utils/ToolUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    iget-object v3, p0, Lcom/tencent/wecarbase/utils/ToolUtils$1;->val$naviBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 77
    invoke-virtual {v2, v0, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    iget-object v2, p0, Lcom/tencent/wecarbase/utils/ToolUtils$1;->val$screenFilePath:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/wecarbase/utils/ToolUtils;->access$000(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/utils/ToolUtils$1;->val$naviBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarbase/utils/ToolUtils$1;->val$naviBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object p0, p0, Lcom/tencent/wecarbase/utils/ToolUtils$1;->val$naviBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method
