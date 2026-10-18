.class public Lcom/tencent/taes/framework/parser/ComponentUtils;
.super Ljava/lang/Object;
.source "ComponentUtils.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterLocalComponents(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 215
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isLocalComponent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static filterNecessaryServerComponents(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 227
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isNecessaryLoad()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isServerComponent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static filterServerComponents(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 203
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isServerComponent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getBootCompleteServerComponents(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/util/config/ConfigInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-static {p0}, Lcom/tencent/taes/framework/parser/ComponentUtils;->parseConfig(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;

    move-result-object p0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 173
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isServerComponent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isBootCompleteLoad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getLocalComponents(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/util/config/ConfigInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-static {p0}, Lcom/tencent/taes/framework/parser/ComponentUtils;->parseConfig(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;

    move-result-object p0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 191
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isLocalComponent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getNecessaryServerComponents(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/util/config/ConfigInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Lcom/tencent/taes/framework/parser/ComponentUtils;->parseConfig(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;

    move-result-object p0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 156
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isServerComponent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isNecessaryLoad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getServerComponents(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/util/config/ConfigInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {p0}, Lcom/tencent/taes/framework/parser/ComponentUtils;->parseConfig(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;

    move-result-object p0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 140
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->isServerComponent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static parseConfig(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/util/config/ConfigInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "components"

    move-object/from16 v2, p0

    .line 28
    invoke-virtual {v2, v0}, Lcom/tencent/taes/util/config/ConfigInfo;->getMapArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 30
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_f

    .line 32
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_1

    goto/16 :goto_8

    :cond_1
    const-string v0, "name"

    .line 34
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, ""

    const-string v8, "lifecycleImpCls"

    .line 37
    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v7, "lifecycleImpCls"

    .line 38
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :cond_2
    const-string v8, ""

    const-string v9, "applicationApiImplCls"

    .line 42
    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v8, "applicationApiImplCls"

    .line 43
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_3
    const-string v9, ""

    const-string v10, "desc"

    .line 47
    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v9, "desc"

    .line 48
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_4
    const-string v10, ""

    const-string v11, "type"

    .line 52
    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v10, "type"

    .line 53
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :cond_5
    const-string v11, "bootCompleteLoad"

    .line 57
    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "bootCompleteLoad"

    .line 58
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    :goto_1
    const-string v12, "necessaryLoad"

    .line 62
    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_7

    const-string v12, "necessaryLoad"

    .line 63
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_2

    :cond_7
    move v12, v13

    :goto_2
    const-string v14, "persistent"

    .line 67
    invoke-interface {v6, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v13, "persistent"

    .line 68
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :cond_8
    const-string v14, "parallelLoad"

    .line 72
    invoke-interface {v6, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "parallelLoad"

    .line 73
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_3
    const-string v15, ""

    const-string v4, "actionName"

    .line 77
    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "actionName"

    .line 78
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    .line 81
    :cond_a
    new-instance v4, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    invoke-direct {v4}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;-><init>()V

    .line 82
    invoke-virtual {v4, v0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4, v9}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setDesc(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4, v10}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setType(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v7}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setLifecycleImpCls(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4, v8}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setApplicationApiImplCls(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4, v11}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setBootCompleteLoad(Z)V

    .line 88
    invoke-virtual {v4, v12}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setNecessaryLoad(Z)V

    .line 89
    invoke-virtual {v4, v14}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setParallelLoad(Z)V

    .line 90
    invoke-virtual {v4, v13}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setPersistent(Z)V

    .line 91
    invoke-virtual {v4, v15}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setActionName(Ljava/lang/String;)V

    const-string v0, "supportFeatures"

    .line 92
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "supportFeatures"

    .line 93
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/json/JSONArray;

    if-eqz v7, :cond_c

    .line 95
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 96
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_b

    .line 98
    :try_start_0
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    new-instance v10, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;

    invoke-direct {v10}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;-><init>()V

    const-string v11, "api"

    .line 100
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->setApi(Ljava/lang/String;)V

    const-string v11, "apiImpl"

    .line 101
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->setApiImpl(Ljava/lang/String;)V

    const-string v11, "binderName"

    .line 102
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->setBinderName(Ljava/lang/String;)V

    .line 103
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 108
    :cond_b
    invoke-virtual {v4, v8}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setSupportFeatures(Ljava/util/List;)V

    :cond_c
    const-string v0, "connectPriorityPkgNames"

    .line 112
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_1
    const-string v0, "connectPriorityPkgNames"

    .line 114
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_e

    .line 116
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 117
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 118
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 120
    :cond_d
    invoke-virtual {v4, v6}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->setConnectPriorityPkgNames([Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 126
    :cond_e
    :goto_7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v1

    :cond_10
    :goto_9
    return-object v1
.end method
