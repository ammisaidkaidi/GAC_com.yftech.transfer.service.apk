.class public Lcom/tencent/car/export/message/WeChatMessage$MsgType;
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
    name = "MsgType"
.end annotation


# static fields
.field public static final MSG_LOGINOUT:I = 0x3
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MSG_LOGINOUT"
    .end annotation
.end field

.field public static final MSG_OTHER:I = 0x4
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MSG_OTHER"
    .end annotation
.end field

.field public static final MSG_POI:I = 0x2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MSG_POI"
    .end annotation
.end field

.field public static final MSG_TEXT:I = 0x0
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MSG_TEXT"
    .end annotation
.end field

.field public static final MSG_VOIP:I = 0x1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MSG_VOIP"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
