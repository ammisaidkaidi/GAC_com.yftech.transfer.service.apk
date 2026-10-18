.class Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;
.super Ljava/lang/Object;
.source "TtsItemsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->onFinish(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;Ljava/io/File;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iput-object p2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsDownLoading:Z

    .line 260
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->setProgress(I)V

    .line 261
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$tvStatus:Landroid/widget/TextView;

    const-string v3, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->val$file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v3, v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->setLocalPath(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v3, v2}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->setProgress(I)V

    const-string v2, "TtsItemsAdapter"

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNeedSetModel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v4, v4, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v4, v4, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v4}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$600(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v2}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$600(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getITtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-interface {v2, v3}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setAppendTtsSpeakerPath(Ljava/lang/String;)I

    .line 270
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getITtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 271
    invoke-virtual {v3}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getModelname()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v4, v4, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v4, v4, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v4}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-interface {v2, v3, v4}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setChooseTts(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TtsItemsAdapter"

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set TtsSpeakerPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 273
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",Modelname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v4, v4, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v4, v4, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 274
    invoke-virtual {v4}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getModelname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-static {v2, v3}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$cb:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$tvStatus:Landroid/widget/TextView;

    const-string v3, "\u5df2\u9009\u4e2d"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$tvStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    .line 278
    invoke-static {v3}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$900(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/wecar/tts/R$color;->in_chose_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 277
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->setInChose(Z)V

    .line 280
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-static {v2, v3}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$802(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;)Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v2}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$500(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v2, v3}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;->insertOrUpdate(Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;)V

    .line 283
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v2}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v2, v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v2}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v1, v1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v1, v1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-virtual {v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->notifyDataSetChanged()V

    const-string v1, "TtsItemsAdapter"

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const-string v1, "userid"

    .line 289
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "voicetype"

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object v3, v3, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v3}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getVoiceType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nickname"

    .line 291
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1$2;->this$2:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;->this$1:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {}, Lcom/tencent/taes/report/EventHelper;->getInstance()Lcom/tencent/taes/report/EventHelper;

    move-result-object p0

    const-string v1, "customtts_voicepacket_download"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/taes/report/EventHelper;->userAction(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string p0, "TtsItemsAdapter"

    const-string v0, "file = null"

    .line 295
    invoke-static {p0, v0}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
