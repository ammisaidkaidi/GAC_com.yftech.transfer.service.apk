.class Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder$1;
.super Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$SimplePlayCallBack;
.source "TtsItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->startPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;

    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$SimplePlayCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayEnd(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "TtsItemsAdapter"

    const-string v0, "onEndPlay"

    .line 204
    invoke-static {p1, v0}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$402(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Z)Z

    return-void
.end method

.method public onPlayStart(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TtsItemsAdapter"

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$402(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Z)Z

    return-void
.end method

.method public onPlayStop()V
    .locals 2

    const-string v0, "TtsItemsAdapter"

    const-string v1, "onPlayStop"

    .line 198
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$402(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Z)Z

    return-void
.end method
