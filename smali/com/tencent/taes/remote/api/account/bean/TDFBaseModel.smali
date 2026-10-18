.class public Lcom/tencent/taes/remote/api/account/bean/TDFBaseModel;
.super Ljava/lang/Object;
.source "TDFBaseModel.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/taes/remote/api/account/bean/BaseModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private acrossTime:J

.field private baseModel:Lcom/tencent/taes/remote/api/account/bean/BaseModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcrossTime()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFBaseModel;->acrossTime:J

    return-wide v0
.end method

.method public getBaseModel()Lcom/tencent/taes/remote/api/account/bean/BaseModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFBaseModel;->baseModel:Lcom/tencent/taes/remote/api/account/bean/BaseModel;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFBaseModel;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFBaseModel;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFBaseModel;->status:I

    return p0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFBaseModel;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TDFBaseModel;->traceId:Ljava/lang/String;

    return-object p0
.end method
