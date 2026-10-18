.class Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2$1;
.super Ljava/lang/Object;
.source "PersonaliseTTSPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->onResult(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadLinearLayout(Z)V

    .line 113
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$2;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$300(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showInfoView(Ljava/util/ArrayList;)V

    return-void
.end method
