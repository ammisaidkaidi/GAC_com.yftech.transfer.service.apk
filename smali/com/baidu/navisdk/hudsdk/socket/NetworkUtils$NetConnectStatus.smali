.class public Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils$NetConnectStatus;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetConnectStatus"
.end annotation


# static fields
.field public static final NetStatusInvalid:I = 0x0

.field public static final NetStatusNoNet:I = 0x1

.field public static final NetStatusWIFINet:I = 0x2

.field public static final NetStatusWWANNet:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;


# direct methods
.method public constructor <init>(Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils$NetConnectStatus;->this$0:Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
