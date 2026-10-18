.class Lcom/tencent/wecar/tts/client/TtsManagerInner$SingletonHolder;
.super Ljava/lang/Object;
.source "TtsManagerInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/TtsManagerInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tencent/wecar/tts/client/TtsManagerInner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/tencent/wecar/tts/client/TtsManagerInner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecar/tts/client/TtsManagerInner;-><init>(Lcom/tencent/wecar/tts/client/TtsManagerInner$1;)V

    sput-object v0, Lcom/tencent/wecar/tts/client/TtsManagerInner$SingletonHolder;->INSTANCE:Lcom/tencent/wecar/tts/client/TtsManagerInner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecar/tts/client/TtsManagerInner;
    .locals 1

    .line 25
    sget-object v0, Lcom/tencent/wecar/tts/client/TtsManagerInner$SingletonHolder;->INSTANCE:Lcom/tencent/wecar/tts/client/TtsManagerInner;

    return-object v0
.end method
