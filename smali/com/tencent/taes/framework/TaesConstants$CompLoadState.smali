.class public final enum Lcom/tencent/taes/framework/TaesConstants$CompLoadState;
.super Ljava/lang/Enum;
.source "TaesConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/TaesConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompLoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/taes/framework/TaesConstants$CompLoadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum ERROR_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum ERROR_LOAD_OVER_TIME:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum ERROR_LOCAL_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum ERROR_NO_FOUND:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum ERROR_NO_INIT:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum ERROR_SERVER_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum ERROR_SMS_BIND_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum ERROR_SMS_NO_FOUND:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum IDLE:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum LOADING:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

.field public static final enum SUCCESS:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 10
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "IDLE"

    const-string v2, "\u65e0\u6548\u72b6\u6001"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->IDLE:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 11
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "LOADING"

    const-string v2, "\u52a0\u8f7d\u4e2d"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->LOADING:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 12
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "SUCCESS"

    const-string v2, "\u52a0\u8f7d\u6210\u529f"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->SUCCESS:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 13
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "ERROR_NO_INIT"

    const-string v2, "\u6846\u67b6\u672a\u521d\u59cb\u5316"

    const/4 v6, 0x3

    const/16 v7, -0x3e8

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_NO_INIT:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 14
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "ERROR_NO_FOUND"

    const-string v2, "\u7ec4\u4ef6\u672a\u627e\u5230"

    const/4 v7, 0x4

    const/16 v8, -0x3e9

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_NO_FOUND:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 15
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "ERROR_LOAD_OVER_TIME"

    const-string v2, "\u7ec4\u4ef6\u52a0\u8f7d\u8d85\u65f6"

    const/4 v8, 0x5

    const/16 v9, -0x3ea

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_LOAD_OVER_TIME:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 16
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "ERROR_SMS_NO_FOUND"

    const-string v2, "SMS \u670d\u52a1\u672a\u627e\u5230"

    const/4 v9, 0x6

    const/16 v10, -0x7d0

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_SMS_NO_FOUND:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 17
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "ERROR_SMS_BIND_FAIL"

    const-string v2, "SMS \u670d\u52a1\u7ed1\u5b9a\u5931\u8d25"

    const/4 v10, 0x7

    const/16 v11, -0x7d1

    invoke-direct {v0, v1, v10, v11, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_SMS_BIND_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 18
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "ERROR_SERVER_COMP_LOAD_FAIL"

    const-string v2, "\u670d\u52a1\u7ec4\u4ef6\u52a0\u8f7d\u5931\u8d25: "

    const/16 v11, 0x8

    const/16 v12, -0x7d2

    invoke-direct {v0, v1, v11, v12, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_SERVER_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 19
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "ERROR_LOCAL_COMP_LOAD_FAIL"

    const-string v2, "\u672c\u5730\u7ec4\u4ef6\u52a0\u8f7d\u5931\u8d25: "

    const/16 v12, 0x9

    const/16 v13, -0x7d3

    invoke-direct {v0, v1, v12, v13, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_LOCAL_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 20
    new-instance v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const-string v1, "ERROR_COMP_LOAD_FAIL"

    const-string v2, "\u7ec4\u4ef6\u52a0\u8f7d\u5931\u8d25: "

    const/16 v13, 0xa

    const/16 v14, -0x7d4

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    const/16 v0, 0xb

    .line 8
    new-array v0, v0, [Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->IDLE:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->LOADING:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->SUCCESS:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_NO_INIT:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_NO_FOUND:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_LOAD_OVER_TIME:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_SMS_NO_FOUND:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_SMS_BIND_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_SERVER_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_LOCAL_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_COMP_LOAD_FAIL:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    aput-object v1, v0, v13

    sput-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->$VALUES:[Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->code:I

    .line 29
    iput-object p4, p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/taes/framework/TaesConstants$CompLoadState;
    .locals 1

    .line 8
    const-class v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    return-object p0
.end method

.method public static values()[Lcom/tencent/taes/framework/TaesConstants$CompLoadState;
    .locals 1

    .line 8
    sget-object v0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->$VALUES:[Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    invoke-virtual {v0}, [Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->code:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->message:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
