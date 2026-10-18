.class final Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$LayzerHolder;
.super Ljava/lang/Object;
.source "BNSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayzerHolder"
.end annotation


# static fields
.field private static final mInstance:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;-><init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V

    sput-object v0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$LayzerHolder;->mInstance:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;
    .locals 1

    .line 80
    sget-object v0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$LayzerHolder;->mInstance:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    return-object v0
.end method
