.class public Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;
.super Ljava/lang/Thread;
.source "SocketReadThread.java"


# instance fields
.field private mIsMsgDataRecvComplete:Z

.field private mMasterHandler:Landroid/os/Handler;

.field private mMsgTotalLen:I

.field private mRecvBufMaxLen:I

.field private mRecvDataBuf:[B

.field private mRecvDataLen:I

.field private mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

.field private mStopped:Z


# direct methods
.method public constructor <init>(Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;Landroid/os/Handler;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mStopped:Z

    const v1, 0x300006

    .line 26
    iput v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvBufMaxLen:I

    .line 29
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    .line 30
    iput-object p2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMasterHandler:Landroid/os/Handler;

    .line 32
    iput v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMsgTotalLen:I

    .line 33
    iput v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    .line 34
    iget p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvBufMaxLen:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mIsMsgDataRecvComplete:Z

    return-void
.end method

.method private consumeData()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;
        }
    .end annotation

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mIsMsgDataRecvComplete:Z

    const v1, 0xff00

    const/high16 v2, 0xff0000

    const/high16 v3, -0x1000000

    const/4 v4, 0x3

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v0, :cond_9

    .line 89
    iget v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    if-lt v0, v8, :cond_8

    .line 90
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    aget-byte v0, v0, v9

    .line 91
    iget-object v10, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    aget-byte v7, v10, v7

    .line 92
    iget-object v10, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    aget-byte v10, v10, v6

    .line 93
    iget-object v11, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    aget-byte v4, v11, v4

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v3

    shl-int/lit8 v3, v7, 0x10

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v2, v10, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/lit16 v1, v4, 0xff

    or-int/2addr v0, v1

    .line 95
    iput v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMsgTotalLen:I

    const-string v0, "enlarge"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mMsgTotalLen = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMsgTotalLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRecvDataLen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMsgTotalLen:I

    add-int/2addr v0, v8

    add-int/2addr v0, v6

    .line 100
    iget v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    if-lt v1, v0, :cond_6

    const-string v1, "enlarge"

    const-string v2, "Excellent"

    .line 102
    invoke-static {v1, v2}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMsgTotalLen:I

    add-int/2addr v1, v8

    .line 104
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    aget-byte v2, v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, v2, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 106
    iget v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMsgTotalLen:I

    new-array v1, v1, [B

    move v2, v9

    .line 107
    :goto_1
    iget v3, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMsgTotalLen:I

    if-lt v2, v3, :cond_4

    const/16 v2, 0x5003

    .line 111
    invoke-direct {p0, v2, v5, v1}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->sendMessage(IILjava/lang/Object;)V

    .line 118
    iget v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    if-le v1, v0, :cond_3

    .line 120
    iget v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_2

    :goto_2
    if-lt v9, v1, :cond_1

    goto :goto_3

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    iget-object v3, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    add-int v4, v9, v0

    aget-byte v3, v3, v4

    aput-byte v3, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 128
    :cond_2
    :goto_3
    iput v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    goto/16 :goto_0

    .line 130
    :cond_3
    iput v9, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    goto/16 :goto_4

    .line 108
    :cond_4
    iget-object v3, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    add-int/lit8 v4, v2, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string p0, "enlarge"

    const-string v0, "protocol error"

    .line 113
    invoke-static {p0, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "enlarge"

    const-string v0, "protocol error"

    .line 114
    invoke-static {p0, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance p0, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;

    const/16 v0, 0x400

    const-string v1, "socket protocol error!!!"

    invoke-direct {p0, v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 136
    :cond_6
    iget v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    iget v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvBufMaxLen:I

    if-eq v0, v1, :cond_7

    .line 141
    iput-boolean v9, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mIsMsgDataRecvComplete:Z

    goto :goto_4

    :cond_7
    const-string p0, "enlarge"

    const-string v0, "msg is too long"

    .line 137
    invoke-static {p0, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "enlarge"

    const-string v0, "msg is too long"

    .line 138
    invoke-static {p0, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance p0, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;

    const/16 v0, 0x401

    const-string v1, "msg is too long"

    invoke-direct {p0, v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 149
    :cond_8
    iput-boolean v9, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mIsMsgDataRecvComplete:Z

    goto :goto_4

    .line 153
    :cond_9
    iget v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    if-lt v0, v8, :cond_a

    .line 154
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    aget-byte v0, v0, v9

    .line 155
    iget-object v9, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    aget-byte v9, v9, v7

    .line 156
    iget-object v10, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    aget-byte v10, v10, v6

    .line 157
    iget-object v11, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    aget-byte v4, v11, v4

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v3

    shl-int/lit8 v3, v9, 0x10

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v2, v10, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/lit16 v1, v4, 0xff

    or-int/2addr v0, v1

    .line 159
    iput v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMsgTotalLen:I

    .line 162
    iget v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    iget v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMsgTotalLen:I

    add-int/2addr v1, v8

    add-int/2addr v1, v6

    if-lt v0, v1, :cond_a

    .line 163
    iput-boolean v7, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mIsMsgDataRecvComplete:Z

    goto/16 :goto_0

    :cond_a
    :goto_4
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMasterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 41
    iput p1, v0, Landroid/os/Message;->what:I

    .line 42
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 43
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mStopped:Z

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mMasterHandler:Landroid/os/Handler;

    return-void
.end method

.method public run()V
    .locals 6

    .line 50
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mStopped:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x5003

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    iget-object v3, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataBuf:[B

    iget v4, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    iget v5, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvBufMaxLen:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    .line 54
    iget v3, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mRecvDataLen:I

    .line 55
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->consumeData()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->sendMessage(IILjava/lang/Object;)V

    .line 58
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mStopped:Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 70
    iget-boolean v3, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mStopped:Z

    if-nez v3, :cond_0

    const/16 v3, 0x13

    .line 72
    invoke-direct {p0, v1, v3, v2}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->sendMessage(IILjava/lang/Object;)V

    .line 73
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->mStopped:Z

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v2, 0x400

    .line 67
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 64
    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketChannelException;->getExceptionReason()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const/16 v2, 0x11

    .line 61
    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method
