.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;
.super Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;
.source "Slot.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Number"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
        "TT;>.SlotValue;"
    }
.end annotation


# instance fields
.field private mDecimal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "decimal"
    .end annotation
.end field

.field private mFraction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fraction"
    .end annotation
.end field

.field private mInteger:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "integer"
    .end annotation
.end field

.field private mNumberType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number_type"
    .end annotation
.end field

.field private mOrdinal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ordinal"
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V

    const/4 p1, 0x0

    .line 324
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mNumberType:I

    const-string p1, ""

    .line 326
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mFraction:Ljava/lang/String;

    const-string p1, ""

    .line 328
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mDecimal:Ljava/lang/String;

    const-string p1, ""

    .line 330
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mInteger:Ljava/lang/String;

    const-string p1, ""

    .line 332
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mOrdinal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDecimal()Ljava/lang/String;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mDecimal:Ljava/lang/String;

    return-object p0
.end method

.method public getFraction()Ljava/lang/String;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mFraction:Ljava/lang/String;

    return-object p0
.end method

.method public getInteger()Ljava/lang/String;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mInteger:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberType()I
    .locals 0

    .line 344
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mNumberType:I

    return p0
.end method

.method public getOrdinal()Ljava/lang/String;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->mOrdinal:Ljava/lang/String;

    return-object p0
.end method
