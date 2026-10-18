.class public final enum Lcom/tencent/taes/remote/api/account/bean/TriggerSource;
.super Ljava/lang/Enum;
.source "TriggerSource.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/taes/remote/api/account/bean/TriggerSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

.field public static final enum iqt:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

.field public static final enum mpp:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

.field public static final enum navi:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

.field public static final enum speech:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

.field public static final enum suixing:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

.field public static final enum userswitch:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    const-string v1, "iqt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->iqt:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    .line 11
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    const-string v1, "suixing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->suixing:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    .line 12
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    const-string v1, "navi"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->navi:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    .line 13
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    const-string v1, "speech"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->speech:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    .line 14
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    const-string v1, "mpp"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->mpp:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    .line 15
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    const-string v1, "userswitch"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->userswitch:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    const/4 v0, 0x6

    .line 8
    new-array v0, v0, [Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->iqt:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->suixing:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->navi:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->speech:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->mpp:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->userswitch:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    aput-object v1, v0, v7

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->$VALUES:[Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/TriggerSource;
    .locals 1

    .line 8
    const-class v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    return-object p0
.end method

.method public static values()[Lcom/tencent/taes/remote/api/account/bean/TriggerSource;
    .locals 1

    .line 8
    sget-object v0, Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->$VALUES:[Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    invoke-virtual {v0}, [Lcom/tencent/taes/remote/api/account/bean/TriggerSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    return-object v0
.end method
