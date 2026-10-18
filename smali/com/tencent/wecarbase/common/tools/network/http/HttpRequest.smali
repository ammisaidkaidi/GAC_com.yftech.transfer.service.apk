.class public Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest$Method;
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "HttpRequest"

.field private static final sPkgNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:I

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->sPkgNameMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->method:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->headers:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->params:Ljava/util/HashMap;

    .line 62
    iput-object p2, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    .line 63
    iput p1, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->method:I

    return-void
.end method

.method public static createGetRequest(Ljava/lang/String;)Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;
    .locals 2

    .line 51
    new-instance v0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private createNewUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 177
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 179
    sget-object v1, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->sPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->sPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_2

    const-string p1, "http"

    goto :goto_1

    :cond_2
    const-string p1, "https"

    .line 180
    :goto_1
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createPostRequest(Ljava/lang/String;)Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;
    .locals 2

    .line 55
    new-instance v0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private getParamsString()Ljava/lang/String;
    .locals 4

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->params:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 187
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "UTF-8"

    .line 192
    invoke-static {v0, p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs appendParam([Lorg/apache/http/NameValuePair;)Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;
    .locals 5

    .line 111
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 112
    iget-object v3, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->params:Ljava/util/HashMap;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public execute()Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;
    .locals 2

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->execute2()Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 138
    sget-object v0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->TAG:Ljava/lang/String;

    const-string v1, "execute failed:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public execute2()Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->createNewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    .line 154
    sget-object v1, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute2 : : : url : : : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpExecutor;->execute(Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;)Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CertPathValidatorException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SSLHandshakeException"

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    sget-object v1, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->sPkgNameMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->createNewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute2  CertException retry: : : url : : : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpExecutor;->execute(Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;)Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;

    move-result-object p0

    return-object p0

    .line 166
    :cond_1
    throw v1
.end method

.method public getBody()[B
    .locals 2

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->getParamsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    invoke-direct {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->getParamsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->headers:Ljava/util/HashMap;

    return-object p0
.end method

.method public getMethod()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->method:I

    return p0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 0

    const-string p0, "UTF-8"

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 211
    invoke-direct {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->getParamsString()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs setHeaders([Lorg/apache/http/Header;)Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;
    .locals 5

    .line 85
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 86
    iget-object v3, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
