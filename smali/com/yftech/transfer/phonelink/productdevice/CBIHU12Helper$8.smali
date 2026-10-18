.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$8;
.super Ljava/lang/Object;
.source "CBIHU12Helper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->resetUsb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$8;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "resetUsb start reset"

    .line 467
    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/platform/soc/13010000.cdncusb/vbus"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "0"

    .line 470
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v0, p1, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 471
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    const-wide/16 v3, 0xc8

    .line 472
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "1"

    .line 473
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0, p1, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 474
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    const-string v0, "resetUsb start complete"

    .line 475
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 482
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 477
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetUsb error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 482
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$8;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$902(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Z)Z

    return-void

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v2, :cond_1

    .line 482
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 484
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    :cond_1
    :goto_3
    throw p0
.end method
