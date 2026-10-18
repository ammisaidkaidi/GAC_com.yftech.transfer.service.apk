.class Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;
.super Ljava/lang/Object;
.source "TtsItemsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->startDownLoad(Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

.field final synthetic val$cb:Landroid/widget/ImageView;

.field final synthetic val$ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

.field final synthetic val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

.field final synthetic val$tvStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    iput-object p2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    iput-object p3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    iput-object p4, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$tvStatus:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$cb:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 232
    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/StorageUtils;->getAvailableInternalMemorySize()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 233
    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u5b58\u50a8\u7a7a\u95f4\u5c0f\u4e8e100Mb"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;->val$ttsData:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getModelPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1$1;-><init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/wecar/tts/client/net/HttpConnectionUtil;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecar/tts/client/net/DownLoadModlelCallBack;)Ljava/io/File;

    return-void
.end method
