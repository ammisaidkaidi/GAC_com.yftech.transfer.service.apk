.class public Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;
.super Ljava/lang/Object;
.source "CommonUIManager.java"


# static fields
.field public static final POPWINDOW_PUSH:Ljava/lang/String; = "popwindow_push"

.field public static final TOAST_PUSH:Ljava/lang/String; = "toast_push"

.field public static final UI_OP_TYPE_DISMISS:Ljava/lang/String; = "dismiss"

.field public static final UI_OP_TYPE_DO_ACTION:Ljava/lang/String; = "doAction"

.field public static final UI_OP_TYPE_SHOW:Ljava/lang/String; = "show"

.field private static sInstance:Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private checkMain()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : Method call should happen from the main thread."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;
    .locals 2

    .line 31
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->sInstance:Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->sInstance:Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;

    invoke-direct {v1}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->sInstance:Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->sInstance:Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;

    return-object v0
.end method

.method private isMain()Z
    .locals 1

    .line 109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public showPopupWindow(Landroid/content/Context;Lorg/json/JSONObject;Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIViewListener;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->checkMain()V

    return-void
.end method

.method public showPopupWindow(Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIHelper;Landroid/content/Context;Landroid/view/View;Lorg/json/JSONObject;Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIViewListener;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->checkMain()V

    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1, p3, p4, p5}, Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIHelper;->bindData(Landroid/view/View;Lorg/json/JSONObject;Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIViewListener;)V

    .line 56
    invoke-interface {p1, p3}, Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIHelper;->showLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showToast(Landroid/content/Context;Lorg/json/JSONObject;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->showToast(Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIHelper;Landroid/content/Context;Landroid/view/View;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public showToast(Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIHelper;Landroid/content/Context;ILorg/json/JSONObject;I)V
    .locals 8

    .line 68
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move v7, p5

    .line 69
    invoke-virtual/range {v2 .. v7}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->showToast(Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIHelper;Landroid/content/Context;Landroid/view/View;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public showToast(Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIHelper;Landroid/content/Context;Landroid/view/View;Lorg/json/JSONObject;I)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->checkMain()V

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    .line 79
    :try_start_0
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v0, p3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v0, p5}, Landroid/widget/Toast;->setDuration(I)V

    .line 82
    invoke-interface {p1, p3, p4, p0}, Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIHelper;->bindData(Landroid/view/View;Lorg/json/JSONObject;Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIViewListener;)V

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p1, "text"

    .line 84
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 86
    invoke-static {p2, p1, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 95
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
