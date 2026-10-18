.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;
.super Ljava/lang/Object;
.source "Slot.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LowerAmountBean"
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

.field private mOriginalOffset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_offset"
    .end annotation
.end field

.field private mOriginalText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_text"
    .end annotation
.end field

.field final synthetic this$1:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;->this$1:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecimal()Ljava/lang/String;
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;->mDecimal:Ljava/lang/String;

    return-object p0
.end method

.method public getFraction()Ljava/lang/String;
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;->mFraction:Ljava/lang/String;

    return-object p0
.end method

.method public getInteger()Ljava/lang/String;
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;->mInteger:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberType()I
    .locals 0

    .line 623
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;->mNumberType:I

    return p0
.end method

.method public getOrdinal()Ljava/lang/String;
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;->mOrdinal:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalOffset()I
    .locals 0

    .line 631
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;->mOriginalOffset:I

    return p0
.end method

.method public getOriginalText()Ljava/lang/String;
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$LowerAmountBean;->mOriginalText:Ljava/lang/String;

    return-object p0
.end method
