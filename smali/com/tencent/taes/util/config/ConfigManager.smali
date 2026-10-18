.class public Lcom/tencent/taes/util/config/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/util/config/ConfigManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigManager"


# instance fields
.field private mConfigInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/taes/util/config/ConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/util/config/ConfigManager;->mConfigInfoMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/taes/util/config/ConfigManager$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tencent/taes/util/config/ConfigManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/taes/util/config/ConfigManager;
    .locals 1

    .line 28
    invoke-static {}, Lcom/tencent/taes/util/config/ConfigManager$LazyHolder;->access$100()Lcom/tencent/taes/util/config/ConfigManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfigInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/taes/util/config/ConfigInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/tencent/taes/util/config/ConfigManager;->mConfigInfoMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lcom/tencent/taes/util/config/ConfigParser;

    invoke-direct {v0, p1, p2}, Lcom/tencent/taes/util/config/ConfigParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/tencent/taes/util/config/ConfigParser;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    new-instance p1, Lcom/tencent/taes/util/config/ConfigInfo;

    invoke-virtual {v0}, Lcom/tencent/taes/util/config/ConfigParser;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/taes/util/config/ConfigInfo;-><init>(Lorg/json/JSONObject;)V

    .line 37
    iget-object v0, p0, Lcom/tencent/taes/util/config/ConfigManager;->mConfigInfoMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "ConfigManager"

    const-string v0, "Json object is null !"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/taes/util/config/ConfigManager;->mConfigInfoMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/util/config/ConfigInfo;

    return-object p0
.end method
