.class public Lcom/tencent/taiutils/log/DefaultLogger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/taiutils/log/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appenderClose()V
    .locals 0

    return-void
.end method

.method public appenderFlush(Z)V
    .locals 0

    return-void
.end method

.method public logD(Ljava/lang/String;IJJLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logE(Ljava/lang/String;IJJLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logI(Ljava/lang/String;IJJLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logV(Ljava/lang/String;IJJLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logW(Ljava/lang/String;IJJLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
