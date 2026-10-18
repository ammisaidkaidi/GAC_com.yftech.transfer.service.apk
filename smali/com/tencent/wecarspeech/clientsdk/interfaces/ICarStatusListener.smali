.class public abstract Lcom/tencent/wecarspeech/clientsdk/interfaces/ICarStatusListener;
.super Lcom/tencent/wecarspeech/vframework/ICarEventListener$Stub;
.source "ICarStatusListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field POWER_EVENT_OFF:I

.field POWER_EVENT_ON:I

.field POWER_EVENT_SLEEP:I

.field POWER_EVENT_WAKEUP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/ICarEventListener$Stub;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/ICarStatusListener;->POWER_EVENT_ON:I

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/ICarStatusListener;->POWER_EVENT_OFF:I

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/ICarStatusListener;->POWER_EVENT_WAKEUP:I

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/ICarStatusListener;->POWER_EVENT_SLEEP:I

    return-void
.end method


# virtual methods
.method public abstract onBackCarEvent(Z)V
.end method

.method public abstract onPowerEvent(I)V
.end method
