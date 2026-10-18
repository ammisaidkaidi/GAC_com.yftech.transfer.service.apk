.class Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;
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
    name = "BindFeedbackTask"
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

.field private mUid:Ljava/lang/String;

.field private mWecarid:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;


# direct methods
.method public constructor <init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    .line 331
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mContext:Landroid/content/Context;

    .line 333
    iput-object p3, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mUid:Ljava/lang/String;

    .line 334
    iput-object p4, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mWecarid:Ljava/lang/String;

    .line 335
    iput-object p5, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mSigMap:Ljava/util/Map;

    .line 336
    iput-object p6, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
    .locals 3

    .line 342
    new-instance p1, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;

    invoke-direct {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;-><init>()V

    .line 343
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mWecarid:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mSigMap:Ljava/util/Map;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->bindFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 319
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->doInBackground([Ljava/lang/Void;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V
    .locals 1

    .line 348
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 319
    check-cast p1, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$BindFeedbackTask;->onPostExecute(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V

    return-void
.end method
