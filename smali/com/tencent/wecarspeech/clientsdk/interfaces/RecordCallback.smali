.class public abstract Lcom/tencent/wecarspeech/clientsdk/interfaces/RecordCallback;
.super Lcom/tencent/wecarspeech/vframework/IRecordCallback$Stub;
.source "RecordCallback.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final EVENT_SPEECH_PAUSE:I = 0x64

.field public static final EVENT_SPEECH_RESUME:I = 0x65

.field public static final RESULT_CANCELED:I = 0x1

.field public static final RESULT_ERROR:I = 0x5

.field public static final RESULT_INTERRUPT_SYSTEM:I = 0x3

.field public static final RESULT_INTERRUPT_VR:I = 0x4

.field public static final RESULT_NO_INPUT:I = 0x2

.field public static final RESULT_ON_WAKEUP_COMPLETE_CMD:I = 0x0

.field public static final RESULT_SPEECH_TIMEOUT:I = 0x6

.field public static final RESULT_STOP_RECORD:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/IRecordCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onEvent(I)V
.end method

.method public abstract onRecordData([BI)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop(ILjava/lang/String;I)V
.end method

.method public abstract onVolumeChanged(F)V
.end method
