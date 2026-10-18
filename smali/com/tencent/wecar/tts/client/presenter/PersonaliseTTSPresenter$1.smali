.class Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;
.super Ljava/lang/Object;
.source "PersonaliseTTSPresenter.java"

# interfaces
.implements Lcom/tencent/wecar/tts/client/login/ILoginStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFail(ILjava/lang/String;)V
    .locals 2

    const-string p0, "PersonaliseTTSPresenter"

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginFail errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess()V
    .locals 2

    const-string v0, "PersonaliseTTSPresenter"

    const-string v1, "onLoginSuccess"

    .line 46
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$1;-><init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;)V

    invoke-static {v0}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLogout()V
    .locals 2

    const-string v0, "PersonaliseTTSPresenter"

    const-string v1, "onLogout"

    .line 74
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;

    invoke-direct {v0, p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1$2;-><init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$1;)V

    invoke-static {v0}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
