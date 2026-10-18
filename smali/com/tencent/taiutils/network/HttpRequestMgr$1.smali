.class public Lcom/tencent/taiutils/network/HttpRequestMgr$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taiutils/network/HttpRequestMgr;->enqueue(Lcom/tencent/taiutils/network/HttpRequest;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/taiutils/network/HttpRequestMgr;

.field public final synthetic val$callback:Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;

.field public final synthetic val$responseConverter:Lcom/tencent/taiutils/network/HttpResponseConverter;


# direct methods
.method public constructor <init>(Lcom/tencent/taiutils/network/HttpRequestMgr;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;Lcom/tencent/taiutils/network/HttpResponseConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$1;->this$0:Lcom/tencent/taiutils/network/HttpRequestMgr;

    iput-object p2, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$1;->val$callback:Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;

    iput-object p3, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$1;->val$responseConverter:Lcom/tencent/taiutils/network/HttpResponseConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$1;->val$callback:Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p0, p2, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$1;->val$responseConverter:Lcom/tencent/taiutils/network/HttpResponseConverter;

    invoke-interface {p1, p2}, Lcom/tencent/taiutils/network/HttpResponseConverter;->convert(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1
    sget-object v0, Lcom/tencent/taiutils/network/HttpRequestMgr;->TAG:Ljava/lang/String;

    const-string v1, "onResponse"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$1;->val$callback:Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;->onResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
