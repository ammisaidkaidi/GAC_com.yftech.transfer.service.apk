.class final Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$MainThreadHandlerLazyHolder;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadHandlerLazyHolder"
.end annotation


# static fields
.field private static final sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$MainThreadHandlerLazyHolder;->sMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 10
    sget-object v0, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$MainThreadHandlerLazyHolder;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method
