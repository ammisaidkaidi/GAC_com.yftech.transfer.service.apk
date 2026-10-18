.class Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;
.super Ljava/lang/Object;
.source "PersonaliseTTSPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->showErrMsg(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;Ljava/lang/String;Z)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    iput-object p2, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->val$msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadingView(Z)V

    .line 305
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadLinearLayout(Z)V

    .line 307
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showToast(Ljava/lang/String;)V

    .line 310
    iget-boolean v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->val$retry:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showRetryButton(Z)V

    .line 312
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$600(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 313
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object p0

    const-string v0, "\u7f51\u7edc\u4e0d\u4f73\uff0c\u672a\u80fd\u540c\u6b65\u5f55\u97f3"

    invoke-interface {p0, v0}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showRetryButton(Z)V

    .line 318
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showQRCodeRefreshView()V

    .line 319
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$4;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object p0

    const-string v0, "\u4e8c\u7ef4\u7801\u52a0\u8f7d\u5931\u8d25"

    invoke-interface {p0, v0}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
