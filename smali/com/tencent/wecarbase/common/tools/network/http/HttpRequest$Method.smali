.class public final Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest$Method;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Method"
.end annotation


# static fields
.field public static final DELETE:I = 0x3

.field public static final GET:I = 0x0

.field public static final HEAD:I = 0x4

.field public static final OPTIONS:I = 0x5

.field public static final PATCH:I = 0x7

.field public static final POST:I = 0x1

.field public static final PUT:I = 0x2

.field public static final TRACE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest$Method;->this$0:Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
