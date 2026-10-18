.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;
.super Ljava/lang/Object;
.source "Audio.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Stream;
    }
.end annotation


# instance fields
.field private mMetadata:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metadata"
    .end annotation
.end field

.field private mStream:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Stream;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream"
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
.method public getMetadata()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;->mMetadata:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;

    return-object p0
.end method

.method public getStream()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Stream;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;->mStream:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Stream;

    return-object p0
.end method

.method public setMetadata(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;->mMetadata:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Metadata;

    return-void
.end method

.method public setStream(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Stream;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;->mStream:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Stream;

    return-void
.end method
