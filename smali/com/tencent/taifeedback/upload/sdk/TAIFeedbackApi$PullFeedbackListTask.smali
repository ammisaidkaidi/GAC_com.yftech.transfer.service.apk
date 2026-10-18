.class Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;
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
    name = "PullFeedbackListTask"
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

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPkg:Ljava/lang/String;

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

.field private mUserid:Ljava/lang/String;

.field private mWecarid:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;


# direct methods
.method public constructor <init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;)V
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;",
            ")V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mContext:Landroid/content/Context;

    .line 294
    iput-object p3, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mUserid:Ljava/lang/String;

    .line 295
    iput-object p4, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mPkg:Ljava/lang/String;

    .line 296
    iput-object p5, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mWecarid:Ljava/lang/String;

    .line 297
    iput-object p6, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mMap:Ljava/util/Map;

    .line 298
    iput-object p7, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mSigMap:Ljava/util/Map;

    .line 299
    iput-object p8, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
    .locals 7

    .line 305
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mUserid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mWecarid:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mSigMap:Ljava/util/Map;

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->pullFeedbackList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 276
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->doInBackground([Ljava/lang/Void;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V
    .locals 1

    .line 311
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;

    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SubmitCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 276
    check-cast p1, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$PullFeedbackListTask;->onPostExecute(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V

    return-void
.end method
