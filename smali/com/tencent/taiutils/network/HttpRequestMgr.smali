.class public Lcom/tencent/taiutils/network/HttpRequestMgr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;,
        Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;,
        Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HttpRequestMgr"

.field public static volatile mInstance:Lcom/tencent/taiutils/network/HttpRequestMgr;

.field public static mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/tencent/taiutils/network/HttpRequestMgr;->getOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/tencent/taiutils/network/HttpRequestMgr;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/taiutils/network/HttpRequestMgr;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method private enqueue(Lcom/tencent/taiutils/network/HttpRequest;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/taiutils/network/HttpRequest<",
            "TT;>;",
            "Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/taiutils/network/HttpRequest;->getOkHttpRequestBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/taiutils/network/HttpRequest;->getResponseConverter()Lcom/tencent/taiutils/network/HttpResponseConverter;

    move-result-object p1

    sget-object v1, Lcom/tencent/taiutils/network/HttpRequestMgr;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/tencent/taiutils/network/HttpRequestMgr$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr$1;-><init>(Lcom/tencent/taiutils/network/HttpRequestMgr;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;Lcom/tencent/taiutils/network/HttpResponseConverter;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static getInstance()Lcom/tencent/taiutils/network/HttpRequestMgr;
    .locals 2

    sget-object v0, Lcom/tencent/taiutils/network/HttpRequestMgr;->mInstance:Lcom/tencent/taiutils/network/HttpRequestMgr;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/taiutils/network/HttpRequestMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/taiutils/network/HttpRequestMgr;->mInstance:Lcom/tencent/taiutils/network/HttpRequestMgr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/taiutils/network/HttpRequestMgr;

    invoke-direct {v1}, Lcom/tencent/taiutils/network/HttpRequestMgr;-><init>()V

    sput-object v1, Lcom/tencent/taiutils/network/HttpRequestMgr;->mInstance:Lcom/tencent/taiutils/network/HttpRequestMgr;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/taiutils/network/HttpRequestMgr;->mInstance:Lcom/tencent/taiutils/network/HttpRequestMgr;

    return-object v0
.end method

.method private getOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 7

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    instance-of v6, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_0

    move-object v0, v5

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    new-instance v2, Lcom/tencent/taiutils/network/HttpRequestMgr$2;

    invoke-direct {v2, p0, v0}, Lcom/tencent/taiutils/network/HttpRequestMgr$2;-><init>(Lcom/tencent/taiutils/network/HttpRequestMgr;Ljavax/net/ssl/X509TrustManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "TLSv1.2"

    :try_start_1
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    aput-object v2, v0, v3

    invoke-virtual {p0, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    sget-object p0, Lcom/tencent/taiutils/network/HttpRequestMgr;->TAG:Ljava/lang/String;

    const-string v0, "create OkHttpClientBuilder failed, create a default one instead"

    invoke-static {p0, v0}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    return-object p0
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;)V
    .locals 3

    sget-object v0, Lcom/tencent/taiutils/network/HttpRequestMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download  url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr;->buildUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "invalid url"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p0}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    sget-object v0, Lcom/tencent/taiutils/network/HttpRequestMgr;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/tencent/taiutils/network/HttpRequestMgr$3;-><init>(Lcom/tencent/taiutils/network/HttpRequestMgr;Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public downloadRange(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;)V
    .locals 7

    sget-object v0, Lcom/tencent/taiutils/network/HttpRequestMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download  url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr;->buildUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p5, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "invalid url"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p4, p0}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;->onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RANGE"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    sget-object v0, Lcom/tencent/taiutils/network/HttpRequestMgr;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v6, Lcom/tencent/taiutils/network/HttpRequestMgr$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/taiutils/network/HttpRequestMgr$4;-><init>(Lcom/tencent/taiutils/network/HttpRequestMgr;Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr;->buildUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    const/4 p0, -0x1

    const-string p1, "url is invalid"

    invoke-interface {p4, p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p3, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/tencent/taiutils/network/HttpRequest;

    invoke-direct {p1}, Lcom/tencent/taiutils/network/HttpRequest;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/taiutils/network/HttpRequest;->setOkHttpRequestBuilder(Lokhttp3/Request$Builder;)Lcom/tencent/taiutils/network/HttpRequest;

    sget-object p2, Lcom/tencent/taiutils/network/HttpResponseConverter;->STRING:Lcom/tencent/taiutils/network/HttpResponseConverter;

    invoke-virtual {p1, p2}, Lcom/tencent/taiutils/network/HttpRequest;->setResponseConverter(Lcom/tencent/taiutils/network/HttpResponseConverter;)Lcom/tencent/taiutils/network/HttpRequest;

    invoke-direct {p0, p1, p4}, Lcom/tencent/taiutils/network/HttpRequestMgr;->enqueue(Lcom/tencent/taiutils/network/HttpRequest;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr;->buildUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/4 p0, -0x1

    const-string p1, "url is invalid"

    invoke-interface {p4, p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p3, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/tencent/taiutils/network/HttpRequest;

    invoke-direct {p1}, Lcom/tencent/taiutils/network/HttpRequest;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/taiutils/network/HttpRequest;->setOkHttpRequestBuilder(Lokhttp3/Request$Builder;)Lcom/tencent/taiutils/network/HttpRequest;

    sget-object p2, Lcom/tencent/taiutils/network/HttpResponseConverter;->STRING:Lcom/tencent/taiutils/network/HttpResponseConverter;

    invoke-virtual {p1, p2}, Lcom/tencent/taiutils/network/HttpRequest;->setResponseConverter(Lcom/tencent/taiutils/network/HttpResponseConverter;)Lcom/tencent/taiutils/network/HttpRequest;

    invoke-direct {p0, p1, p4}, Lcom/tencent/taiutils/network/HttpRequestMgr;->enqueue(Lcom/tencent/taiutils/network/HttpRequest;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr;->buildUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    const/4 p0, -0x1

    const-string p1, "url is invalid"

    invoke-interface {p4, p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p3, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/tencent/taiutils/network/HttpRequest;

    invoke-direct {p1}, Lcom/tencent/taiutils/network/HttpRequest;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/taiutils/network/HttpRequest;->setOkHttpRequestBuilder(Lokhttp3/Request$Builder;)Lcom/tencent/taiutils/network/HttpRequest;

    sget-object p2, Lcom/tencent/taiutils/network/HttpResponseConverter;->STRING:Lcom/tencent/taiutils/network/HttpResponseConverter;

    invoke-virtual {p1, p2}, Lcom/tencent/taiutils/network/HttpRequest;->setResponseConverter(Lcom/tencent/taiutils/network/HttpResponseConverter;)Lcom/tencent/taiutils/network/HttpRequest;

    invoke-direct {p0, p1, p4}, Lcom/tencent/taiutils/network/HttpRequestMgr;->enqueue(Lcom/tencent/taiutils/network/HttpRequest;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V

    return-void
.end method
