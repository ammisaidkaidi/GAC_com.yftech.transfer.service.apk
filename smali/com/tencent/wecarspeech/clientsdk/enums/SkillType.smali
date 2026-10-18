.class public final enum Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;
.super Ljava/lang/Enum;
.source "SkillType.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

.field public static final enum naviTo:Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

.field public static final enum search:Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    const-string v1, "search"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;->search:Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    .line 8
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    const-string v1, "naviTo"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;->naviTo:Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;->search:Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;->naviTo:Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;
    .locals 1

    .line 5
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;
    .locals 1

    .line 5
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    invoke-virtual {v0}, [Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;

    return-object v0
.end method
