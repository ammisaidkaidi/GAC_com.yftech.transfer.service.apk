.class public Lcom/tencent/taiutils/network/HttpRequestMgr$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taiutils/network/HttpRequestMgr;->downloadRange(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/taiutils/network/HttpRequestMgr;

.field public final synthetic val$fileDir:Ljava/lang/String;

.field public final synthetic val$fileName:Ljava/lang/String;

.field public final synthetic val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

.field public final synthetic val$startPoint:I


# direct methods
.method public constructor <init>(Lcom/tencent/taiutils/network/HttpRequestMgr;Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->this$0:Lcom/tencent/taiutils/network/HttpRequestMgr;

    iput-object p2, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

    iput-object p3, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileDir:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$startPoint:I

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
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileName:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;->onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8

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

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x800

    new-array p1, p1, [B

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

    iget-object p2, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "response null"

    :try_start_1
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;->onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "/"

    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "rwd"

    :try_start_4
    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

    iget-object p2, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileName:Ljava/lang/String;

    iget v0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$startPoint:I

    int-to-long v4, v0

    invoke-interface {p1, p2, v4, v5}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;->onDownloading(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

    iget-object p2, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileName:Ljava/lang/String;

    invoke-interface {p1, p2, v3}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;->onDownloadSuccess(Ljava/lang/String;Ljava/io/RandomAccessFile;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_3
    return-void

    :cond_4
    :try_start_6
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget v0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$startPoint:I

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget v0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$startPoint:I

    int-to-long v0, v0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v0, v4

    iget-object v4, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

    iget-object v5, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileName:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v1}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;->onDownloading(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

    iget-object v0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileName:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;->onDownloadSuccess(Ljava/lang/String;Ljava/io/RandomAccessFile;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v1

    :goto_1
    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p2, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p2, v1

    goto :goto_4

    :catch_3
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    :goto_2
    :try_start_9
    iget-object v0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$listener:Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;

    iget-object p0, p0, Lcom/tencent/taiutils/network/HttpRequestMgr$4;->val$fileName:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;->onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz p2, :cond_8

    :cond_7
    :goto_3
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    :cond_8
    return-void

    :catchall_2
    move-exception p0

    goto :goto_1

    :goto_4
    if-eqz v1, :cond_9

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    :cond_a
    throw p0
.end method
