.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;
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
    name = "AmountBean"
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

    .line 528
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;->this$1:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecimal()Ljava/lang/String;
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;->mDecimal:Ljava/lang/String;

    return-object p0
.end method

.method public getFraction()Ljava/lang/String;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;->mFraction:Ljava/lang/String;

    return-object p0
.end method

.method public getInteger()Ljava/lang/String;
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;->mInteger:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberType()I
    .locals 0

    .line 567
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;->mNumberType:I

    return p0
.end method

.method public getOrdinal()Ljava/lang/String;
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;->mOrdinal:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalOffset()I
    .locals 0

    .line 575
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;->mOriginalOffset:I

    return p0
.end method

.method public getOriginalText()Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$AmountBean;->mOriginalText:Ljava/lang/String;

    return-object p0
.end method
