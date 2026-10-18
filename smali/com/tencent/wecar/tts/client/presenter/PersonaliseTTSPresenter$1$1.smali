.class Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$1;
.super Ljava/lang/Object;
.source "PersonaliseTTSPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->onLoginSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoginButton(Z)V

    .line 51
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showAttentionPicture(Z)V

    .line 53
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showRecordButton(Z)V

    .line 55
    new-instance v0, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    invoke-direct {v0}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;-><init>()V

    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;->queryByInChose(ZLjava/lang/String;)Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getModelname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getITtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getModelname()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-interface {v1, v2, v0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setChooseTts(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$100(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)V

    return-void
.end method
