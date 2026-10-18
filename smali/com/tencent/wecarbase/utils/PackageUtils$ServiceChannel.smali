.class public final enum Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;
.super Ljava/lang/Enum;
.source "PackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/utils/PackageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceChannel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

.field public static final enum SERVICECHANNEL_APP:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

.field public static final enum SERVICECHANNEL_LINK:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

.field public static final enum SERVICECHANNEL_OPENSDK:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

.field public static final enum SERVICECHANNEL_TASROM:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 65
    new-instance v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    const-string v1, "SERVICECHANNEL_TASROM"

    const-string v2, "TASROM"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->SERVICECHANNEL_TASROM:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    new-instance v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    const-string v1, "SERVICECHANNEL_LINK"

    const-string v2, "LINK"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->SERVICECHANNEL_LINK:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    .line 66
    new-instance v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    const-string v1, "SERVICECHANNEL_APP"

    const-string v2, "APP"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->SERVICECHANNEL_APP:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    new-instance v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    const-string v1, "SERVICECHANNEL_OPENSDK"

    const-string v2, "OPENSDK"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->SERVICECHANNEL_OPENSDK:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    const/4 v0, 0x4

    .line 64
    new-array v0, v0, [Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    sget-object v1, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->SERVICECHANNEL_TASROM:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->SERVICECHANNEL_LINK:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->SERVICECHANNEL_APP:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->SERVICECHANNEL_OPENSDK:Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->$VALUES:[Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;
    .locals 1

    .line 64
    const-class v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;
    .locals 1

    .line 64
    sget-object v0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->$VALUES:[Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    invoke-virtual {v0}, [Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarbase/utils/PackageUtils$ServiceChannel;->value:Ljava/lang/String;

    return-object p0
.end method
