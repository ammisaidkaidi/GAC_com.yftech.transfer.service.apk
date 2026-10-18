.class public Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;
.super Ljava/lang/Object;
.source "ClientStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;
    }
.end annotation


# instance fields
.field private mActivityCount:I

.field private mContext:Landroid/app/Application;

.field private mStateListener:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;


# direct methods
.method protected constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mActivityCount:I

    .line 17
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mContext:Landroid/app/Application;

    .line 18
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->registerLifecycleCallbacks()V

    return-void
.end method

.method static synthetic access$008(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;)I
    .locals 2

    .line 8
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mActivityCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mActivityCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;)I
    .locals 2

    .line 8
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mActivityCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mActivityCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->checkInFront()V

    return-void
.end method

.method private checkInFront()V
    .locals 2

    .line 30
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mActivityCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mStateListener:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;

    if-eqz v1, :cond_1

    .line 36
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mStateListener:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;

    invoke-interface {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;->onStateChanged(Z)V

    :cond_1
    return-void
.end method

.method private registerLifecycleCallbacks()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mContext:Landroid/app/Application;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$1;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public startObserve(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->mStateListener:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;

    .line 23
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->checkInFront()V

    return-void
.end method
