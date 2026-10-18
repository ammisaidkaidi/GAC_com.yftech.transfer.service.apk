.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;
.super Ljava/lang/Object;
.source "Slot.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTime"
.end annotation


# instance fields
.field private mCalendarTypeOfText:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "calendar_type_of_text"
    .end annotation
.end field

.field private mDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field private mDay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day"
    .end annotation
.end field

.field private mExpressType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "express_type"
    .end annotation
.end field

.field private mHour:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hour"
    .end annotation
.end field

.field private mMin:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min"
    .end annotation
.end field

.field private mMon:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mon"
    .end annotation
.end field

.field private mPeriodOfDay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "period_of_day"
    .end annotation
.end field

.field private mSec:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sec"
    .end annotation
.end field

.field private mTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private mWeek:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "week"
    .end annotation
.end field

.field private mYear:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 411
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mTime:Ljava/lang/String;

    const/4 v0, -0x1

    .line 413
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mYear:I

    .line 415
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mMon:I

    .line 417
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mDay:I

    .line 419
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mWeek:I

    .line 421
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mHour:I

    .line 423
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mMin:I

    .line 425
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mSec:I

    const/4 v0, 0x0

    .line 427
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mPeriodOfDay:I

    .line 429
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mCalendarTypeOfText:I

    .line 431
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mExpressType:I

    return-void
.end method


# virtual methods
.method public getCalendarTypeOfText()I
    .locals 0

    .line 475
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mCalendarTypeOfText:I

    return p0
.end method

.method public getDate()Ljava/lang/String;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method public getDay()I
    .locals 0

    .line 451
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mDay:I

    return p0
.end method

.method public getExpressType()I
    .locals 0

    .line 479
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mExpressType:I

    return p0
.end method

.method public getHour()I
    .locals 0

    .line 459
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mHour:I

    return p0
.end method

.method public getMin()I
    .locals 0

    .line 463
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mMin:I

    return p0
.end method

.method public getMon()I
    .locals 0

    .line 447
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mMon:I

    return p0
.end method

.method public getPeriodOfDay()I
    .locals 0

    .line 471
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mPeriodOfDay:I

    return p0
.end method

.method public getSec()I
    .locals 0

    .line 467
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mSec:I

    return p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mTime:Ljava/lang/String;

    return-object p0
.end method

.method public getWeek()I
    .locals 0

    .line 455
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mWeek:I

    return p0
.end method

.method public getYear()I
    .locals 0

    .line 443
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;->mYear:I

    return p0
.end method
