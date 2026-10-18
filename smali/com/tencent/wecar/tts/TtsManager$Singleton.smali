.class final Lcom/tencent/wecar/tts/TtsManager$Singleton;
.super Ljava/lang/Object;
.source "TtsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/TtsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tencent/wecar/tts/TtsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/tencent/wecar/tts/TtsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecar/tts/TtsManager;-><init>(Lcom/tencent/wecar/tts/TtsManager$1;)V

    sput-object v0, Lcom/tencent/wecar/tts/TtsManager$Singleton;->INSTANCE:Lcom/tencent/wecar/tts/TtsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecar/tts/TtsManager;
    .locals 1

    .line 54
    sget-object v0, Lcom/tencent/wecar/tts/TtsManager$Singleton;->INSTANCE:Lcom/tencent/wecar/tts/TtsManager;

    return-object v0
.end method
