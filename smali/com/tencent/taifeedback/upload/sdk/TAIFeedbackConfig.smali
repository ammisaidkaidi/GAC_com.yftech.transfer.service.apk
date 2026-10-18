.class public Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackConfig;
.super Ljava/lang/Object;
.source "TAIFeedbackConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIsCheckRoot(Landroid/content/Context;)Z
    .locals 1

    .line 76
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getIsCheckRooted(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getIsDebugEnv(Landroid/content/Context;)Z
    .locals 1

    .line 50
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getIsDebugEnv(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getIsDeleteExtraFile(Landroid/content/Context;)Z
    .locals 1

    .line 63
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getIsDeleteExtraFile(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getScreenShotEnable(Landroid/content/Context;)Z
    .locals 1

    .line 21
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getScreenShotEnable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getTapdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getSettingCurrentTapdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "-1"

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static setAppId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setAppId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setIsCheckRoot(Landroid/content/Context;Z)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setIsCheckRooted(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setIsDebugEnv(Landroid/content/Context;Z)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setIsDebugEnv(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setIsDeleteExtraFile(Landroid/content/Context;Z)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setIsDeleteExtraFile(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setScreenShotEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setScreenShotEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setTapdId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setSettingCurrentTapdId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
