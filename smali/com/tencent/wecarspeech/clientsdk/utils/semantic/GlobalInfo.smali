.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final LIST:Ljava/lang/String; = "LIST"

.field public static final LIST_CYCLE:Ljava/lang/String; = "LIST_CYCLE"

.field public static final RANDOM:Ljava/lang/String; = "RANDOM"

.field public static final SINGLE_CYCLE:Ljava/lang/String; = "SINGLE_CYCLE"


# instance fields
.field private mBackgroundAudio:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backgroundAudio"
    .end annotation
.end field

.field private mPlayMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playMode"
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
.method public getBackgroundAudio()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;->mBackgroundAudio:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;

    return-object p0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;->mPlayMode:Ljava/lang/String;

    return-object p0
.end method

.method public setBackgroundAudio(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;->mBackgroundAudio:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;

    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;->mPlayMode:Ljava/lang/String;

    return-void
.end method
