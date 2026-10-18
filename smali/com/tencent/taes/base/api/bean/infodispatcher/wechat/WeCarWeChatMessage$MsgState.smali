.class public Lcom/tencent/taes/base/api/bean/infodispatcher/wechat/WeCarWeChatMessage$MsgState;
.super Ljava/lang/Object;
.source "WeCarWeChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/base/api/bean/infodispatcher/wechat/WeCarWeChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgState"
.end annotation


# static fields
.field public static final STATE_CALLING:I = 0x8

.field public static final STATE_CALL_END:I = 0x9

.field public static final STATE_CANCEL:I = 0xa

.field public static final STATE_CONNECTIONG:I = 0x4

.field public static final STATE_PLAY:I = 0x1

.field public static final STATE_PLAY_COMPLETED:I = 0x2

.field public static final STATE_RECORDING:I = 0x5

.field public static final STATE_REPLAY:I = 0x3

.field public static final STATE_SEND_FAIL:I = 0x7

.field public static final STATE_SEND_SUCCESS:I = 0x6

.field public static final STATE_START:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
