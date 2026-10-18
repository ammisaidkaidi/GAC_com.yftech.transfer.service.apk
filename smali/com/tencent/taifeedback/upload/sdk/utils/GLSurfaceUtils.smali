.class public Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;
.super Ljava/lang/Object;
.source "GLSurfaceUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = "GLSurfaceUtils"

.field private static glSurfaceUtils:Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;


# instance fields
.field private context:Landroid/content/Context;

.field private isScreenShot:Z

.field private retryCount:I


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

    .line 35
    iput-boolean v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->isScreenShot:Z

    .line 46
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->retryCount:I

    return-void
.end method

.method private getBitmapFromGL(IILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 10

    mul-int p0, p1, p2

    .line 120
    new-array v0, p0, [I

    .line 121
    new-array p0, p0, [I

    .line 122
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v9, 0x0

    .line 123
    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object v1, p3

    move v4, p1

    move v5, p2

    .line 124
    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p3, v9

    move v1, p3

    :goto_0
    if-ge p3, p2, :cond_1

    move v2, v9

    :goto_1
    if-ge v2, p1, :cond_0

    mul-int v3, p3, p1

    add-int/2addr v3, v2

    .line 128
    aget v3, v0, v3

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x10

    const/high16 v6, -0x10000

    and-int/2addr v5, v6

    const v6, -0xff0100

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    or-int/2addr v3, v4

    sub-int v4, p2, v1

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, p1

    add-int/2addr v4, v2

    .line 132
    aput v3, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;
    .locals 1

    .line 25
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->glSurfaceUtils:Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;-><init>()V

    sput-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->glSurfaceUtils:Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;

    .line 28
    :cond_0
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->glSurfaceUtils:Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;

    return-object v0
.end method

.method private sizeOf(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 146
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    return p0

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    const/4 p0, 0x0

    .line 32
    sput-object p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->glSurfaceUtils:Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public setScreenShot(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->isScreenShot:Z

    return-void
.end method

.method public takeScreenShot(Ljavax/microedition/khronos/opengles/GL10;)Ljava/lang/String;
    .locals 6

    .line 55
    iget-boolean v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->isScreenShot:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->isScreenShot:Z

    .line 60
    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->context:Landroid/content/Context;

    if-nez v2, :cond_1

    return-object v1

    .line 63
    :cond_1
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePicFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/taifeedback/upload/sdk/helper/DeviceHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 66
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v4, v3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->getBitmapFromGL(IILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->sizeOf(Landroid/graphics/Bitmap;)I

    move-result v3

    const/16 v4, 0x4e20

    if-ge v3, v4, :cond_3

    .line 72
    iget p1, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->retryCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->retryCount:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->isScreenShot:Z

    return-object v1

    :cond_2
    return-object v1

    .line 80
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_7

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_9

    :catch_5
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    .line 91
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v3

    sget-object v5, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_4

    .line 95
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catch_6
    move-exception p1

    goto :goto_6

    :catch_7
    move-exception p1

    goto :goto_7

    .line 98
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_8

    :catch_8
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    .line 89
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v3

    sget-object v5, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_5

    .line 95
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    :catch_9
    move-exception p1

    goto :goto_6

    :catch_a
    move-exception p1

    goto :goto_7

    .line 98
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_8

    :catch_b
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    .line 87
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v3

    sget-object v5, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_6

    .line 95
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    :catch_c
    move-exception p1

    goto :goto_6

    :catch_d
    move-exception p1

    goto :goto_7

    .line 98
    :cond_6
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_8

    .line 102
    :goto_6
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8

    .line 100
    :goto_7
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 104
    :goto_8
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->retryCount:I

    return-object v2

    :catchall_1
    move-exception v1

    :goto_9
    if-eqz v4, :cond_7

    .line 95
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    :catch_e
    move-exception p1

    goto :goto_b

    :catch_f
    move-exception p1

    goto :goto_c

    .line 98
    :cond_7
    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_d

    .line 102
    :goto_b
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v2

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d

    .line 100
    :goto_c
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v2

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 104
    :goto_d
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/GLSurfaceUtils;->retryCount:I

    throw v1
.end method
