.class public Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;
.super Ljava/lang/Object;
.source "WakeUpWord.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final DEFAULT_THRESHOLD:I


# instance fields
.field private threshold:I

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->word:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->threshold:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 32
    instance-of v0, p1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;

    if-eqz v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->word:Ljava/lang/String;

    check-cast p1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;

    iget-object p1, p1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->word:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 35
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getThreshold()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->threshold:I

    return p0
.end method

.method public getWord()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->word:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->word:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
