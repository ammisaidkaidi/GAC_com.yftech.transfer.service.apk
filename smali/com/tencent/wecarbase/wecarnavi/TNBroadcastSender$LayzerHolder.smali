.class Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender$LayzerHolder;
.super Ljava/lang/Object;
.source "TNBroadcastSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayzerHolder"
.end annotation


# static fields
.field private static final sIntance:Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;-><init>(Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender$1;)V

    sput-object v0, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender$LayzerHolder;->sIntance:Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;
    .locals 1

    .line 15
    sget-object v0, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender$LayzerHolder;->sIntance:Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;

    return-object v0
.end method
