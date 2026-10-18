.class Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;
.super Ljava/lang/Object;
.source "PersonaliseTTSPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;->onResult(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;

    iput-object p2, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showLoadingView(Z)V

    .line 184
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setAppletQRCode(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showInfoView(Ljava/util/ArrayList;)V

    .line 186
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;

    iget-object v0, v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object v0

    const-string v2, "\u5fae\u4fe1\u626b\u7801\uff0c\u624b\u673a\u5f55\u5236\u8bed\u97f3\u5305"

    invoke-interface {v0, v2}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->setInfo(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;->this$1:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$000(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)Lcom/tencent/wecar/tts/client/view/IPersonaliseView;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/tencent/wecar/tts/client/view/IPersonaliseView;->showAttentionPicture(Z)V

    .line 189
    new-instance p0, Landroid/util/ArrayMap;

    const/16 v0, 0x30

    invoke-direct {p0, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const-string v0, "userid"

    .line 190
    invoke-static {}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Lcom/tencent/taes/report/EventHelper;->getInstance()Lcom/tencent/taes/report/EventHelper;

    move-result-object v0

    const-string v1, "customtts_qrcode"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/taes/report/EventHelper;->userAction(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
