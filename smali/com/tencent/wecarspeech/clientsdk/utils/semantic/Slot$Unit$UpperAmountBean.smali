.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;
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
    name = "UpperAmountBean"
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

    .line 640
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;->this$1:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecimal()Ljava/lang/String;
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;->mDecimal:Ljava/lang/String;

    return-object p0
.end method

.method public getFraction()Ljava/lang/String;
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;->mFraction:Ljava/lang/String;

    return-object p0
.end method

.method public getInteger()Ljava/lang/String;
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;->mInteger:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberType()I
    .locals 0

    .line 679
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;->mNumberType:I

    return p0
.end method

.method public getOrdinal()Ljava/lang/String;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;->mOrdinal:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalOffset()I
    .locals 0

    .line 687
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;->mOriginalOffset:I

    return p0
.end method

.method public getOriginalText()Ljava/lang/String;
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit$UpperAmountBean;->mOriginalText:Ljava/lang/String;

    return-object p0
.end method
