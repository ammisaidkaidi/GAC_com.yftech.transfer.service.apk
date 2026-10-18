.class public final enum Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;
.super Ljava/lang/Enum;
.source "VehicleControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/tencent/access/VehicleControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VehicleControlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

.field public static final enum AP_WIFI:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

.field public static final enum BT_BOOK:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

.field public static final enum EMPTY:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;


# instance fields
.field control:Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;

.field private positions:[Ljava/lang/String;

.field private tips:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 263
    new-instance v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    const-string v1, "BT_BOOK"

    invoke-static {}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->access$000()Lcom/yftech/transfer/tencent/access/vehicle/AppControl;

    move-result-object v2

    const-string v3, "\u6240\u6709\u901a\u8baf"

    const-string v4, "\u901a\u8baf\u5f55"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;-><init>(Ljava/lang/String;ILcom/yftech/transfer/tencent/access/vehicle/BaseControl;[Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->BT_BOOK:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    .line 264
    new-instance v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    const-string v1, "AP_WIFI"

    invoke-static {}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->access$000()Lcom/yftech/transfer/tencent/access/vehicle/AppControl;

    move-result-object v2

    const-string v3, "wifi\u70ed\u70b9"

    const-string v5, "\u79fb\u52a8\u70ed\u70b9"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;-><init>(Ljava/lang/String;ILcom/yftech/transfer/tencent/access/vehicle/BaseControl;[Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->AP_WIFI:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    .line 266
    new-instance v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    const-string v1, "EMPTY"

    const-string v2, "\u7a7a"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;-><init>(Ljava/lang/String;ILcom/yftech/transfer/tencent/access/vehicle/BaseControl;[Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->EMPTY:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    const/4 v0, 0x3

    .line 228
    new-array v0, v0, [Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    sget-object v1, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->BT_BOOK:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->AP_WIFI:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->EMPTY:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->$VALUES:[Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILcom/yftech/transfer/tencent/access/vehicle/BaseControl;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 282
    iput-object p3, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->control:Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;

    .line 283
    iput-object p4, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->positions:[Ljava/lang/String;

    return-void
.end method

.method private equals(Ljava/lang/String;)Z
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->positions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->positions:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 300
    :goto_0
    iget-object v2, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->positions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->positions:[Ljava/lang/String;

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

.method static match(Ljava/lang/String;)Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;
    .locals 0

    .line 320
    sget-object p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->EMPTY:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;
    .locals 1

    .line 228
    const-class v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    return-object p0
.end method

.method public static values()[Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;
    .locals 1

    .line 228
    sget-object v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->$VALUES:[Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    invoke-virtual {v0}, [Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    return-object v0
.end method


# virtual methods
.method public getTips()Ljava/lang/String;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->tips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->positions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->tips:Ljava/lang/String;

    .line 295
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->tips:Ljava/lang/String;

    return-object p0
.end method

.method setTips(Ljava/lang/String;)Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->tips:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[positions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->positions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",tips:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->tips:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
