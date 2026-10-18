.class public Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;
.super Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;
.source "SubWakeupScene.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final HIGH_PRIORITY:I = 0x2

.field public static final MEDIUM_PRIORITY:I = 0x1

.field public static final NORMAL_PRIORITY:I


# instance fields
.field private exclusive:Z

.field private priority:I

.field private superSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "superSceneId cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->superSceneId:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->exclusive:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;-><init>(Ljava/lang/String;Z)V

    .line 44
    iput p3, p0, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->priority:I

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->priority:I

    return p0
.end method

.method public getSuperSceneId()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->superSceneId:Ljava/lang/String;

    return-object p0
.end method

.method public isExclusive()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;->exclusive:Z

    return p0
.end method
