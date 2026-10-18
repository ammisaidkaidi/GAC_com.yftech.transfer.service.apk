.class Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;
.super Ljava/lang/Object;
.source "PersonaliseTTSPresenter.java"

# interfaces
.implements Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;


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

    .line 167
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I[B)V
    .locals 3

    const-string v0, "PersonaliseTTSPresenter"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INetWorkPicCallBack onResult ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-eqz p2, :cond_2

    .line 171
    array-length p1, p2

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    array-length p1, p2

    invoke-static {p2, v0, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 177
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    const-string p1, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {p0, p1, v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$500(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;Ljava/lang/String;Z)V

    return-void

    .line 180
    :cond_1
    new-instance p2, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;

    invoke-direct {p2, p0, p1}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3$1;-><init>(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 172
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter$3;->this$0:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    const-string p1, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {p0, p1, v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->access$500(Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;Ljava/lang/String;Z)V

    return-void
.end method
