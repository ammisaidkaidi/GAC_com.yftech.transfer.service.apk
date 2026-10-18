.class public Lcom/tencent/wecarbase/utils/ClickUtils;
.super Ljava/lang/Object;
.source "ClickUtils.java"


# static fields
.field public static final MIN_CLICK_DELAY_TIME:I = 0x1f4

.field private static lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNormalClick()Z
    .locals 6

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 35
    sget-wide v2, Lcom/tencent/wecarbase/utils/ClickUtils;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 36
    sput-wide v0, Lcom/tencent/wecarbase/utils/ClickUtils;->lastClickTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSingleClick()Z
    .locals 6

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 20
    sget-wide v2, Lcom/tencent/wecarbase/utils/ClickUtils;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 21
    sput-wide v0, Lcom/tencent/wecarbase/utils/ClickUtils;->lastClickTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
