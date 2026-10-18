.class public final Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;


# instance fields
.field private c:Lcom/tencent/wecarspeech/sdk/api/IVideoClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wecarspeech/sdk/api/IVideoClient<",
            "Lcom/tencent/libspeechcommon/def/ActionRet;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient<",
            "Lcom/tencent/libspeechcommon/def/ActionRet;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecarspeech/sdk/model/ThirdApp;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private a([B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_app_pkg_name"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+notifyMediaPlayInfo, packageName: + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";  playinfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "e_app_pkg_name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "e_media_play_info"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string v1, "tas.action.media.control.info"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-notifyMediaPlayInfo, playinfo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string p2, "null"

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IVideoClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v2, "tas.action.video.set.enabled"

    new-array v3, v1, [B

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->setMediaControlClient(Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;Ljava/util/ArrayList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->f:Z

    invoke-virtual {p0, v0, v2}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->notifyPlayStatus(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->f:Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->notifyMediaPlayInfo(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->g:Ljava/lang/String;

    :cond_3
    iput-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-onSdkServiceConnectEvent, connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 3

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+callback, caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,caller back:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "tas.focus.video"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IVideoClient;

    if-eqz p4, :cond_2

    :cond_1
    const-string p4, "tas.focus.media.control"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    if-nez p4, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string p1, "-callback mIVideoClient OR mIMediaControlClient == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    const-string p4, ""

    const-string v1, "tas.focus.video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p3}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a([B)Ljava/lang/String;

    move-result-object p4

    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "tas.focus.media.control.add.favorite"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "tas.focus.media.control.play"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "tas.focus.media.control.next"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "tas.focus.media.control.pause"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "tas.focus.media.control.pre"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "tas.focus.media.control.cancel.favorite"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v2, "tas.focus.video.play"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_7
    const-string v2, "tas.focus.video.play.usb"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==+cancelFavorite"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    invoke-interface {v0, p4}, Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;->cancelFavorite(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==-cancelFavorite"

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==+addFavorite"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    invoke-interface {v0, p4}, Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;->addFavorite(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==-addFavorite"

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==+pre"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    invoke-interface {v0, p4}, Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;->pre(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==-pre"

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==+next"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    invoke-interface {v0, p4}, Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;->next(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==-next"

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==+pause"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    invoke-interface {v0, p4}, Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;->pause(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==-pause"

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==+play"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    invoke-interface {v0, p4}, Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;->play(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==-play"

    goto :goto_2

    :pswitch_6
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v0, "==+playUSBVideo"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IVideoClient;

    invoke-interface {p4}, Lcom/tencent/wecarspeech/sdk/api/IVideoClient;->playUSBVideo()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==-playUSBVideo"

    goto :goto_2

    :pswitch_7
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v0, "==+playVideo"

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IVideoClient;

    invoke-interface {p4}, Lcom/tencent/wecarspeech/sdk/api/IVideoClient;->playVideo()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    const-string v1, "==-playVideo"

    :goto_2
    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-callback, caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,caller back:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_6

    const-string p1, "null"

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a(Lcom/tencent/libspeechcommon/def/ActionRet;)[B

    move-result-object v0

    :goto_5
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7dee8f05 -> :sswitch_7
        -0x4d62431b -> :sswitch_6
        -0xe2d88e9 -> :sswitch_5
        0x1b7c45aa -> :sswitch_4
        0x2d7a133d -> :sswitch_3
        0x540b58cc -> :sswitch_2
        0x540c590d -> :sswitch_1
        0x6b004d22 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyMediaPlayInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->g:Ljava/lang/String;

    new-instance v0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;-><init>(Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;->start()V

    return-void
.end method

.method public notifyPlayStatus(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+notifyPlayStatus, packageName: + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->h:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->f:Z

    const-string v0, "e_app_pkg_name"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "e_media_play_status"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string v0, "tas.action.media.control.play.status"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-notifyPlayStatus, isPlaying:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMediaControlClient(Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient<",
            "Lcom/tencent/libspeechcommon/def/ActionRet;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecarspeech/sdk/model/ThirdApp;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setMediaControlClient, mediaControlClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->d:Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->e:Ljava/util/ArrayList;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "e_app_pkg_name"

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "e_app_name"

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string p2, "e_media_control_apps"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p2

    const-string v1, "tas.action.media.control.set.enabled"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-setMediaControlClient, mediaClient:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, "null"

    goto :goto_3

    :cond_2
    const-string p1, "ok"

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoClient(Lcom/tencent/wecarspeech/sdk/api/IVideoClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/sdk/api/IVideoClient<",
            "Lcom/tencent/libspeechcommon/def/ActionRet;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setVideoClient, videoClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->c:Lcom/tencent/wecarspeech/sdk/api/IVideoClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.video.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setVideoClient, videoClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_1

    :cond_1
    const-string p1, "ok"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
