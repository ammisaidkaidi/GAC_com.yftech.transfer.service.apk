.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;
.super Ljava/lang/Object;
.source "Audio.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field private mOffsetInMilliseconds:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offsetInMilliseconds"
    .end annotation
.end field

.field private mTotalMilliseconds:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalMilliseconds"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffsetInMilliseconds()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;->mOffsetInMilliseconds:I

    return p0
.end method

.method public getTotalMilliseconds()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;->mTotalMilliseconds:I

    return p0
.end method

.method public setOffsetInMilliseconds(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;->mOffsetInMilliseconds:I

    return-void
.end method

.method public setTotalMilliseconds(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;->mTotalMilliseconds:I

    return-void
.end method
