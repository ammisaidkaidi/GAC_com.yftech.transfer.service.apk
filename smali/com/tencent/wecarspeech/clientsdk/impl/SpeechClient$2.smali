.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$2;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->onClientConnect(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$listener:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$2;->val$listener:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$2;->val$listener:Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->start()V

    return-void
.end method
