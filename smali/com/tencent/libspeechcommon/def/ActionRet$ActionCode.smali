.class public Lcom/tencent/libspeechcommon/def/ActionRet$ActionCode;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/libspeechcommon/def/ActionRet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionCode"
.end annotation


# static fields
.field public static final ALREADY:I = 0x2

.field public static final CONTEXT:I = 0x6

.field public static final FAIL:I = 0x0

.field public static final MANUAL:I = 0x4

.field public static final NOTSUPPORT:I = -0x1

.field public static final OUT_OF_RANGE:I = 0x3

.field public static final PLAY_AUDIO:I = 0x7

.field public static final PLAY_MESSAGE:I = 0x5

.field public static final SILENCE:I = 0x8

.field public static final SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
