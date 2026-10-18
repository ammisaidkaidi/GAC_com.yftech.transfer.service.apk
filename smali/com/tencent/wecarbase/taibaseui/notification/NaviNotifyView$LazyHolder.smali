.class Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$LazyHolder;
.super Ljava/lang/Object;
.source "NaviNotifyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final instance:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$1;)V

    sput-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$LazyHolder;->instance:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;
    .locals 1

    .line 39
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$LazyHolder;->instance:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    return-object v0
.end method
