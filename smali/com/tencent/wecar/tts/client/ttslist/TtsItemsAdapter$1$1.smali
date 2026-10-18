.class Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;
.super Ljava/lang/Object;
.source "TtsItemsAdapter.java"

# interfaces
.implements Lcom/tencent/wecar/tts/client/net/DownLoadModlelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 303
    new-instance p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$3;

    invoke-direct {p1, p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$3;-><init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;)V

    invoke-static {p1}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFinish(Ljava/io/File;)V
    .locals 1

    .line 256
    new-instance v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;-><init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;Ljava/io/File;)V

    invoke-static {v0}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(JJF)V
    .locals 8

    .line 244
    new-instance v7, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;

    move-object v0, v7

    move-object v1, p0

    move v2, p5

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;-><init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;FJJ)V

    invoke-static {v7}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart(JJF)V
    .locals 0

    return-void
.end method
