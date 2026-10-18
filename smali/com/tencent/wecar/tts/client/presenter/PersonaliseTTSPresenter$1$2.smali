.class Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;
.super Ljava/lang/Object;
.source "PersonaliseTTSPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->onLogout()V
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

    .line 75
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showAppletQRCode(Z)V

    .line 79
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showRecordButton(Z)V

    .line 80
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoginButton(Z)V

    .line 81
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showAttentionPicture(Z)V

    .line 82
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const-string v2, "\u65e0\u81ea\u5236\u8bed\u97f3\u5305\uff0c\u5f55\u5236\u8bed\u97f3\u5305\u9700\u5148\u767b\u5f55"

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showTtsList(Z)V

    return-void
.end method
