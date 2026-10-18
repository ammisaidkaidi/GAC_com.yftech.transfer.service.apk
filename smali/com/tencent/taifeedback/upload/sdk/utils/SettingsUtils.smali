.class public Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# static fields
.field private static final IS_CHECK_ROOTED:Ljava/lang/String; = "is_check_root"

.field private static final IS_DEBUG_ENV:Ljava/lang/String; = "is_debug_server"

.field private static final IS_DELETE_EXTRA_FILE:Ljava/lang/String; = "is_delete_extra_file"

.field private static final LAST_ACCOUNT:Ljava/lang/String; = "last_account"

.field private static final LOCATION_ADDRESS:Ljava/lang/String; = "location_address"

.field private static final LOCATION_LOCATION:Ljava/lang/String; = "location_location"

.field private static final LOCATION_SPEED:Ljava/lang/String; = "location_speed"

.field private static final SCREEN_SHOT_ENABLE:Ljava/lang/String; = "screen_shot_enable"

.field private static final SETTING_CURRENT_TAPD_ID:Ljava/lang/String; = "current_tapd_id"

.field private static final TESLY_APP_ID:Ljava/lang/String; = "tesly_app_id"

.field private static settingsUtil:Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;


# instance fields
.field private final SETTINGS_FILE_NAME:Ljava/lang/String;

.field private final VALUE_DEFAULT_VOLUME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tai_feedback"

    .line 12
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->SETTINGS_FILE_NAME:Ljava/lang/String;

    const-string v0, "VALUE_DEFAULT_VOLUME"

    .line 13
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->VALUE_DEFAULT_VOLUME:Ljava/lang/String;

    return-void
.end method

.method private getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string p0, "tai_feedback"

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 67
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    const-string p0, "tai_feedback"

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 72
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;
    .locals 1

    .line 37
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->settingsUtil:Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;-><init>()V

    sput-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->settingsUtil:Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    .line 40
    :cond_0
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->settingsUtil:Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    return-object v0
.end method

.method private getIntPreferences(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string p0, "tai_feedback"

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 92
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "tai_feedback"

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 55
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string p0, "tai_feedback"

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 60
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 61
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setIntPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const-string p0, "tai_feedback"

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 86
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p0, "tai_feedback"

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 49
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    const/4 p0, 0x0

    .line 43
    sput-object p0, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->settingsUtil:Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    return-void
.end method

.method public getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "tesly_app_id"

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultVolume(Landroid/content/Context;)I
    .locals 1

    const-string v0, "VALUE_DEFAULT_VOLUME"

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getIntPreferences(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIsCheckRooted(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "is_check_root"

    const/4 v1, 0x1

    .line 166
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getIsDebugEnv(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "is_debug_server"

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getIsDeleteExtraFile(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "is_delete_extra_file"

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getLastAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "last_account"

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocationAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "location_address"

    const-string v1, "\u672a\u83b7\u53d6\u5230\u51c6\u786e\u4f4d\u7f6e"

    .line 115
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocationLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "location_location"

    const-string v1, "0.0,0.0"

    .line 108
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocationSpeed(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "location_speed"

    const-string v1, "0.0"

    .line 122
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenShotEnable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "screen_shot_enable"

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSettingCurrentTapdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "current_tapd_id"

    const-string v1, "-1"

    .line 137
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setSettingCurrentTapdId(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public setAppId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tesly_app_id"

    .line 170
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultVolume(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "VALUE_DEFAULT_VOLUME"

    .line 96
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setIntPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setIsCheckRooted(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "is_check_root"

    .line 162
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsDebugEnv(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "is_debug_server"

    .line 146
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsDeleteExtraFile(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "is_delete_extra_file"

    .line 154
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "last_account"

    .line 126
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocationAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "location_address"

    .line 112
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocationLocation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "location_location"

    .line 105
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocationSpeed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "location_speed"

    .line 119
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenShotEnable(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "screen_shot_enable"

    .line 76
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSettingCurrentTapdId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "current_tapd_id"

    .line 133
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
