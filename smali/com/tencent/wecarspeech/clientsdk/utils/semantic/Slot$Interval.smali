.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Interval;
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
    name = "Interval"
.end annotation


# instance fields
.field private mEnd:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation
.end field

.field private mStart:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Interval;->mEnd:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;

    return-object p0
.end method

.method public getStart()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Interval;->mStart:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;

    return-object p0
.end method
