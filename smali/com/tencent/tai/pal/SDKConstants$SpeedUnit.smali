.class public final enum Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;
.super Ljava/lang/Enum;
.source "SDKConstants.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/SDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeedUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;",
        ">;",
        "Lcom/tencent/tai/pal/INoProguardClass;"
    }
.end annotation


# static fields
.field public static final enum KILOMETERS_PER_HOUR:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

.field public static final enum METERS_PER_SECOND:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

.field private static final synthetic a:[Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    const-string v1, "METERS_PER_SECOND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->METERS_PER_SECOND:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    .line 59
    new-instance v0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    const-string v1, "KILOMETERS_PER_HOUR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->KILOMETERS_PER_HOUR:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    const/4 v0, 0x2

    .line 51
    new-array v0, v0, [Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    sget-object v1, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->METERS_PER_SECOND:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->KILOMETERS_PER_HOUR:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->a:[Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;
    .locals 1

    .line 51
    const-class v0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;
    .locals 1

    .line 51
    sget-object v0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->a:[Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    invoke-virtual {v0}, [Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    return-object v0
.end method
