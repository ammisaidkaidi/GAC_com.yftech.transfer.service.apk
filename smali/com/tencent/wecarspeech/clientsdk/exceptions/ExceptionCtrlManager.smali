.class public Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;
.super Ljava/lang/Object;
.source "ExceptionCtrlManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExceptionCtrlManager"

.field private static exceptionCtrlManager:Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;


# instance fields
.field private isThrowException:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->isThrowException:Z

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;
    .locals 1

    .line 13
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->exceptionCtrlManager:Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->exceptionCtrlManager:Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    .line 15
    :cond_0
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->exceptionCtrlManager:Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    return-object v0
.end method


# virtual methods
.method public setIsThrowException(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->isThrowException:Z

    return-void
.end method

.method public throwException(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->isThrowException:Z

    if-nez p0, :cond_0

    const-string p0, "ExceptionCtrlManager"

    .line 31
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    throw p1
.end method
