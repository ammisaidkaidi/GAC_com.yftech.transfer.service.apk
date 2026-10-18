.class public Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASSettingPageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingPageInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;
    }
.end annotation


# static fields
.field public static final ABOUT_LICENSING_SERVICE:Ljava/lang/String; = "licensing_service"

.field public static final ABOUT_PRIVACY_POLICY:Ljava/lang/String; = "privacy_policy"

.field public static final DAY_NIGHT_MODE_DAY:I = 0x1

.field public static final DAY_NIGHT_MODE_DEFAULT:I = 0x0

.field public static final DAY_NIGHT_MODE_NIGHT:I = 0x2

.field public static final ID_DAJI:Ljava/lang/String; = "daji"

.field public static final ID_DINGDANG:Ljava/lang/String; = "dingdang"

.field public static final ID_LIBAI:Ljava/lang/String; = "libai"

.field public static final PREFER_MAP:Ljava/lang/String; = "map"

.field public static final PREFER_MUSIC:Ljava/lang/String; = "music"

.field public static final PREFER_NEWS:Ljava/lang/String; = "news"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;
    .locals 4

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingPageInfo, fromJson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "mSelectRoleID"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->setSelectRoleID(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "mWakeupWord"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->setWakeupWord(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p0, "mDayNightMode"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->setDayNightMode(I)V

    const-string p0, "mEnableFloatBtn"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->setEnableFloatBtn(Z)V

    const-string p0, "mLicensingServiceText"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->setLicensingServiceText(Ljava/lang/String;)V

    const-string p0, "mPrivacyPolicyUrl"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->setPrivacyPolicyUrl(Ljava/lang/String;)V

    const-string p0, "mVersion"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->setVersion(Ljava/lang/String;)V

    const-string p0, "mPreferAppModels"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->fromJson(Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->setPreferAppModels(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager;->TAG:Ljava/lang/String;

    const-string v1, "SettingPageInfo, fromJson end"

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toJson(Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager;->TAG:Ljava/lang/String;

    const-string v1, "SettingPageInfo, toJson start"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mSelectRoleID"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->getSelectRoleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mWakeupWord"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->getWakeupWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mEnableFloatBtn"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->isEnableFloatBtn()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mDayNightMode"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->getDayNightMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mVersion"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mLicensingServiceText"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->getLicensingServiceText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mPrivacyPolicyUrl"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->getPreferAppModels()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->getPreferAppModels()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->toJson(Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p0, "mPreferAppModels"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    sget-object p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingPageInfo, toJson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDayNightMode()I
    .locals 0

    iget p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->d:I

    return p0
.end method

.method public getLicensingServiceText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getPreferAppModels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->e:Ljava/util/List;

    return-object p0
.end method

.method public getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectRoleID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getWakeupWord()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public isEnableFloatBtn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->c:Z

    return p0
.end method

.method public setDayNightMode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->d:I

    return-void
.end method

.method public setEnableFloatBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->c:Z

    return-void
.end method

.method public setLicensingServiceText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setPreferAppModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->e:Ljava/util/List;

    return-void
.end method

.method public setPrivacyPolicyUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setSelectRoleID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setWakeupWord(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;->b:Ljava/lang/String;

    return-void
.end method
