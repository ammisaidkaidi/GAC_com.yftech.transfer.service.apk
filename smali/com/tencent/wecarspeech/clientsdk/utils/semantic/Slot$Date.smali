.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;
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
    name = "Date"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
        "TT;>.SlotValue;"
    }
.end annotation


# instance fields
.field private mDatetime:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "datetime"
    .end annotation
.end field

.field private mInterval:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Interval;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interval"
    .end annotation
.end field

.field private mIsValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_valid"
    .end annotation
.end field

.field private mOriginalOffset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_offset"
    .end annotation
.end field

.field private mType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;->this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;->mDatetime:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->getDate()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDatetime()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;->mDatetime:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;

    return-object p0
.end method

.method public getInterval()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Interval;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;->mInterval:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Interval;

    return-object p0
.end method

.method public getOriginalOffset()I
    .locals 0

    .line 389
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;->mOriginalOffset:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 373
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;->mType:I

    return p0
.end method

.method public isValid()Z
    .locals 0

    .line 385
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;->mIsValid:Z

    return p0
.end method
