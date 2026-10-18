.class public Lcom/tencent/car/export/message/WeChatMessage$MsgState;
.super Ljava/lang/Object;
.source "WeChatMessage.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/car/export/message/WeChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgState"
.end annotation


# static fields
.field public static final CALLING_STATE_FINISH:I = 0x14
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CALLING_STATE_FINISH"
    .end annotation
.end field

.field public static final CALLING_STATE_VOICE_CONNECTING:I = 0x11
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CALLING_STATE_VOICE_CONNECTING"
    .end annotation
.end field

.field public static final CALLING_STATE_VOICE_INVITING:I = 0xd
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CALLING_STATE_VOICE_INVITING"
    .end annotation
.end field

.field public static final CALLING_STATE_VOICE_TALKING:I = 0x13
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CALLING_STATE_VOICE_TALKING"
    .end annotation
.end field

.field public static final CALLING_STATE_VOICE_WAITTING_ACCEPT:I = 0xf
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CALLING_STATE_VOICE_WAITTING_ACCEPT"
    .end annotation
.end field

.field public static final CLOSE_PROJECTION:I = 0x19
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CLOSE_PROJECTION"
    .end annotation
.end field

.field public static final STATE_CALLING:I = 0x8
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_CALLING"
    .end annotation
.end field

.field public static final STATE_CALL_END:I = 0x9
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_CALL_END"
    .end annotation
.end field

.field public static final STATE_CANCEL:I = 0xa
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_CANCEL"
    .end annotation
.end field

.field public static final STATE_CONNECTIONG:I = 0x4
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_CONNECTIONG"
    .end annotation
.end field

.field public static final STATE_DASHBOARD_CLOSE:I = 0x18
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_DASHBOARD_CLOSE"
    .end annotation
.end field

.field public static final STATE_DASHBOARD_OPEN:I = 0x16
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_DASHBOARD_OPEN"
    .end annotation
.end field

.field public static final STATE_DASHBOARD_UPDATE:I = 0x17
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_DASHBOARD_UPDATE"
    .end annotation
.end field

.field public static final STATE_LOGIN:I = 0xb
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_LOGIN"
    .end annotation
.end field

.field public static final STATE_LOGOUT:I = 0xc
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_LOGOUT"
    .end annotation
.end field

.field public static final STATE_PLAY:I = 0x1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_PLAY"
    .end annotation
.end field

.field public static final STATE_PLAY_COMPLETED:I = 0x2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_PLAY_COMPLETED"
    .end annotation
.end field

.field public static final STATE_RECORDING:I = 0x5
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_RECORDING"
    .end annotation
.end field

.field public static final STATE_REPLAY:I = 0x3
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_REPLAY"
    .end annotation
.end field

.field public static final STATE_SEND_FAIL:I = 0x7
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_SEND_FAIL"
    .end annotation
.end field

.field public static final STATE_SEND_SUCCESS:I = 0x6
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_SEND_SUCCESS"
    .end annotation
.end field

.field public static final STATE_START:I = 0x0
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STATE_START"
    .end annotation
.end field

.field public static final VOIP_STATE_NONE:I = 0x15
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "VOIP_STATE_NONE"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
