.class public Lcom/tencent/wecarbase/common/tools/network/http/HttpExecutor;
.super Ljava/lang/Object;
.source "HttpExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpExecutor"

.field private static final TIMEOUT:I = 0x2710

.field private static httpStack:Lcom/tencent/wecarbase/common/tools/network/http/HttpStack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/tencent/wecarbase/common/tools/network/http/HttpUrlStack;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/common/tools/network/http/HttpUrlStack;-><init>(I)V

    sput-object v0, Lcom/tencent/wecarbase/common/tools/network/http/HttpExecutor;->httpStack:Lcom/tencent/wecarbase/common/tools/network/http/HttpStack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;)Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;

    invoke-direct {v0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;-><init>()V

    .line 26
    sget-object v1, Lcom/tencent/wecarbase/common/tools/network/http/HttpExecutor;->httpStack:Lcom/tencent/wecarbase/common/tools/network/http/HttpStack;

    invoke-virtual {v1, p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpStack;->performRequest(Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->setResponse(Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method
