.class public Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter$ResultCode;
.super Ljava/lang/Object;
.source "TaskReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/report/TaskReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultCode"
.end annotation


# static fields
.field public static EXECUTE_ERROR:Ljava/lang/String; = "execute_error"

.field public static INTERRUPT:Ljava/lang/String; = "interrupt"

.field public static NETWORK_ERROR:Ljava/lang/String; = "network_error"

.field public static NOT_SUPPORT:Ljava/lang/String; = "not_support"

.field public static RESOURCE_NOT_FOUND:Ljava/lang/String; = "resource_not_found "

.field public static SEMANTIC_ERROR:Ljava/lang/String; = "semantic_error"

.field public static SUCCESS:Ljava/lang/String; = "success"

.field public static TIMEOUT_ERROR:Ljava/lang/String; = "timeout_error"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
