.class Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;
.super Ljava/lang/Object;
.source "TtsItemsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->onProgress(JJF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

.field final synthetic val$currentSize:J

.field final synthetic val$progress:F

.field final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;FJJ)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iput p2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;->val$progress:F

    iput-wide p3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;->val$currentSize:J

    iput-wide p5, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;->val$totalSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;->val$progress:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->setProgress(I)V

    .line 248
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$tvStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;->val$currentSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecar/tts/larklite/utils/MemFormat;->formatSize2StrMb(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$1;->val$totalSize:J

    .line 249
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/wecar/tts/larklite/utils/MemFormat;->formatSize2StrMb(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
