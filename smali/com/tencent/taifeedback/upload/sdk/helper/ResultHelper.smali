.class public Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
.super Ljava/lang/Object;
.source "ResultHelper.java"


# static fields
.field public static final FAIL:I = 0x1

.field public static final SUCCESS:I


# instance fields
.field private code:I

.field private feedbackid:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 14
    iget p0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->code:I

    return p0
.end method

.method public getFeedbackid()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->feedbackid:Ljava/lang/String;

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->code:I

    return-void
.end method

.method public setFeedbackid(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->feedbackid:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->msg:Ljava/lang/String;

    return-void
.end method
