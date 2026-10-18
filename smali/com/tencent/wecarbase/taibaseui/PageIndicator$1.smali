.class Lcom/tencent/wecarbase/taibaseui/PageIndicator$1;
.super Ljava/lang/Object;
.source "PageIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taibaseui/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/PageIndicator;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/PageIndicator;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator$1;->this$0:Lcom/tencent/wecarbase/taibaseui/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator$1;->this$0:Lcom/tencent/wecarbase/taibaseui/PageIndicator;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->selectPage(I)V

    return-void
.end method
