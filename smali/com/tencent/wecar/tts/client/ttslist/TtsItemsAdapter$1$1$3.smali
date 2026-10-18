.class Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$3;
.super Ljava/lang/Object;
.source "TtsItemsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$3;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 306
    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 308
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$3;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    iput-boolean v2, v0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsDownLoading:Z

    .line 309
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$3;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->setProgress(I)V

    .line 310
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$3;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$tvStatus:Landroid/widget/TextView;

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
