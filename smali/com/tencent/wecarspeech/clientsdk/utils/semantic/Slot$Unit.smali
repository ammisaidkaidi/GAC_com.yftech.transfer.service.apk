.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;
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
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
        "TT;>.SlotValue;"
    }
.end annotation


# instance fields
.field private mAmount:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Unit.AmountBean;"
        }
    .end annotation
.end field

.field private mLowerAmount:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lower_amount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Unit.",
            "LowerAmountBean;"
        }
    .end annotation
.end field

.field private mOriginalOffset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_offset"
    .end annotation
.end field

.field private mUnit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unit"
    .end annotation
.end field

.field private mUnitNumberType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unit_number_type"
    .end annotation
.end field

.field private mUpperAmount:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upper_amount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Unit.UpperAmountBean;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;->this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V

    return-void
.end method


# virtual methods
.method public getAmount()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Unit.AmountBean;"
        }
    .end annotation

    .line 500
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;->mAmount:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;

    return-object p0
.end method

.method public getAmountInteger()Ljava/lang/String;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;->mAmount:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;->getInteger()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLowerAmount()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Unit.",
            "LowerAmountBean;"
        }
    .end annotation

    .line 508
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;->mLowerAmount:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;

    return-object p0
.end method

.method public getOriginalOffset()I
    .locals 0

    .line 512
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;->mOriginalOffset:I

    return p0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;->mUnit:Ljava/lang/String;

    return-object p0
.end method

.method public getUnitNumberType()I
    .locals 0

    .line 520
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;->mUnitNumberType:I

    return p0
.end method

.method public getUpperAmount()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Unit.UpperAmountBean;"
        }
    .end annotation

    .line 524
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;->mUpperAmount:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;

    return-object p0
.end method
