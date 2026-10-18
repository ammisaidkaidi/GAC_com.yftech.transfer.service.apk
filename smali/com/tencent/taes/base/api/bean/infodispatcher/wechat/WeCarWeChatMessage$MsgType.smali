.class public Lcom/tencent/taes/base/api/bean/infodispatcher/wechat/WeCarWeChatMessage$MsgType;
.super Ljava/lang/Object;
.source "WeCarWeChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/base/api/bean/infodispatcher/wechat/WeCarWeChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgType"
.end annotation


# static fields
.field public static final MSG_OTHER:I = 0x3

.field public static final MSG_POI:I = 0x2

.field public static final MSG_TEXT:I = 0x0

.field public static final MSG_VOIP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
