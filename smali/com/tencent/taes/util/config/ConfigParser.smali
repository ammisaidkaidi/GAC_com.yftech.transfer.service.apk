.class Lcom/tencent/taes/util/config/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigParser"


# instance fields
.field private mConfigJsonObject:Lorg/json/JSONObject;

.field private mContext:Landroid/content/Context;

.field private mJsonString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/tencent/taes/util/config/ConfigParser;->mConfigJsonObject:Lorg/json/JSONObject;

    .line 24
    iput-object v0, p0, Lcom/tencent/taes/util/config/ConfigParser;->mJsonString:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/tencent/taes/util/config/ConfigParser;->mContext:Landroid/content/Context;

    .line 29
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/taes/util/config/ConfigParser;->loadJsonFromSdcard(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/util/config/ConfigParser;->mJsonString:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/tencent/taes/util/config/ConfigParser;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/tencent/taes/util/FileUtils;->readAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/util/config/ConfigParser;->mJsonString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/tencent/taes/util/config/ConfigParser;->mJsonString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/tencent/taes/util/config/ConfigParser;->parseJsonString()V

    :cond_1
    return-void
.end method

.method private loadJsonFromSdcard(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 56
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 57
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 58
    new-array p1, p1, [B

    .line 59
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 60
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 61
    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private parseJsonString()V
    .locals 2

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/taes/util/config/ConfigParser;->mJsonString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/taes/util/config/ConfigParser;->mConfigJsonObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/tencent/taes/util/config/ConfigParser;->mConfigJsonObject:Lorg/json/JSONObject;

    const-string p0, "ConfigParser"

    const-string v1, "Json parse fail!"

    .line 50
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method getJSONObject()Lorg/json/JSONObject;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/taes/util/config/ConfigParser;->mConfigJsonObject:Lorg/json/JSONObject;

    return-object p0
.end method

.method getJsonString()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/tencent/taes/util/config/ConfigParser;->mJsonString:Ljava/lang/String;

    return-object p0
.end method
