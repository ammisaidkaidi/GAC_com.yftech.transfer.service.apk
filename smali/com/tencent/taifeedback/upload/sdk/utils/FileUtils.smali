.class public Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final EXT_INTERVAL:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "com.tencent.taifeedback.upload.sdk.utils.FileUtils"

.field private static fileUtil:Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;


# instance fields
.field public final ATTACH_EXT:Ljava/lang/String;

.field public final DAT_EXT:Ljava/lang/String;

.field public final IMG_EXT:Ljava/lang/String;

.field public final LOG_EXT:Ljava/lang/String;

.field public final MUSIC_FILE_EXT:Ljava/lang/String;

.field public final PROP_FILE:Ljava/lang/String;

.field public final ZIP_EXT:Ljava/lang/String;

.field private basePath:Ljava/lang/String;

.field private fullPath:Ljava/lang/String;

.field private storePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fullPath:Ljava/lang/String;

    const-string v0, "tai_feedback"

    .line 24
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->basePath:Ljava/lang/String;

    const-string v0, "bug"

    .line 25
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->storePath:Ljava/lang/String;

    const-string v0, ".png"

    .line 26
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->IMG_EXT:Ljava/lang/String;

    const-string v0, ".bugly.log.txt"

    .line 27
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->LOG_EXT:Ljava/lang/String;

    const-string v0, ".txt"

    .line 28
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->ATTACH_EXT:Ljava/lang/String;

    const-string v0, ".zip"

    .line 29
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->ZIP_EXT:Ljava/lang/String;

    const-string v0, "bug.json"

    .line 30
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->PROP_FILE:Ljava/lang/String;

    const-string v0, ".amr;.mp3;.wav"

    .line 31
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->MUSIC_FILE_EXT:Ljava/lang/String;

    const-string v0, ".dat"

    .line 33
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->DAT_EXT:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;
    .locals 1

    .line 39
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fileUtil:Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;-><init>()V

    sput-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fileUtil:Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    .line 42
    :cond_0
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fileUtil:Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 213
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 214
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 215
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 216
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v4, 0x0

    .line 217
    :try_start_4
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v8

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v1, "close copy file failed"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 237
    :catch_1
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "close copy file failed"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_0

    .line 241
    :try_start_7
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 244
    :catch_2
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string p2, "close copy file failed"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    .line 248
    :try_start_8
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 251
    :catch_3
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string p2, "close copy file failed"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v8, v0

    goto :goto_5

    :catch_4
    move-object v8, v0

    goto :goto_7

    :catch_5
    move-object v8, v0

    goto :goto_9

    :catchall_2
    move-exception p0

    move-object p2, v0

    goto :goto_4

    :catch_6
    move-object p2, v0

    goto :goto_6

    :catch_7
    move-object p2, v0

    goto :goto_8

    :catchall_3
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    :goto_4
    move-object v8, p2

    :goto_5
    move-object v0, v1

    goto/16 :goto_14

    :catch_8
    move-object p1, v0

    move-object p2, p1

    :goto_6
    move-object v8, p2

    :catch_9
    :goto_7
    move-object v0, v1

    goto :goto_a

    :catch_a
    move-object p1, v0

    move-object p2, p1

    :goto_8
    move-object v8, p2

    :catch_b
    :goto_9
    move-object v0, v1

    goto :goto_f

    :catchall_4
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object v8, p2

    goto/16 :goto_14

    :catch_c
    move-object p1, v0

    move-object p2, p1

    move-object v8, p2

    .line 222
    :goto_a
    :try_start_9
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v3, "copy file failed"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_2

    .line 227
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_b

    .line 230
    :catch_d
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v2, "close copy file failed"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_b
    if-eqz p1, :cond_3

    .line 234
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_c

    .line 237
    :catch_e
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v1, "close copy file failed"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_c
    if-eqz p2, :cond_4

    .line 241
    :try_start_c
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_d

    .line 244
    :catch_f
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "close copy file failed"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_d
    if-eqz v8, :cond_5

    .line 248
    :try_start_d
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_e

    .line 251
    :catch_10
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "close copy file failed"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_e
    return p0

    :catch_11
    move-object p1, v0

    move-object p2, p1

    move-object v8, p2

    .line 219
    :goto_f
    :try_start_e
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v3, "copy file failed"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v0, :cond_6

    .line 227
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_12

    goto :goto_10

    .line 230
    :catch_12
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v2, "close copy file failed"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_10
    if-eqz p1, :cond_7

    .line 234
    :try_start_10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_13

    goto :goto_11

    .line 237
    :catch_13
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v1, "close copy file failed"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_11
    if-eqz p2, :cond_8

    .line 241
    :try_start_11
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14

    goto :goto_12

    .line 244
    :catch_14
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "close copy file failed"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_12
    if-eqz v8, :cond_9

    .line 248
    :try_start_12
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_15

    goto :goto_13

    .line 251
    :catch_15
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "close copy file failed"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_13
    return p0

    :catchall_5
    move-exception p0

    :goto_14
    if-eqz v0, :cond_a

    .line 227
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16

    goto :goto_15

    .line 230
    :catch_16
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v2, "close copy file failed"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_15
    if-eqz p1, :cond_b

    .line 234
    :try_start_14
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17

    goto :goto_16

    .line 237
    :catch_17
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v1, "close copy file failed"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_16
    if-eqz p2, :cond_c

    .line 241
    :try_start_15
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_18

    goto :goto_17

    .line 244
    :catch_18
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "close copy file failed"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_17
    if-eqz v8, :cond_d

    .line 248
    :try_start_16
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_19

    goto :goto_18

    .line 251
    :catch_19
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "close copy file failed"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_d
    :goto_18
    throw p0
.end method

.method public deleteFile(Ljava/io/File;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 193
    invoke-virtual {p0, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    .line 197
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " delete  failed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public deleteFileByExt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFilePathByExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 299
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 301
    new-instance v1, Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteSubFiles(Ljava/lang/String;)V
    .locals 3

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 175
    invoke-virtual {p0, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    const/4 p0, 0x0

    .line 46
    sput-object p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fileUtil:Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 0

    .line 148
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fullPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fullPath:Ljava/lang/String;

    return-object p0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fullPath:Ljava/lang/String;

    const-string p1, "mounted"

    .line 117
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    .line 118
    new-array p1, p1, [Ljava/lang/String;

    .line 119
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "/sdcard"

    const/4 v2, 0x1

    aput-object v0, p1, v2

    const/4 v0, 0x2

    const-string v2, "/mnt/sdcard"

    aput-object v2, p1, v0

    const/4 v0, 0x3

    const-string v2, "/mnt/sdcard2"

    aput-object v2, p1, v0

    const/4 v0, 0x4

    const-string v2, "/mnt/ext_sdcard"

    aput-object v2, p1, v0

    const/4 v0, 0x5

    const-string v2, "/storage/sdcard0"

    aput-object v2, p1, v0

    const/4 v0, 0x6

    const-string v2, "/storage/sdcard1"

    aput-object v2, p1, v0

    const/4 v0, 0x7

    const-string v2, "/mnt/sdcard/tencent"

    aput-object v2, p1, v0

    .line 128
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fullPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fullPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 143
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->fullPath:Ljava/lang/String;

    return-object p0
.end method

.method public getExtList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 451
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ";"

    .line 452
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ";"

    .line 453
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 454
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    const-string v3, ""

    .line 455
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 456
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 461
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getFileNameByExt(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 380
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    .line 383
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileNameByExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 320
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getExtList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    move v1, p2

    .line 321
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 322
    array-length v2, p1

    move v3, p2

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 323
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 326
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getFileNameExceptExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 357
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 362
    :cond_1
    invoke-virtual {p0, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getExtList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 363
    array-length p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_5

    aget-object v3, p1, v2

    .line 364
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 368
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-nez v4, :cond_4

    .line 374
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFilePathByExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 267
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 282
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public getSDPath()Ljava/lang/String;
    .locals 1

    .line 467
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 469
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 470
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStoreLogFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ".bugly.log.txt"

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStorePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->storePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p0
.end method

.method public getStorePicFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ".png"

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStorePropFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bug.json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStoreZipFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public loadPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;
    .locals 2

    .line 389
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p1, :cond_1

    .line 390
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 392
    :try_start_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge p0, v1, :cond_0

    .line 393
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 395
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 397
    :cond_0
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 399
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public size(Ljava/lang/String;)J
    .locals 0

    .line 156
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public storeJsonToFile(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 411
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 412
    :try_start_1
    new-instance p1, Ljava/io/OutputStreamWriter;

    const-string v1, "utf-8"

    invoke-direct {p1, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 422
    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p0

    .line 430
    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v0, "Exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    move-object p2, p1

    move-object p1, p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object p2, p1

    move-object p1, p0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, p0

    :goto_2
    move-object p0, v0

    goto :goto_7

    :catch_3
    move-exception p1

    move-object p2, p0

    :goto_3
    move-object p0, v0

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p2, p0

    goto :goto_7

    :catch_4
    move-exception p1

    move-object p2, p0

    .line 415
    :goto_4
    :try_start_5
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p2, :cond_0

    .line 419
    :try_start_6
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 422
    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_5
    if-eqz p0, :cond_1

    .line 427
    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception p0

    .line 430
    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    :goto_6
    return-void

    :catchall_3
    move-exception p1

    :goto_7
    if-eqz p2, :cond_2

    .line 419
    :try_start_8
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception p2

    .line 422
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_8
    if-eqz p0, :cond_3

    .line 427
    :try_start_9
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    :catch_8
    move-exception p0

    .line 430
    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_3
    :goto_9
    throw p1
.end method

.method public storePropertiesToFile(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    .line 437
    :try_start_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-ge p0, v0, :cond_0

    .line 438
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 439
    invoke-virtual {p2, p0, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 442
    :cond_0
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 443
    invoke-virtual {p2, p0, p1}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public writeTextFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 p0, 0x0

    .line 489
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 497
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 500
    :catch_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string p2, "close file failed"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 493
    :goto_1
    :try_start_3
    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v0, :cond_1

    .line 497
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 500
    :catch_3
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "close file failed"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_1
    :goto_3
    throw p0

    :cond_2
    :goto_4
    return-void
.end method
