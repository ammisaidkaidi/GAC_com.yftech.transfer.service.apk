.class public Lcom/tencent/taes/remote/api/account/bean/TDFModel;
.super Ljava/lang/Object;
.source "TDFModel.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private acrossTime:J

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private status:I

.field private timestamp:Ljava/lang/String;

.field private traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcrossTime()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->acrossTime:J

    return-wide v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->status:I

    return p0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->traceId:Ljava/lang/String;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    .line 23
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAcrossTime(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->acrossTime:J

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->data:Ljava/lang/Object;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->host:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->status:I

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TDFModel;->traceId:Ljava/lang/String;

    return-void
.end method
