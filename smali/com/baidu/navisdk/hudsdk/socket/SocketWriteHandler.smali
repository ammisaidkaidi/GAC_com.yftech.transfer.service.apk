.class public Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;
.super Landroid/os/Handler;
.source "SocketWriteHandler.java"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mIsStopped:Z

.field private final mLooper:Landroid/os/Looper;

.field private mMasterHandler:Landroid/os/Handler;

.field private final mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;Landroid/os/Handler;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mLooper:Landroid/os/Looper;

    .line 32
    iput-object p2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    const/16 p1, 0x106

    .line 33
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    .line 34
    iput-object p3, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mIsStopped:Z

    return-void
.end method

.method private packetAuthMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "BNRemote"

    const-string v1, "SocketWriterHandler.....packetAuthMsg()"

    .line 96
    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 100
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "messageType"

    const/16 v5, 0xb

    .line 102
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "appVersion"

    .line 103
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "packageName"

    .line 104
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hudSdkVersion"

    .line 105
    invoke-virtual {v3, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "messageData"

    .line 106
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "errorCode"

    const/4 p2, 0x0

    .line 108
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "errorMessage"

    const-string p2, "ok"

    .line 109
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 111
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "error"

    .line 112
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "BNRemote"

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SocketWriterHandler.....packetAuthMsg(), msgJson = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->packetSocketMsgToBytes(Lorg/json/JSONObject;)V

    return-void
.end method

.method private packetPingMsg()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 121
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 122
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "messageType"

    const/16 v5, 0xa

    .line 124
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "messageData"

    .line 125
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    .line 127
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "errorMessage"

    const-string v4, "ok"

    .line 128
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "data"

    .line 130
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error"

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->packetSocketMsgToBytes(Lorg/json/JSONObject;)V

    return-void
.end method

.method private packetSocketMsgToBytes(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "BNRemote"

    const-string v1, "SocketWriterHandler.....packetSocketMsgToBytes()...ENTER"

    .line 137
    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "utf-8"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 144
    array-length v0, p1

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 149
    iget-object v5, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 150
    iget-object v4, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v3, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 154
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 156
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const-string p0, "BNRemote"

    const-string p1, "SocketWriterHandler.....packetSocketMsgToBytes()...END"

    .line 158
    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->processSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public processSendMessage(Landroid/os/Message;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x400

    const/16 v1, 0x5004

    .line 63
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v2, "appVersion"

    .line 65
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hudSdkVersion"

    .line 66
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-direct {p0, v2, v3, p1}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->packetAuthMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 68
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->packetPingMsg()V

    .line 70
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    iget-boolean p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mIsStopped:Z

    if-nez p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 81
    :catch_1
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 77
    :catch_2
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 73
    :catch_3
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mMasterHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public quit()V
    .locals 1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->mIsStopped:Z

    return-void
.end method
