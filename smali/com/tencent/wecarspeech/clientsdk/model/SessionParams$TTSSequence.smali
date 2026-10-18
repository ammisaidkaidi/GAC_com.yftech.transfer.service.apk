.class public final enum Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;
.super Ljava/lang/Enum;
.source "SessionParams.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TTSSequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

.field public static final enum AFTER:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

.field public static final enum WITH:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    const-string v1, "WITH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;->WITH:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    .line 77
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    const-string v1, "AFTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;->AFTER:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    const/4 v0, 0x2

    .line 67
    new-array v0, v0, [Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;->WITH:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;->AFTER:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;
    .locals 1

    .line 67
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;
    .locals 1

    .line 67
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    invoke-virtual {v0}, [Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    return-object v0
.end method
