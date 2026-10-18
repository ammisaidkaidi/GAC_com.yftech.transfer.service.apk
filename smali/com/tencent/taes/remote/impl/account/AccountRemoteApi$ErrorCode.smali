.class final enum Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;
.super Ljava/lang/Enum;
.source "AccountRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

.field public static final enum ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

.field public static final enum ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;


# instance fields
.field err:I

.field msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 64
    new-instance v0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    const-string v1, "ERROR_CODE_SERVICE_NOT_START"

    const-string v2, "Local Server not start!"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    .line 65
    new-instance v0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    const-string v1, "ERROR_CODE_LOCAL_SERVER_ERROR"

    const-string v2, "Local Server error!"

    const/4 v4, 0x1

    const/4 v5, -0x3

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    sget-object v1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->$VALUES:[Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->err:I

    .line 72
    iput-object p4, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->msg:Ljava/lang/String;

    return-void
.end method

.method private buildErrorResult(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "err"

    .line 80
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "info"

    .line 81
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AccountRemoteApi"

    const-string v0, "buildErrorResult error"

    .line 83
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;
    .locals 1

    .line 63
    const-class v0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;
    .locals 1

    .line 63
    sget-object v0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->$VALUES:[Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {v0}, [Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public buildJson()Ljava/lang/String;
    .locals 2

    .line 75
    iget v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->err:I

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->msg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildErrorResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
