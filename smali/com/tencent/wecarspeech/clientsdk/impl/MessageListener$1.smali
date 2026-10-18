.class Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$1;
.super Lcom/tencent/wecarspeech/vframework/IWeCarCallback$Stub;
.source "MessageListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/IWeCarCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->access$000(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    move-result-object p0

    const-string p2, "versionCode"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setVFVersionCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
