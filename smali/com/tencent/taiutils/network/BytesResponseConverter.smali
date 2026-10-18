.class public Lcom/tencent/taiutils/network/BytesResponseConverter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/taiutils/network/HttpResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/taiutils/network/HttpResponseConverter<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/taiutils/network/BytesResponseConverter;->convert(Lokhttp3/Response;)[B

    move-result-object p0

    return-object p0
.end method

.method public convert(Lokhttp3/Response;)[B
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p0

    return-object p0
.end method
