.class public abstract Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;
.super Lcom/tencent/wecarspeech/vframework/IStartResultCallback$Stub;
.source "IStartResultCallback.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/IStartResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onStartFailed(ILjava/lang/String;)V
.end method

.method public abstract onStartSuccess()V
.end method
