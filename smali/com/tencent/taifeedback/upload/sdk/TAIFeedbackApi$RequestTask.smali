.class Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;
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
    name = "RequestTask"
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

.field private mDesc:Ljava/lang/String;

.field private mExtraFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCaptureLog:Z

.field private mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;

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

.field private mProperties:Ljava/util/Properties;

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

.field private mTime:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;


# direct methods
.method public constructor <init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mContext:Landroid/content/Context;

    .line 235
    iput-object p3, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mDesc:Ljava/lang/String;

    .line 236
    iput-object p4, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mUsername:Ljava/lang/String;

    .line 237
    iput-object p7, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mTime:Ljava/lang/String;

    .line 238
    iput-object p5, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mUid:Ljava/lang/String;

    .line 239
    iput-object p6, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mPkg:Ljava/lang/String;

    .line 240
    iput-boolean p8, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mIsCaptureLog:Z

    .line 241
    iput-object p9, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mMap:Ljava/util/Map;

    .line 242
    iput-object p10, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mSigMap:Ljava/util/Map;

    .line 243
    iput-object p11, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mExtraFileList:Ljava/util/List;

    .line 244
    iput-object p12, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;

    .line 245
    iput-object p13, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mProperties:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
    .locals 12

    .line 251
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->getIsFlieLock()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    new-instance p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;-><init>()V

    const/4 p1, 0x1

    .line 253
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 254
    new-instance p1, Ljava/lang/String;

    const-string v0, "\u4e0a\u4e00\u4e2a\u53cd\u9988\u7684\u6570\u636e\u8fd8\u5728\u5904\u7406\uff0c\u53cd\u9988\u901f\u5ea6\u8fc7\u5feb\uff0c\u8bf7\u7a0d\u540e\u53cd\u9988"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object p0

    .line 257
    :cond_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->setFileLock()V

    .line 258
    iget-boolean p1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mIsCaptureLog:Z

    if-eqz p1, :cond_1

    .line 259
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->seekLogcat(Landroid/content/Context;)Ljava/lang/String;

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mExtraFileList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 261
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mExtraFileList:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->saveExtraFile(Landroid/content/Context;Ljava/util/List;)V

    .line 262
    :cond_2
    new-instance v2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;

    invoke-direct {v2}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;-><init>()V

    .line 263
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mDesc:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mUsername:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mUid:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mTime:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mSigMap:Ljava/util/Map;

    iget-object v11, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mProperties:Ljava/util/Properties;

    invoke-virtual/range {v2 .. v11}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->prepare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Properties;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 207
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->doInBackground([Ljava/lang/Void;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V
    .locals 1

    .line 268
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;

    invoke-interface {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;->onSuccess(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->mListener:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;

    invoke-interface {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$SendCallback;->onFail(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$RequestTask;->onPostExecute(Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;)V

    return-void
.end method
