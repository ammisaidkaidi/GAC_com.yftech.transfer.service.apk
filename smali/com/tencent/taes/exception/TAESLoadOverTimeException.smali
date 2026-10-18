.class public Lcom/tencent/taes/exception/TAESLoadOverTimeException;
.super Ljava/lang/Exception;
.source "TAESLoadOverTimeException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Component loading timeout, optimize component initialization process"

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
