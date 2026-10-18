.class public Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferAppModel"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "mType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->setType(Ljava/lang/String;)V

    const-string p0, "mSelectedPkgName"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->setSelectedPkgName(Ljava/lang/String;)V

    const-string p0, "mAppName"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->setAppName(Ljava/util/List;)V

    const-string p0, "mPkgName"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->setPkgName(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public static toJson(Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mType"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mSelectedPkgName"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->getSelectedPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->getAppName()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "mAppName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->getPkgName()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "mPkgName"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAppName()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->b:Ljava/util/List;

    return-object p0
.end method

.method public getPkgName()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->c:Ljava/util/List;

    return-object p0
.end method

.method public getSelectedPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->b:Ljava/util/List;

    return-void
.end method

.method public setPkgName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->c:Ljava/util/List;

    return-void
.end method

.method public setSelectedPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->d:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSettingPageManager$SettingPageInfo$PreferAppModel;->a:Ljava/lang/String;

    return-void
.end method
