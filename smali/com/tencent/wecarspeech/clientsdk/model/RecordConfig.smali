.class public Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;
.super Ljava/lang/Object;
.source "RecordConfig.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mAudioFormat:I

.field private mSampleRate:I

.field private mVoiceRegion:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;->mAudioFormat:I

    .line 15
    iput p2, p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;->mVoiceRegion:I

    .line 16
    iput p3, p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;->mSampleRate:I

    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;->mAudioFormat:I

    return p0
.end method

.method public getSampleRate()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;->mSampleRate:I

    return p0
.end method

.method public getVoiceRegion()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;->mVoiceRegion:I

    return p0
.end method

.method public setAudioFormat(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;->mAudioFormat:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;->mSampleRate:I

    return-void
.end method

.method public setVoiceRegion(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;->mVoiceRegion:I

    return-void
.end method
