.class public Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;
.super Ljava/lang/Object;
.source "HttpResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpResult"


# instance fields
.field private response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public comsumeContent()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 115
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "HttpResult"

    .line 117
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/tencent/wecarbase/common/tools/network/http/EntityUtil;->isGziped(Lorg/apache/http/HttpEntity;)Z

    move-result v0

    const-string v1, "HttpResult"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entity is ziped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HttpResult"

    .line 89
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HttpResult"

    .line 87
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 71
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    return p0
.end method

.method public getStreamBody()Ljava/io/InputStream;
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->isSucceeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 155
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 157
    invoke-static {p0}, Lcom/tencent/wecarbase/common/tools/network/http/EntityUtil;->isGziped(Lorg/apache/http/HttpEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HttpResult"

    const-string v2, "stream is ziped"

    .line 158
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "HttpResult"

    .line 165
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public getStringBody()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 142
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getStringBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->isSucceeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 130
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/common/tools/network/http/EntityUtil;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "HttpResult"

    .line 132
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public isSucceeded()Z
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getStatusCode()I

    move-result p0

    const/16 v0, 0xce

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setResponse(Lorg/apache/http/HttpResponse;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->response:Lorg/apache/http/HttpResponse;

    return-void
.end method
