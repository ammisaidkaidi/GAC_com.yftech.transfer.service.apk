.class final enum Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;
.super Ljava/lang/Enum;
.source "MediaControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

.field public static final enum EMPTY:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

.field public static final enum MUSIC:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

.field static final NAME:Ljava/lang/String; = "media_type"

.field public static final enum VIDEO:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

.field private static items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private types:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 82
    new-instance v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    const-string v1, "MUSIC"

    const-string v2, "\u97f3\u4e50"

    const-string v3, "\u591a\u5a92\u4f53"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->MUSIC:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    .line 83
    new-instance v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    const-string v1, "VIDEO"

    const-string v2, "\u89c6\u9891"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->VIDEO:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    .line 84
    new-instance v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    const-string v1, "EMPTY"

    const-string v2, "\u7a7a"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->EMPTY:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    const/4 v0, 0x3

    .line 80
    new-array v0, v0, [Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    sget-object v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->MUSIC:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->VIDEO:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->EMPTY:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->$VALUES:[Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    .line 89
    new-array v0, v5, [Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    sget-object v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->MUSIC:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->VIDEO:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->items:Ljava/util/List;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->types:[Ljava/lang/String;

    return-void
.end method

.method private equals(Ljava/lang/String;)Z
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->types:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->types:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static match(Ljava/lang/String;)Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;
    .locals 3

    .line 114
    sget-object v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    .line 115
    invoke-direct {v1, p0}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->equals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 119
    :cond_1
    sget-object p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->EMPTY:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;
    .locals 1

    .line 80
    const-class v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;
    .locals 1

    .line 80
    sget-object v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->$VALUES:[Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    invoke-virtual {v0}, [Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaType:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->types:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
