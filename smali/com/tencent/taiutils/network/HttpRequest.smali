.class public Lcom/tencent/taiutils/network/HttpRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public okHttpRequestBuilder:Lokhttp3/Request$Builder;

.field public responseConverter:Lcom/tencent/taiutils/network/HttpResponseConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/taiutils/network/HttpResponseConverter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOkHttpRequestBuilder()Lokhttp3/Request$Builder;
    .locals 0

    iget-object p0, p0, Lcom/tencent/taiutils/network/HttpRequest;->okHttpRequestBuilder:Lokhttp3/Request$Builder;

    return-object p0
.end method

.method public getResponseConverter()Lcom/tencent/taiutils/network/HttpResponseConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/taiutils/network/HttpResponseConverter<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/taiutils/network/HttpRequest;->responseConverter:Lcom/tencent/taiutils/network/HttpResponseConverter;

    return-object p0
.end method

.method public setOkHttpRequestBuilder(Lokhttp3/Request$Builder;)Lcom/tencent/taiutils/network/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            ")",
            "Lcom/tencent/taiutils/network/HttpRequest<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/taiutils/network/HttpRequest;->okHttpRequestBuilder:Lokhttp3/Request$Builder;

    return-object p0
.end method

.method public setResponseConverter(Lcom/tencent/taiutils/network/HttpResponseConverter;)Lcom/tencent/taiutils/network/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taiutils/network/HttpResponseConverter<",
            "TT;>;)",
            "Lcom/tencent/taiutils/network/HttpRequest<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/taiutils/network/HttpRequest;->responseConverter:Lcom/tencent/taiutils/network/HttpResponseConverter;

    return-object p0
.end method
