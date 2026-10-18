.class public abstract Lcom/tencent/wecarspeech/clientsdk/interfaces/SessionInterruptListener;
.super Lcom/tencent/wecarspeech/vframework/ISessionStateListener$Stub;
.source "SessionInterruptListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/ISessionStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSessionInterrupt()V
.end method
