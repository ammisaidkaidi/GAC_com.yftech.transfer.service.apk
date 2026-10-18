.class Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;
.super Ljava/lang/Object;
.source "PersonaliseTTSPresenter.java"

# interfaces
.implements Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PersonaliseTTSPresenter"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INetWorkCallBack onResult ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0curl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "response ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-virtual {p0, p3}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->showErrorMsgByUrl(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "data"

    .line 99
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "errcode"

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "errmsg"

    const-string v1, "\u6210\u529f"

    .line 101
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 103
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-virtual {p1, p3}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->showErrorMsgByUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p2, "/getCarTTSList"

    .line 106
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "PersonaliseTTSPresenter"

    .line 107
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {p2}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$300(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    const-string v1, "ttsDataList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$200(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    new-instance p1, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2$1;

    invoke-direct {p1, p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2$1;-><init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;)V

    invoke-static {p1}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string p2, "qrcodeUrl"

    .line 118
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {p2}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$400(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/wecar/tts/client/net/TtsNetWork;->requestPicture(Ljava/lang/String;Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-virtual {p0, p3}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->showErrorMsgByUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
