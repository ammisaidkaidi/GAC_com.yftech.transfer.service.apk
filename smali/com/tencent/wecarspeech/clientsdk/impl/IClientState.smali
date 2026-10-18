.class public interface abstract Lcom/tencent/wecarspeech/clientsdk/impl/IClientState;
.super Ljava/lang/Object;
.source "IClientState.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/impl/IClientState$StateType;
    }
.end annotation


# static fields
.field public static final STATE_ALIVE:J = 0x10L

.field public static final STATE_FRONT:J = 0x1L

.field public static final STATE_NAVI:J = 0x4L

.field public static final STATE_NAVI_CARD_OPEN:J = 0x20L

.field public static final STATE_NAVI_MULTI_PLAN_VIEW:J = 0x40L

.field public static final STATE_PLAYING:J = 0x2L

.field public static final STATE_POI_VIEW:J = 0x8L
