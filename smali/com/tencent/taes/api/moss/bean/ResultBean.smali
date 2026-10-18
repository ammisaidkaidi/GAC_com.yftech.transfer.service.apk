.class public Lcom/tencent/taes/api/moss/bean/ResultBean;
.super Ljava/lang/Object;
.source "ResultBean.java"


# instance fields
.field public acrossTime:I

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public host:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public status:I

.field public timestamp:Ljava/lang/String;

.field public traceId:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->version:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->timestamp:Ljava/lang/String;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->host:Ljava/lang/String;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->acrossTime:I

    const-string v1, ""

    .line 32
    iput-object v1, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->traceId:Ljava/lang/String;

    .line 33
    iput v0, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->status:I

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->message:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->data:Ljava/util/List;

    return-void
.end method

.method public static createAppDataFromJSON(Ljava/lang/String;)Lcom/tencent/taes/api/moss/bean/MiniAppInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;

    invoke-direct {v0}, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;-><init>()V

    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "id"

    .line 63
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->id:I

    const-string p0, "appid"

    .line 64
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->appId:Ljava/lang/String;

    const-string p0, "pkgName"

    .line 65
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->pkgName:Ljava/lang/String;

    const-string p0, "cnName"

    .line 66
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->cnName:Ljava/lang/String;

    const-string p0, "enName"

    .line 67
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->enName:Ljava/lang/String;

    const-string p0, "mossUrl"

    .line 68
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->mossUrl:Ljava/lang/String;

    const-string p0, "logoUrl"

    .line 69
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->logoUrl:Ljava/lang/String;

    const-string p0, "version"

    .line 70
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->version:Ljava/lang/String;

    const-string p0, "mossMD5"

    .line 71
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->mossMD5:Ljava/lang/String;

    const-string p0, "channelId"

    .line 72
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->channelId:Ljava/lang/String;

    const-string p0, "pagePath"

    .line 73
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/MiniAppInfo;->pagePath:Ljava/lang/String;

    return-object v0
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/tencent/taes/api/moss/bean/ResultBean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/tencent/taes/api/moss/bean/ResultBean;

    invoke-direct {v0}, Lcom/tencent/taes/api/moss/bean/ResultBean;-><init>()V

    .line 40
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "version"

    .line 41
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/ResultBean;->version:Ljava/lang/String;

    const-string p0, "timestamp"

    .line 42
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/ResultBean;->timestamp:Ljava/lang/String;

    const-string p0, "host"

    .line 43
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/ResultBean;->host:Ljava/lang/String;

    const-string p0, "acrossTime"

    .line 44
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/tencent/taes/api/moss/bean/ResultBean;->acrossTime:I

    const-string p0, "traceId"

    .line 45
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/ResultBean;->traceId:Ljava/lang/String;

    const-string p0, "status"

    .line 46
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/tencent/taes/api/moss/bean/ResultBean;->status:I

    const-string p0, "message"

    .line 47
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/taes/api/moss/bean/ResultBean;->message:Ljava/lang/String;

    const-string p0, "data"

    .line 48
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "value"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    iget-object v3, v0, Lcom/tencent/taes/api/moss/bean/ResultBean;->data:Ljava/util/List;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/taes/api/moss/bean/ResultBean;->createAppDataFromJSON(Ljava/lang/String;)Lcom/tencent/taes/api/moss/bean/MiniAppInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ResultBean{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "version=\'"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", timestamp=\'"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", host=\'"

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", acrossTime="

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->acrossTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", traceId=\'"

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->traceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", status="

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", message=\'"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", data="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/tencent/taes/api/moss/bean/ResultBean;->data:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 p0, 0x7d

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
