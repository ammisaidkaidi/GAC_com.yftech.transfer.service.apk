.class public Lcom/tencent/wecarspeech/clientsdk/model/STTParams;
.super Ljava/lang/Object;
.source "STTParams.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public playSound:Z

.field public speechSilTimeout:J

.field public speechTimeout:J

.field public startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

.field public sttListener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;

.field public vadEndSilTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->playSound:Z

    return-void
.end method
