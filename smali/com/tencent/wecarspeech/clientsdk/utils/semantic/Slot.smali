.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;
.super Ljava/lang/Object;
.source "Slot.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Confirm;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$DateTime;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Interval;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Location;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Slot"


# instance fields
.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mSelectResult:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selectResult"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.SelectResult;"
        }
    .end annotation
.end field

.field private mSlotStruct:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slot_struct"
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private mValues:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "values"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllEntityText()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Slot"

    const-string v0, "can\'t find entity text"

    .line 54
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 57
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 60
    :try_start_0
    check-cast v2, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Slot"

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEntity Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getLocation()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Location;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Location;->getCity()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Slot"

    const-string v0, "can\'t find city"

    .line 74
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getConfirm()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Confirm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Confirm;"
        }
    .end annotation

    .line 180
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Confirm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Slot"

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnit Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getDateValue()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;->getDate()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Slot"

    const-string v0, "can\'t find date"

    .line 83
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getDateValue()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Date;"
        }
    .end annotation

    .line 153
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Slot"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDate Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntity()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Entity;"
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Slot"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntity Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntityText()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getEntity()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Slot"

    const-string v0, "can\'t find entity text"

    .line 48
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getInteger()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getNumber()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;->getInteger()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Slot"

    const-string v0, "can\'t find integer"

    .line 92
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getLocation()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Location;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.",
            "Location;"
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Slot"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocation Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Number;"
        }
    .end annotation

    .line 162
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Slot"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumber Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOriginalText()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getValue()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Slot"

    const-string v0, "can\'t find original text"

    .line 39
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.SelectResult;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mSelectResult:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public getUnit()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.Unit;"
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Slot"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnit Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
            "TT;>.SlotValue;"
        }
    .end annotation

    .line 122
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Slot"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasValue()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasValue(Ljava/lang/String;)Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDate()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mSlotStruct:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEntity()Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mSlotStruct:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLocation()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mSlotStruct:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNumber()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mSlotStruct:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnit()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->mSlotStruct:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
