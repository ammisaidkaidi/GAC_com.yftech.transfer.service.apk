.class public Lcom/tencent/taiutils/network/HttpRequestMgr$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taiutils/network/HttpRequestMgr;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/taiutils/network/HttpRequestMgr;

.field public final synthetic val$destFileDir:Ljava/lang/String;

.field public final synthetic val$destFileName:Ljava/lang/String;

.field public final synthetic val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;


# direct methods
.method public constructor <init>(Lcom/tencent/taiutils/network/HttpRequestMgr;Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->this$0:Lcom/tencent/taiutils/network/HttpRequestMgr;

    iput-object p2, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;

    iput-object p3, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->val$destFileDir:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->val$destFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/tencent/taiutils/network/HttpRequestMgr;->TAG:Ljava/lang/String;

    const-string v0, "download  onFailure "

    .line 2
    invoke-static {p1, v0, p2}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9

    .line 1
    sget-object p1, Lcom/tencent/taiutils/network/HttpRequestMgr;->TAG:Ljava/lang/String;

    const-string v0, "download  onResponse thread = "

    .line 2
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x800

    new-array p1, p1, [B

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->val$destFileDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->val$destFileName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v5, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p2, p1, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v7, v0

    add-long/2addr v5, v7

    long-to-float v0, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v0, v7

    long-to-float v7, v3

    div-float/2addr v0, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iget-object v7, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;

    invoke-interface {v7, v0}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;->onDownloading(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    iget-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;

    invoke-interface {p1, v1}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;->onDownloadSuccess(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, p2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v2, v0

    :goto_1
    :try_start_4
    iget-object p0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$3;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;

    invoke-interface {p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_5
    throw p0
.end method
