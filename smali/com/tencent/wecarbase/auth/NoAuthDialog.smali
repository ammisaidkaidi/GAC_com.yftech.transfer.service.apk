.class public Lcom/tencent/wecarbase/auth/NoAuthDialog;
.super Ljava/lang/Object;
.source "NoAuthDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NoAuthDialog"

.field private static volatile sInstance:Lcom/tencent/wecarbase/auth/NoAuthDialog;


# instance fields
.field private dialog:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/tencent/wecarbase/auth/NoAuthDialog;

    invoke-direct {v0}, Lcom/tencent/wecarbase/auth/NoAuthDialog;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/auth/NoAuthDialog;->sInstance:Lcom/tencent/wecarbase/auth/NoAuthDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/auth/NoAuthDialog;
    .locals 1

    .line 26
    sget-object v0, Lcom/tencent/wecarbase/auth/NoAuthDialog;->sInstance:Lcom/tencent/wecarbase/auth/NoAuthDialog;

    return-object v0
.end method


# virtual methods
.method public show(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog;->dialog:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->createOneBtnDialog(Landroid/content/Context;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog;->dialog:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog;->dialog:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog;->dialog:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    const-string v1, "\u5f53\u524d\u8f66\u8f86\u672a\u7ecf\u6388\u6743\uff0c\u65e0\u6cd5\u4f7f\u7528\u8be5\u5e94\u7528"

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setMessage(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    move-result-object v0

    const-string v1, "\u9000\u51fa\u5e94\u7528"

    .line 37
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setFirstBtnText(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    .line 38
    iget-object v0, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog;->dialog:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    new-instance v1, Lcom/tencent/wecarbase/auth/NoAuthDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarbase/auth/NoAuthDialog$1;-><init>(Lcom/tencent/wecarbase/auth/NoAuthDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->setOnClickBtnListener(Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog$OnClickBtnListener;)V

    .line 51
    iget-object p1, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog;->dialog:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v0, 0x7f6

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d3

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 62
    :goto_0
    iget-object p0, p0, Lcom/tencent/wecarbase/auth/NoAuthDialog;->dialog:Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/TAIMessageDialog;->show()V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method
