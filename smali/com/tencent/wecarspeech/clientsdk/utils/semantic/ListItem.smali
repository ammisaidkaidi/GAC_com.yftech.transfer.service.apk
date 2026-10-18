.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mAudio:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audio"
    .end annotation
.end field

.field private mTextContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "textContent"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private selfData:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selfData"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudio()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->mAudio:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;

    return-object p0
.end method

.method public getSelfData()Ljava/lang/Object;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->selfData:Ljava/lang/Object;

    return-object p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->mTextContent:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setAudio(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->mAudio:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;

    return-void
.end method

.method public setSelfData(Ljava/lang/Object;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->selfData:Ljava/lang/Object;

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->mTextContent:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->mTitle:Ljava/lang/String;

    return-void
.end method
