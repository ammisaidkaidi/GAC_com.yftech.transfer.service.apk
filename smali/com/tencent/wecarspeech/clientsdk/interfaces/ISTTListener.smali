.class public interface abstract Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;
.super Ljava/lang/Object;
.source "ISTTListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract onInterrupt(JI)V
.end method

.method public abstract onSTTResult(Ljava/lang/String;Z)V
.end method

.method public abstract onTimeout(JLjava/lang/String;)V
.end method
