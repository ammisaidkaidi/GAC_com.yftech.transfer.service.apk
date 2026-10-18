.class public interface abstract Lcom/tencent/taiutils/network/HttpRequestMgr$DownloadRangeListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taiutils/network/HttpRequestMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadRangeListener"
.end annotation


# virtual methods
.method public abstract onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onDownloadSuccess(Ljava/lang/String;Ljava/io/RandomAccessFile;)V
.end method

.method public abstract onDownloading(Ljava/lang/String;J)V
.end method
