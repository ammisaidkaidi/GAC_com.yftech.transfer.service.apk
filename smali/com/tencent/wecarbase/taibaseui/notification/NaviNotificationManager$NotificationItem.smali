.class Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;
.super Ljava/lang/Object;
.source "NaviNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationItem"
.end annotation


# instance fields
.field public cancelBtnListener:Landroid/view/View$OnClickListener;

.field public cancelBtnText:Ljava/lang/String;

.field public cancelBtnVisible:Z

.field public message:Ljava/lang/String;

.field public notifyType:I

.field public okBtnClickListener:Landroid/view/View$OnClickListener;

.field public okBtnText:Ljava/lang/String;

.field public okBtnVisible:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZZ)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->okBtnVisible:Z

    .line 44
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->cancelBtnVisible:Z

    .line 50
    iput p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->notifyType:I

    .line 51
    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->title:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->message:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->okBtnText:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->cancelBtnText:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->okBtnClickListener:Landroid/view/View$OnClickListener;

    .line 56
    iput-object p7, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->cancelBtnListener:Landroid/view/View$OnClickListener;

    .line 57
    iput-boolean p8, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->okBtnVisible:Z

    .line 58
    iput-boolean p9, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;->cancelBtnVisible:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 10

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 65
    invoke-direct/range {v0 .. v9}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotificationManager$NotificationItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZZ)V

    return-void
.end method
