.class public Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager;
.super Ljava/lang/Object;
.source "NaviNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;,
        Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$InnerHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNotificationItem:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$InnerHolder;->sInstance:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager;

    return-object v0
.end method


# virtual methods
.method public getNotificationItem()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager;->mNotificationItem:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;

    return-object p0
.end method
