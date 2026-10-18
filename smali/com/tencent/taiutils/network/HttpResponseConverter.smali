.class public interface abstract Lcom/tencent/taiutils/network/HttpResponseConverter;
.super Ljava/lang/Object;
.source ""


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
.field public static final BYTES:Lcom/tencent/taiutils/network/HttpResponseConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/taiutils/network/HttpResponseConverter<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final STRING:Lcom/tencent/taiutils/network/HttpResponseConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/taiutils/network/HttpResponseConverter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/taiutils/network/StringResponseConverter;

    invoke-direct {v0}, Lcom/tencent/taiutils/network/StringResponseConverter;-><init>()V

    sput-object v0, Lcom/tencent/taiutils/network/HttpResponseConverter;->STRING:Lcom/tencent/taiutils/network/HttpResponseConverter;

    new-instance v0, Lcom/tencent/taiutils/network/BytesResponseConverter;

    invoke-direct {v0}, Lcom/tencent/taiutils/network/BytesResponseConverter;-><init>()V

    sput-object v0, Lcom/tencent/taiutils/network/HttpResponseConverter;->BYTES:Lcom/tencent/taiutils/network/HttpResponseConverter;

    return-void
.end method


# virtual methods
.method public abstract convert(Lokhttp3/Response;)Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation
.end method
