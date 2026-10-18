.class Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;
.super Landroid/os/AsyncTask;
.source "TAIFeedbackApi.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PullFeedbackMp3Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private feedbackid:Ljava/lang/String;

.field private historyPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

.field private mSigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

.field private wecarid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;",
            ")V"
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 371
    iput-object p2, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->mContext:Landroid/content/Context;

    .line 372
    iput-object p3, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->wecarid:Ljava/lang/String;

    .line 373
    iput-object p4, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->feedbackid:Ljava/lang/String;

    .line 374
    iput-object p5, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->historyPath:Ljava/lang/String;

    .line 375
    iput-object p6, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->mSigMap:Ljava/util/Map;

    .line 376
    iput-object p7, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
    .locals 6

    .line 382
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;-><init>()V

    .line 383
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->wecarid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->feedbackid:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->mSigMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->historyPath:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->dowloadFeedbackMp3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 356
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->doInBackground([Ljava/lang/Void;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V
    .locals 1

    .line 388
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackMp3Task;->onPostExecute(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V

    return-void
.end method
