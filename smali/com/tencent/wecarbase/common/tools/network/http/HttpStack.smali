.class abstract Lcom/tencent/wecarbase/common/tools/network/http/HttpStack;
.super Ljava/lang/Object;
.source "HttpStack.java"


# instance fields
.field protected timeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpStack;->timeout:I

    return-void
.end method


# virtual methods
.method public abstract performRequest(Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
