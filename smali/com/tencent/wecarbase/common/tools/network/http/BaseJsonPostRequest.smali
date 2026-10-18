.class public Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;
.super Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;
.source "BaseJsonPostRequest.java"


# instance fields
.field private mBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;-><init>(ILjava/lang/String;)V

    .line 17
    iput-object p3, p0, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;->mBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;->mBody:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 0

    const-string p0, "application/json"

    return-object p0
.end method
