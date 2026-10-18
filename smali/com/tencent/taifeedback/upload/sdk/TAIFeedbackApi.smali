.class public Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;
.super Ljava/lang/Object;
.source "TAIFeedbackApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;,
        Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;,
        Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;,
        Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;,
        Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;,
        Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;,
        Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;
    }
.end annotation


# static fields
.field private static api:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;


# instance fields
.field private guid:Ljava/lang/String;

.field private shakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->shakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;)Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->shakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;

    return-object p0
.end method

.method public static destroy()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->destroy()V

    .line 45
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->destroy()V

    .line 46
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->destroy()V

    .line 47
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/ZipUtil;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/ZipUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/ZipUtil;->destroy()V

    .line 48
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->destroy()V

    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->api:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    return-void
.end method

.method public static getInstance()Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;
    .locals 1

    .line 34
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->api:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;-><init>()V

    sput-object v0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->api:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    .line 37
    :cond_0
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->api:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    return-object v0
.end method


# virtual methods
.method public bindFeedbackTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;",
            ")V"
        }
    .end annotation

    .line 108
    new-instance v7, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;-><init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;)V

    const/4 p0, 0x0

    .line 109
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v7, p0}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public captureLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->seekLogcat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public captureLog(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 158
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->seekLogcat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createScreenShot(Landroid/app/Activity;)V
    .locals 0

    .line 59
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->takeScreenShot(Landroid/app/Activity;)Ljava/lang/String;

    return-void
.end method

.method public deleteScreenShot(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object p0

    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ".png"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->deleteFileByExt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteTempData(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object p0

    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->deleteSubFiles(Ljava/lang/String;)V

    return-void
.end method

.method public getGuid()Ljava/lang/String;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public pullFeedbackList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;",
            ")V"
        }
    .end annotation

    .line 88
    new-instance v9, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;-><init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;)V

    const/4 v0, 0x0

    .line 89
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v9, v0}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public pullFeedbackMp3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;",
            ")V"
        }
    .end annotation

    .line 99
    new-instance p5, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;-><init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;)V

    const/4 p0, 0x0

    .line 100
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p5, p0}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->guid:Ljava/lang/String;

    return-void
.end method

.method public startShake(Landroid/content/Context;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;)V
    .locals 1

    .line 168
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;

    invoke-direct {v0, p1}, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->shakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;

    .line 169
    iget-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->shakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;

    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$1;

    invoke-direct {v0, p0, p2}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$1;-><init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;)V

    invoke-virtual {p1, v0}, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->setOnShakeListener(Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener$OnShakeListener;)V

    return-void
.end method

.method public stopShake()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->shakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->shakeListener:Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;

    invoke-virtual {p0}, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->stop()V

    :cond_0
    return-void
.end method

.method public submitDataAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;Ljava/util/Properties;)V
    .locals 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    const-string v0, "bugreport"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bugreport submitDataAsync time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;

    move-object v3, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p4

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-direct/range {v3 .. v16}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;-><init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;Ljava/util/Properties;)V

    const/4 v1, 0x0

    .line 140
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
