.class public Lcom/tencent/wecarbase/compat/ViewCompatProxy;
.super Ljava/lang/Object;
.source "ViewCompatProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowOverlayType()I
    .locals 2

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    return v0

    :cond_0
    const/16 v0, 0x7d3

    return v0
.end method

.method public static setFitsSystemWindows(Landroid/support/v4/app/SupportActivity;Z)V
    .locals 1

    const v0, 0x1020002

    .line 33
    invoke-virtual {p0, v0}, Landroid/support/v4/app/SupportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 35
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    return-void
.end method
