.class public Lcom/tencent/taes/framework/APIResult;
.super Ljava/lang/Object;
.source "APIResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ERROR_API_RESULT_NULL:I = 0x192

.field public static final ERROR_CALL_NO_SUCH_API:I = 0x191

.field public static final ERROR_FRAMEWORK_UNINITIALIZED:I = 0x64

.field public static final ERROR_MODULE_FAIL:I = 0x131

.field public static final ERROR_MODULE_LAZY_LOAD:I = 0x12f

.field public static final ERROR_MODULE_LOADING:I = 0x130

.field public static final ERROR_MODULE_NOT_FOUND:I = 0x133

.field public static final ERROR_MODULE_NO_LOAD:I = 0x12e

.field public static final ERROR_MODULE_UNLOAD:I = 0x132

.field public static final ERROR_NO_AUTH:I = 0x65

.field public static final ERROR_NO_CONFIG_FILE:I = 0x66

.field public static final ERROR_PUBLISH_EVENT_INVALID:I = 0x1f4

.field public static final ERROR_SERVER_BIND_FAIL:I = 0x258

.field public static final ERROR_SERVER_DISCONNECT:I = 0x259

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "APIResult"


# instance fields
.field public final code:I

.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/tencent/taes/framework/APIResult;->code:I

    .line 100
    iput-object p2, p0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    return-void
.end method

.method public static of(ILjava/lang/Object;)Lcom/tencent/taes/framework/APIResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Lcom/tencent/taes/framework/APIResult<",
            "TT;>;"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/tencent/taes/framework/APIResult;

    invoke-direct {v0, p0, p1}, Lcom/tencent/taes/framework/APIResult;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static ofData(Ljava/lang/Object;)Lcom/tencent/taes/framework/APIResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/tencent/taes/framework/APIResult<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    invoke-static {v0, p0}, Lcom/tencent/taes/framework/APIResult;->of(ILjava/lang/Object;)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0
.end method

.method public static ofError(I)Lcom/tencent/taes/framework/APIResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/tencent/taes/framework/APIResult<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 213
    invoke-static {p0, v0}, Lcom/tencent/taes/framework/APIResult;->of(ILjava/lang/Object;)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0
.end method

.method public static ofSuccess(Ljava/lang/Object;)Lcom/tencent/taes/framework/APIResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/tencent/taes/framework/APIResult<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    invoke-static {v0, p0}, Lcom/tencent/taes/framework/APIResult;->of(ILjava/lang/Object;)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0
.end method

.method public static translateCode(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "ERROR_SERVER_DISCONNECT"

    return-object p0

    :pswitch_1
    const-string p0, "ERROR_SERVER_BIND_FAIL"

    return-object p0

    :pswitch_2
    const-string p0, "ERROR_API_RESULT_NULL"

    return-object p0

    :pswitch_3
    const-string p0, "ERROR_CALL_NO_SUCH_API"

    return-object p0

    :pswitch_4
    const-string p0, "ERROR_MODULE_NOT_FOUND"

    return-object p0

    :pswitch_5
    const-string p0, "ERROR_MODULE_UNLOAD"

    return-object p0

    :pswitch_6
    const-string p0, "ERROR_MODULE_FAIL"

    return-object p0

    :pswitch_7
    const-string p0, "ERROR_MODULE_LOADING"

    return-object p0

    :pswitch_8
    const-string p0, "ERROR_NO_CONFIG_FILE"

    return-object p0

    :pswitch_9
    const-string p0, "ERROR_NO_AUTH"

    return-object p0

    :pswitch_a
    const-string p0, "ERROR_FRAMEWORK_UNINITIALIZED"

    return-object p0

    :cond_0
    const-string p0, "ERROR_PUBLISH_EVENT_INVALID"

    return-object p0

    :cond_1
    const-string p0, "ERROR_MODULE_NO_LOAD"

    return-object p0

    :cond_2
    const-string p0, "SUCCESS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x130
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x191
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x258
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public codeDescription()Ljava/lang/String;
    .locals 0

    .line 150
    iget p0, p0, Lcom/tencent/taes/framework/APIResult;->code:I

    invoke-static {p0}, Lcom/tencent/taes/framework/APIResult;->translateCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasSuccessData()Z
    .locals 1

    .line 168
    iget v0, p0, Lcom/tencent/taes/framework/APIResult;->code:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccess()Z
    .locals 0

    .line 159
    iget p0, p0, Lcom/tencent/taes/framework/APIResult;->code:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
