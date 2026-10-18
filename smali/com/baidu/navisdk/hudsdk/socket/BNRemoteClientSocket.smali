.class public Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;
.super Ljava/lang/Object;
.source "BNRemoteClientSocket.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final SOCKET_CONNECT_TIMEOUT:I = 0x7530

.field private static final SOCKET_READ_TIMEOUT:I = 0x15f90


# instance fields
.field private mData:[B

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPortPoolIndex:I

.field private mRemoteAddr:Ljava/net/InetSocketAddress;

.field private mServerIP:Ljava/lang/String;

.field private mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    const-string v1, ""

    .line 24
    iput-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mServerIP:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mRemoteAddr:Ljava/net/InetSocketAddress;

    .line 27
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    .line 28
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mOutputStream:Ljava/io/OutputStream;

    .line 29
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mPortPoolIndex:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 122
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    .line 123
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mOutputStream:Ljava/io/OutputStream;

    .line 124
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    .line 125
    throw v1

    .line 122
    :catch_0
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    .line 123
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mOutputStream:Ljava/io/OutputStream;

    .line 124
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    return-void
.end method

.method public getServerIPAddr()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mServerIP:Ljava/lang/String;

    return-object p0
.end method

.method public isConnected()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public open(I)I
    .locals 9

    .line 48
    sget-object v0, Lcom/baidu/navisdk/hudsdk/BNRemoteConstants;->NAVI_PORTS_POOL:[I

    .line 49
    sget-object v1, Lcom/baidu/navisdk/hudsdk/BNRemoteConstants;->MAP_PORTS_POOL:[I

    .line 50
    array-length v2, v0

    .line 51
    array-length v3, v1

    add-int v4, v3, v2

    .line 53
    new-array v4, v4, [I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-lt v6, v3, :cond_6

    move v1, v5

    :goto_1
    const/4 v3, 0x1

    if-lt v1, v2, :cond_5

    const-string v0, "BNRemote"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BNRemoteClientSocket.............open()......portPoolType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mServerIP:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, ""

    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mServerIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mServerIP:Ljava/lang/String;

    goto :goto_3

    :cond_1
    :goto_2
    const-string p1, "localhost"

    :goto_3
    move-object v6, p1

    .line 72
    iget p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mPortPoolIndex:I

    :goto_4
    array-length v0, v4

    if-lt p1, v0, :cond_2

    goto :goto_5

    .line 74
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    .line 75
    new-instance v0, Ljava/net/InetSocketAddress;

    aget v1, v4, p1

    invoke-direct {v0, v6, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mRemoteAddr:Ljava/net/InetSocketAddress;

    .line 76
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 77
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 78
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mRemoteAddr:Ljava/net/InetSocketAddress;

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 79
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    .line 80
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mOutputStream:Ljava/io/OutputStream;

    const/16 v0, 0x1000

    .line 81
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->close()V

    const-string v1, "BNRemote"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "BNRemoteClientSocket.............open()...IOException e = "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_4

    .line 91
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mPortPoolIndex:I

    .line 96
    :goto_5
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    if-eqz p1, :cond_3

    const-string p1, "BNRemote"

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BNRemoteClientSocket.............open() SUCCESS......mSocket = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    const-string p0, "BNRemote"

    const-string p1, "BNRemoteClientSocket.............open() FAILED"

    .line 100
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_4

    .line 61
    :cond_5
    aget v6, v0, v1

    aput v6, v4, v7

    add-int/2addr v7, v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 56
    :cond_6
    aget v8, v1, v6

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    move v0, v1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B

    invoke-virtual {p1, p0, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_1
    return v0

    .line 154
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    sub-int/2addr p3, p2

    const/16 v0, 0x1000

    if-le p3, v0, :cond_0

    move p3, v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_2

    :goto_0
    if-lt v2, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int v1, v2, p2

    .line 145
    iget-object v3, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B

    aget-byte v3, v3, v2

    aput-byte v3, p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    .line 137
    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public read()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 174
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B

    const/16 v3, 0x1000

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 176
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B

    goto :goto_1

    :cond_0
    if-lez v1, :cond_2

    .line 179
    new-array v2, v1, [B

    :goto_0
    if-lt v4, v1, :cond_1

    move-object v0, v2

    goto :goto_1

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mData:[B

    aget-byte v0, v0, v4

    aput-byte v0, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    .line 168
    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public resetPortPoolIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mPortPoolIndex:I

    return-void
.end method

.method public setServerIPAddr(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mServerIP:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 195
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    new-array v1, v0, [B

    .line 198
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 199
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->mOutputStream:Ljava/io/OutputStream;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return v0

    .line 191
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method
