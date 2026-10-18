.class public Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;
.super Landroid/app/Presentation;
.source "CarMapSurfacePresentation.java"


# instance fields
.field private mMapSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mMapSurfaceView:Landroid/view/SurfaceView;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder$Callback;Landroid/view/Display;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f09001d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->mRootView:Landroid/view/ViewGroup;

    .line 39
    iget-object p1, p0, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->mRootView:Landroid/view/ViewGroup;

    const p3, 0x7f070042

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->mMapSurfaceView:Landroid/view/SurfaceView;

    .line 40
    iget-object p1, p0, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->mMapSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->mMapSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    iget-object p1, p0, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->mMapSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 42
    iget-object p1, p0, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->mRootView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->mMapSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static createCarPresentation(Landroid/content/Context;Landroid/view/SurfaceHolder$Callback;)Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;
    .locals 3

    const-string v0, "===========CarMapSurfacePresentation================="

    .line 27
    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const-string v0, "display"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarMapSurfacePresentation\uff1a\uff1a\uff1a\uff1a\uff1a\uff1a\uff1adisplay size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 31
    new-instance v1, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-direct {v1, p0, p1, v0}, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder$Callback;Landroid/view/Display;)V

    return-object v1

    .line 33
    :cond_0
    new-instance v1, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, p0, p1, v0}, Lcom/yftech/transfer/tencent/navi/CarMapSurfacePresentation;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder$Callback;Landroid/view/Display;)V

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "======CarMapSurfacePresentation::onCreate======"

    .line 50
    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
