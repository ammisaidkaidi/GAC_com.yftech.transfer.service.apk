.class public Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;
.super Ljava/io/IOException;
.source "SocketChannelException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExceptionCode:I

.field private mExceptionReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 11
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;->mExceptionCode:I

    .line 12
    iput-object p2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;->mExceptionReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExceptionCode()I
    .locals 0

    .line 16
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;->mExceptionCode:I

    return p0
.end method

.method public getExceptionReason()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;->mExceptionReason:Ljava/lang/String;

    return-object p0
.end method
