.class public interface abstract Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;
.super Ljava/lang/Object;
.source "OnWeChatVoipListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final VOIP_CALLED_CANCEL:I = 0xa

.field public static final VOIP_CALLED_CONNECTING:I = 0x4

.field public static final VOIP_CALLED_FINISH:I = 0x9

.field public static final VOIP_CALLED_START:I = 0x0

.field public static final VOIP_CALLED_TALK:I = 0x8

.field public static final VOIP_CALLING_CONNECTING:I = 0x11

.field public static final VOIP_CALLING_FINISH:I = 0x14

.field public static final VOIP_CALLING_INVITING:I = 0xd

.field public static final VOIP_CALLING_TALKING:I = 0x13

.field public static final VOIP_CALLING_WAITING_ACCEPT:I = 0xf

.field public static final VOIP_STATE_NONE:I = 0x15


# virtual methods
.method public abstract onVoip(I)V
.end method
