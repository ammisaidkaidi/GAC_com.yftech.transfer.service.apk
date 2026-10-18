.class public Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;,
        Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_ASR_CONTROL:Ljava/lang/String; = "action.notity.asr.control"

.field public static final ACTION_DISMISS:Ljava/lang/String; = "action.notity.dismiss"

.field public static final ACTION_REVCMD:Ljava/lang/String; = "action.notity.revcmd"

.field public static final ACTION_SET_TIME:Ljava/lang/String; = "action.notity.set.time"

.field public static final CANCEL_STR:Ljava/lang/String; = "cancel_str"

.field public static final CMD:Ljava/lang/String; = "cmd"

.field public static final CMD_CANCEL:Ljava/lang/String; = "cmd_cancel"

.field public static final CMD_OK:Ljava/lang/String; = "cmd_ok"

.field public static final NOTIFICATION_MY_CAR_PLATE_REGISTER:I = 0xa

.field public static final NOTIFICATION_TYPE_CALL:I = 0xc

.field public static final NOTIFICATION_TYPE_FUEL:I = 0xb

.field public static final NOTIFICATION_TYPE_LIGHT_NAVI_COMPANY:I = 0x8

.field public static final NOTIFICATION_TYPE_LIGHT_NAVI_HOME:I = 0x7

.field public static final NOTIFICATION_TYPE_LIGHT_NAVI_OTHER:I = 0x9

.field public static final NOTIFICATION_TYPE_PARK:I = 0x4

.field public static final NOTIFICATION_TYPE_POI:I = 0x3

.field public static final NOTIFICATION_TYPE_SET_TARGET:I = 0xd

.field public static final NOTIFICATION_TYPE_TEAMTRIP_JOIN:I = 0x1

.field public static final NOTIFICATION_TYPE_UPAN:I = 0x5

.field public static final NOTIFICATION_TYPE_VIEW_TARGET:I = 0x6

.field public static final NOTIFICATION_TYPE_WEIXIN:I = 0x2

.field public static final OK_STR:Ljava/lang/String; = "ok_str"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TTS_WORD:Ljava/lang/String; = "tts_word"

.field public static final TYPE:Ljava/lang/String; = "type"

.field static final mAsrReceiver:Landroid/content/BroadcastReceiver;

.field private static mDefaultNotication:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification; = null

.field private static mIsShowing:Z = false

.field private static mNotificationId:I = 0x400

.field private static mNotificationType:I = -0x1

.field private static sExtNotification:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mDefaultNotication:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    .line 278
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$4;

    invoke-direct {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$4;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mAsrReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 20
    sput-boolean p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->sendAsrNotificationDismissBroadcast()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->registerAsrReceiver()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->onNotificationHide()V

    return-void
.end method

.method static synthetic access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;
    .locals 1

    .line 20
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->sExtNotification:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    return-object v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    .line 20
    sput p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mNotificationType:I

    return p0
.end method

.method public static addAsrControl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.notity.asr.control"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 261
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "tts_word"

    .line 262
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "ok_str"

    .line 263
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "cancel_str"

    .line 264
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 127
    invoke-virtual {p0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification"

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 122
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static onNotificationHide()V
    .locals 2

    const-string v0, "Asr"

    const-string v1, "NotificationUtils onNotificationHide"

    .line 242
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->sendAsrNotificationDismissBroadcast()V

    const/4 v0, 0x0

    .line 244
    sput-boolean v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mIsShowing:Z

    const/4 v0, -0x1

    .line 245
    sput v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mNotificationType:I

    .line 247
    :try_start_0
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mAsrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static registerAsrReceiver()V
    .locals 3

    .line 270
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action.notity.revcmd"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "action.notity.set.time"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mAsrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static sendAsrNotificationDismissBroadcast()V
    .locals 3

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.notity.dismiss"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 255
    sget v2, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mNotificationType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static setExtNotification(Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;)V
    .locals 0

    .line 131
    sput-object p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->sExtNotification:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    return-void
.end method

.method public static showNotification(Landroid/content/Context;Landroid/app/Notification;)I
    .locals 2

    .line 106
    sget v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mNotificationId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mNotificationId:I

    .line 107
    sget v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mNotificationId:I

    const/16 v1, 0x2800

    if-le v0, v1, :cond_0

    const/16 v0, 0x400

    .line 108
    sput v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mNotificationId:I

    :cond_0
    const-string v0, "notification"

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 111
    sget v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mNotificationId:I

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 112
    sget p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mNotificationId:I

    return p0
.end method

.method public static showNotification(ILandroid/content/Context;Landroid/app/Notification;)V
    .locals 1

    const-string v0, "notification"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 117
    invoke-virtual {p1, p0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)V
    .locals 7

    .line 199
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->sExtNotification:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mDefaultNotication:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->setExtNotification(Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;)V

    .line 202
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->sExtNotification:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;I)V

    invoke-static {v0}, Lcom/tencent/wecarbase/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)V
    .locals 8

    .line 144
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->sExtNotification:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->mDefaultNotication:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->setExtNotification(Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;)V

    .line 147
    :cond_0
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->sExtNotification:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;I)V

    invoke-static {v0}, Lcom/tencent/wecarbase/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
