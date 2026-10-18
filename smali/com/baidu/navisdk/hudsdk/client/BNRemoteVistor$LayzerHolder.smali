.class final Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor$LayzerHolder;
.super Ljava/lang/Object;
.source "BNRemoteVistor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayzerHolder"
.end annotation


# static fields
.field private static final mInstance:Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;-><init>(Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;)V

    sput-object v0, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor$LayzerHolder;->mInstance:Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;
    .locals 1

    .line 19
    sget-object v0, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor$LayzerHolder;->mInstance:Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    return-object v0
.end method
