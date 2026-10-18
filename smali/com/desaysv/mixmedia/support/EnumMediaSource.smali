.class public final enum Lcom/desaysv/mixmedia/support/EnumMediaSource;
.super Ljava/lang/Enum;
.source "EnumMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/desaysv/mixmedia/support/EnumMediaSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/desaysv/mixmedia/support/EnumMediaSource;

.field public static final enum BT_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

.field public static final enum ONLINE_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

.field public static final enum ONLINE_TRACK:Lcom/desaysv/mixmedia/support/EnumMediaSource;

.field public static final enum USB0_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;


# instance fields
.field private code:I

.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 9
    new-instance v6, Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const-string v1, "ONLINE_MUSIC"

    const-string v4, "\u5728\u7ebf\u97f3\u4e50"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/desaysv/mixmedia/support/EnumMediaSource;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ONLINE_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    .line 10
    new-instance v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const-string v8, "BT_MUSIC"

    const-string v11, "\u84dd\u7259\u97f3\u4e50"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/desaysv/mixmedia/support/EnumMediaSource;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->BT_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    .line 11
    new-instance v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const-string v2, "USB0_MUSIC"

    const-string v5, "USB\u97f3\u4e50"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/desaysv/mixmedia/support/EnumMediaSource;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->USB0_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    .line 12
    new-instance v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const-string v8, "ONLINE_TRACK"

    const-string v11, "\u559c\u9a6c\u62c9\u96c5"

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v12, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/desaysv/mixmedia/support/EnumMediaSource;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ONLINE_TRACK:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/desaysv/mixmedia/support/EnumMediaSource;

    sget-object v1, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ONLINE_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/desaysv/mixmedia/support/EnumMediaSource;->BT_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/desaysv/mixmedia/support/EnumMediaSource;->USB0_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ONLINE_TRACK:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->$VALUES:[Lcom/desaysv/mixmedia/support/EnumMediaSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->code:I

    .line 22
    iput-object p4, p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->name:Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->index:I

    return-void
.end method

.method public static getMediaSourceByCode(I)Lcom/desaysv/mixmedia/support/EnumMediaSource;
    .locals 5

    .line 39
    invoke-static {}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->values()[Lcom/desaysv/mixmedia/support/EnumMediaSource;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    iget v4, v3, Lcom/desaysv/mixmedia/support/EnumMediaSource;->code:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMediaSourceByIndex(I)Lcom/desaysv/mixmedia/support/EnumMediaSource;
    .locals 1

    if-ltz p0, :cond_1

    .line 48
    invoke-static {}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->values()[Lcom/desaysv/mixmedia/support/EnumMediaSource;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->values()[Lcom/desaysv/mixmedia/support/EnumMediaSource;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static indexOf(Lcom/desaysv/mixmedia/support/EnumMediaSource;)I
    .locals 1

    .line 53
    invoke-static {}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->values()[Lcom/desaysv/mixmedia/support/EnumMediaSource;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/desaysv/mixmedia/support/EnumMediaSource;
    .locals 1

    .line 8
    const-class v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;

    return-object p0
.end method

.method public static values()[Lcom/desaysv/mixmedia/support/EnumMediaSource;
    .locals 1

    .line 8
    sget-object v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->$VALUES:[Lcom/desaysv/mixmedia/support/EnumMediaSource;

    invoke-virtual {v0}, [Lcom/desaysv/mixmedia/support/EnumMediaSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/desaysv/mixmedia/support/EnumMediaSource;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->code:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->index:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->name:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnumMediaSource{super.name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
