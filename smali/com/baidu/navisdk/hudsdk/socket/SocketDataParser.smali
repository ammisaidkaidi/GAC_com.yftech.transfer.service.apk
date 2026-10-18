.class public Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;
.super Ljava/lang/Object;
.source "SocketDataParser.java"


# static fields
.field private static mInstance:Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;


# instance fields
.field private mMasterHandler:Landroid/os/Handler;

.field private mMsgDispatchHandler:Landroid/os/Handler;

.field private mMsgDispatchThread:Landroid/os/HandlerThread;

.field private mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;Landroid/os/Message;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->processData(Landroid/os/Message;)V

    return-void
.end method

.method public static getInstance()Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;
    .locals 1

    .line 64
    sget-object v0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mInstance:Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;-><init>()V

    sput-object v0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mInstance:Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    .line 68
    :cond_0
    sget-object v0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mInstance:Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    return-object v0
.end method

.method private getIntArray(Lorg/json/JSONObject;Ljava/lang/String;I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 639
    new-array p0, p3, [I

    .line 640
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p3, :cond_0

    return-object p0

    .line 642
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    aput v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private processData(Landroid/os/Message;)V
    .locals 4

    .line 109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    const/16 v0, 0x400

    const/16 v1, 0x5003

    .line 112
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 113
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unPackedData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 126
    iput v1, v2, Landroid/os/Message;->what:I

    .line 127
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 128
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 116
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 118
    iput v1, v2, Landroid/os/Message;->what:I

    .line 119
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 120
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method private unPackedData(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    .line 139
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error"

    .line 140
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v2, "messageType"

    .line 142
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "messageData"

    .line 143
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "msgId"

    .line 144
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "sendTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "testlog"

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "msgId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "msgId"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msgType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", costTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "sendTime"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "testlog"

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "msgId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "msgId"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msgType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", costTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "sendTime"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", msgJson = "

    .line 147
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-static {v3, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "testlog"

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "msgType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msgJson = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 228
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 229
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    const/16 v0, 0x5003

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 225
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketNearByCamera(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 222
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketRouteInfo(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 219
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketCurShapeIndexUpdate(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 216
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketCarTunelInfo(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 213
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketCarFreeStatus(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 210
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketCarPointInfo(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 207
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketDestInfo(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 204
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketEnlargeRoad(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 201
    :pswitch_8
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketRPYawComplete()V

    goto :goto_1

    .line 198
    :pswitch_9
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketRPYawing()V

    goto :goto_1

    .line 195
    :pswitch_a
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketCruiseEnd()V

    goto :goto_1

    .line 192
    :pswitch_b
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketCruiseStart()V

    goto :goto_1

    .line 189
    :pswitch_c
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketEndNavi()V

    goto :goto_1

    .line 186
    :pswitch_d
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketStartNavi()V

    goto :goto_1

    .line 183
    :pswitch_e
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketGpsNormal()V

    goto :goto_1

    .line 180
    :pswitch_f
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketGpsLost()V

    goto :goto_1

    .line 177
    :pswitch_10
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketNextRoadName(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 174
    :pswitch_11
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketCurrentRoadName(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 171
    :pswitch_12
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketRemainInfo(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 168
    :pswitch_13
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketAssistant(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 165
    :pswitch_14
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketServiceArea(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 162
    :pswitch_15
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketManeuver(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 159
    :pswitch_16
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketPong(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 156
    :pswitch_17
    invoke-direct {p0, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketExit(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 153
    :pswitch_18
    invoke-direct {p0, v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unpacketAuth(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unpacketAssistant(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "assistantType"

    .line 348
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "assistUpdateType"

    .line 349
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "limitedSpeed"

    .line 350
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "distance"

    .line 351
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 353
    new-instance v3, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;

    invoke-direct {v3}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;-><init>()V

    .line 354
    iput v0, v3, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;->mAssistType:I

    .line 355
    iput v1, v3, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;->mUpdateType:I

    .line 356
    iput p1, v3, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;->mRemainDist:I

    .line 357
    iput v2, v3, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;->mSpeed:I

    .line 359
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 360
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v3}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onAssistant(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;)V

    :cond_0
    return-void
.end method

.method private unpacketAuth(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "errorCode"

    .line 237
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x5006

    if-nez p2, :cond_0

    .line 239
    iget-object p2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    const-string p2, "serverType"

    .line 240
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "serverVersion"

    .line 241
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "repMsg"

    .line 242
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    new-instance v2, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;

    invoke-direct {v2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;-><init>()V

    .line 245
    invoke-virtual {v2, p2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->setServerType(I)V

    .line 246
    invoke-virtual {v2, v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->setServerVersion(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v2, p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->setAuthResMsg(Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x20

    .line 250
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 251
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 255
    new-instance p1, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;

    invoke-direct {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;-><init>()V

    .line 256
    iget-object p2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x21

    .line 257
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 258
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unpacketCarFreeStatus(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 517
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarFreeStatus;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarFreeStatus;-><init>()V

    const-string v1, "isCarFree"

    .line 518
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarFreeStatus;->mIsCarFree:Z

    .line 520
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 521
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onCarFreeStatus(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarFreeStatus;)V

    :cond_0
    return-void
.end method

.method private unpacketCarPointInfo(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 505
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;-><init>()V

    const-string v1, "longitude"

    .line 506
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mLongitude:D

    const-string v1, "latitude"

    .line 507
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mLatitude:D

    const-string v1, "speed"

    .line 508
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mCurSpeed:I

    const-string v1, "angle"

    .line 509
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mCarAngle:D

    .line 511
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 512
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onCarInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;)V

    :cond_0
    return-void
.end method

.method private unpacketCarTunelInfo(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 526
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarTunelInfo;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarTunelInfo;-><init>()V

    const-string v1, "isInTunnel"

    .line 527
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 530
    iput p1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarTunelInfo;->mIsInTunel:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 532
    iput p1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarTunelInfo;->mIsInTunel:I

    .line 535
    :goto_0
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_1

    .line 536
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onCarTunelInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarTunelInfo;)V

    :cond_1
    return-void
.end method

.method private unpacketCruiseEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz v0, :cond_0

    .line 432
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCruiseEnd;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCruiseEnd;-><init>()V

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onCruiseEnd(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCruiseEnd;)V

    :cond_0
    return-void
.end method

.method private unpacketCruiseStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz v0, :cond_0

    .line 426
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCruiseStart;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCruiseStart;-><init>()V

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onCruiseStart(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCruiseStart;)V

    :cond_0
    return-void
.end method

.method private unpacketCurShapeIndexUpdate(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 605
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurShapeIndexUpdate;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurShapeIndexUpdate;-><init>()V

    const-string v1, "shapeIndex"

    .line 606
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurShapeIndexUpdate;->mShapeIndex:I

    const-string v1, "distance"

    .line 607
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurShapeIndexUpdate;->mFromStartDist:I

    .line 609
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 610
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onCurShapeIndexUpdate(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurShapeIndexUpdate;)V

    :cond_0
    return-void
.end method

.method private unpacketCurrentRoadName(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "currentRoadName"

    .line 378
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 380
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;-><init>()V

    .line 381
    invoke-virtual {v0, p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;->setCurrentRoadName(Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 384
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onCurrentRoad(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;)V

    :cond_0
    return-void
.end method

.method private unpacketDestInfo(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 541
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;-><init>()V

    const-string v1, "longitude"

    .line 542
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestLongitude:D

    const-string v1, "latitude"

    .line 543
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestLatitude:D

    const-string v1, "destTotalDist"

    .line 544
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestTotalDist:I

    const-string v1, "destIcon"

    .line 545
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestIcon:I

    .line 547
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 548
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onDestInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;)V

    :cond_0
    return-void
.end method

.method private unpacketEndNavi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz v0, :cond_0

    .line 420
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNaviEnd;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNaviEnd;-><init>()V

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onNaviEnd(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNaviEnd;)V

    :cond_0
    return-void
.end method

.method private unpacketEnlargeRoad(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 450
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;-><init>()V

    const-string v1, "enlargeType"

    .line 452
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "enlargeShowState"

    .line 453
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 455
    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setEnlargeRoadState(I)V

    .line 456
    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setEnlargeRoadType(I)V

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v2, v3, :cond_5

    :cond_0
    if-nez v2, :cond_4

    const-string v2, ""

    const-string v4, "enlargeBasicImage"

    .line 462
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "enlargeBasicImage"

    .line 463
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v4, ""

    .line 466
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 467
    invoke-static {v2}, Lcom/baidu/navisdk/hudsdk/util/BitmapUtils;->decodeBase64Str(Ljava/lang/String;)[B

    move-result-object v2

    .line 468
    invoke-static {v2}, Lcom/baidu/navisdk/hudsdk/util/BitmapUtils;->bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 469
    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setBasicImage(Landroid/graphics/Bitmap;)V

    :cond_2
    const-string v2, ""

    const-string v4, "enlargeArrowImage"

    .line 473
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "enlargeArrowImage"

    .line 474
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v4, ""

    .line 477
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 478
    invoke-static {v2}, Lcom/baidu/navisdk/hudsdk/util/BitmapUtils;->decodeBase64Str(Ljava/lang/String;)[B

    move-result-object v2

    .line 479
    invoke-static {v2}, Lcom/baidu/navisdk/hudsdk/util/BitmapUtils;->bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 480
    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setArrowImage(Landroid/graphics/Bitmap;)V

    :cond_4
    const-string v2, "nextRoadName"

    .line 484
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setRoadName(Ljava/lang/String;)V

    const-string v2, "enlargeTotalDist"

    .line 485
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setTotalDist(I)V

    const-string v2, "enlargeRemainDist"

    .line 486
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setRemainDist(I)V

    if-ne v1, v3, :cond_5

    const-string v1, "carPosX"

    .line 489
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setCarPosX(I)V

    const-string v1, "carPosY"

    .line 490
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setCarPosY(I)V

    const-string v1, "carPosRotate"

    .line 491
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setCarPosRotate(I)V

    const-string v1, "lastCarPosX"

    .line 493
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setLastCarPosX(I)V

    const-string v1, "lastCarPosY"

    .line 494
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setLastCarPosY(I)V

    const-string v1, "lastCarPosRotate"

    .line 495
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->setLastCarPosRotate(I)V

    .line 499
    :cond_5
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_6

    .line 500
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onEnlargeRoad(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;)V

    :cond_6
    return-void
.end method

.method private unpacketExit(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msg"

    .line 264
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "End_Communication"

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    const/16 v0, 0x5007

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private unpacketGpsLost()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz v0, :cond_0

    .line 401
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGGPSLost;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGGPSLost;-><init>()V

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onGPSLost(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGGPSLost;)V

    :cond_0
    return-void
.end method

.method private unpacketGpsNormal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz v0, :cond_0

    .line 407
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGGPSNormal;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGGPSNormal;-><init>()V

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onGPSNormal(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGGPSNormal;)V

    :cond_0
    return-void
.end method

.method private unpacketManeuver(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 281
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;-><init>()V

    const-string v1, "maneuverName"

    .line 282
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "distance"

    .line 283
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "nextRoadName"

    .line 284
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->setManeuverName(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->setManeuverDistance(I)V

    .line 288
    invoke-virtual {v0, v3}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->setNextRoadName(Ljava/lang/String;)V

    const-string v1, "straight"

    .line 290
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "straight"

    .line 291
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mIsStraight:Z

    :cond_0
    const-string v1, "maneuverTips"

    .line 294
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "maneuverTips"

    .line 295
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mRGTips:Ljava/lang/String;

    :cond_1
    const-string v1, "maneuverId"

    .line 298
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "maneuverId"

    .line 299
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mManeuverId:I

    :cond_2
    const-string v1, "longitude"

    .line 302
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "longitude"

    .line 303
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLongitude:D

    :cond_3
    const-string v1, "latitude"

    .line 306
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "latitude"

    .line 307
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLatitude:D

    :cond_4
    const-string v1, "ringFlag"

    .line 310
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ringFlag"

    .line 311
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 313
    iput v2, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mRingFlag:I

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 316
    iput v2, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mRingFlag:I

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 319
    iput v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mRingFlag:I

    :cond_7
    :goto_0
    const-string v1, "laneCount"

    .line 322
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLaneCount:I

    .line 323
    iget v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLaneCount:I

    if-lez v1, :cond_8

    const-string v1, "laneTotalAddType"

    .line 324
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mTotalLaneAddType:I

    const-string v1, "laneAdditionTypeArray"

    .line 325
    iget v2, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLaneCount:I

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->getIntArray(Lorg/json/JSONObject;Ljava/lang/String;I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLaneAddTypeArray:[I

    const-string v1, "laneSignTypeArray"

    .line 326
    iget v2, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLaneCount:I

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->getIntArray(Lorg/json/JSONObject;Ljava/lang/String;I)[I

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLaneSignArray:[I

    .line 329
    :cond_8
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_9

    .line 330
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onManeuver(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;)V

    :cond_9
    return-void
.end method

.method private unpacketNearByCamera(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 615
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo;-><init>()V

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "cameraList"

    .line 617
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 618
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 631
    iput-object v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo;->mCameraInfoList:Ljava/util/ArrayList;

    .line 633
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 634
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onNearByCamera(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo;)V

    :cond_0
    return-void

    .line 620
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 621
    new-instance v5, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo$CameraInfo;

    invoke-direct {v5}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo$CameraInfo;-><init>()V

    const-string v6, "cameraType"

    .line 622
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo$CameraInfo;->mCameraType:I

    const-string v6, "longitude"

    .line 623
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo$CameraInfo;->mLongitude:D

    const-string v6, "latitude"

    .line 624
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo$CameraInfo;->mLatitude:D

    const-string v6, "distance"

    .line 625
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "distance"

    .line 626
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo$CameraInfo;->mFromStartDist:I

    .line 628
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private unpacketNextRoadName(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "nextRoadName"

    .line 389
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNextRoad;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNextRoad;-><init>()V

    .line 392
    invoke-virtual {v0, p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNextRoad;->setNextRoadName(Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 395
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onNextRoad(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNextRoad;)V

    :cond_0
    return-void
.end method

.method private unpacketPong(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 274
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    const/16 v0, 0x5005

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private unpacketRPYawComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 443
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRPYawComplete;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRPYawComplete;-><init>()V

    .line 444
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz v1, :cond_0

    .line 445
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onRoutePlanYawComplete(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRPYawComplete;)V

    :cond_0
    return-void
.end method

.method private unpacketRPYawing()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz v0, :cond_0

    .line 438
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRPYawing;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRPYawing;-><init>()V

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onRoutePlanYawing(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRPYawing;)V

    :cond_0
    return-void
.end method

.method private unpacketRemainInfo(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "remainDistance"

    .line 365
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "remainTime"

    .line 366
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 368
    new-instance v1, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;

    invoke-direct {v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;-><init>()V

    .line 369
    invoke-virtual {v1, v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;->setRemainDistance(I)V

    .line 370
    invoke-virtual {v1, p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;->setRemainTime(I)V

    .line 372
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 373
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v1}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onRemainInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;)V

    :cond_0
    return-void
.end method

.method private unpacketRouteInfo(Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 553
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;-><init>()V

    const-string v1, "routeID"

    .line 554
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;->mRouteId:I

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "arRoutList"

    .line 558
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 559
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_3

    .line 570
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "timeLineList"

    .line 571
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 572
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v2, v4

    :goto_1
    if-lt v2, v8, :cond_2

    .line 582
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "restritInfoList"

    .line 583
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 584
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    :goto_2
    if-lt v4, v9, :cond_1

    .line 595
    iput-object v1, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;->mARRouteInfoList:Ljava/util/ArrayList;

    .line 596
    iput-object v6, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;->mTimeLineInfoList:Ljava/util/ArrayList;

    .line 597
    iput-object v3, v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;->mRestritInfoList:Ljava/util/ArrayList;

    .line 599
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 600
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onRouteInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;)V

    :cond_0
    return-void

    .line 586
    :cond_1
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 587
    new-instance v2, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$RestrictInfo;

    invoke-direct {v2}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$RestrictInfo;-><init>()V

    const-string v7, "restrictType"

    .line 588
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$RestrictInfo;->mRestritType:I

    const-string v7, "longitude"

    .line 589
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$RestrictInfo;->mLongitude:D

    const-string v7, "latitude"

    .line 590
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$RestrictInfo;->mLatitude:D

    const-string v7, "distance"

    .line 591
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$RestrictInfo;->mFromStartDist:I

    .line 592
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 574
    :cond_2
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 575
    new-instance v5, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$TimeLineInfo;

    invoke-direct {v5}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$TimeLineInfo;-><init>()V

    const-string v9, "routeType"

    .line 576
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$TimeLineInfo;->mRouteType:I

    const-string v9, "fromStartPointDistance"

    .line 577
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$TimeLineInfo;->mFromTimeStartDist:I

    const-string v9, "fromEndPointDistance"

    .line 578
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v5, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$TimeLineInfo;->mFromTimeEndDist:I

    .line 579
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 561
    :cond_3
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 562
    new-instance v7, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$ShapePoint;

    invoke-direct {v7}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$ShapePoint;-><init>()V

    const-string v8, "longitude"

    .line 563
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$ShapePoint;->mLongitude:D

    const-string v8, "latitude"

    .line 564
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$ShapePoint;->mLatitude:D

    const-string v8, "routeType"

    .line 565
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$ShapePoint;->mLastRouteType:I

    const-string v8, "fromStartDist"

    .line 566
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v7, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo$ShapePoint;->mFromStartDist:I

    .line 567
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private unpacketServiceArea(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "serviceArea"

    .line 336
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "distance"

    .line 337
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 339
    new-instance v1, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;

    invoke-direct {v1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;-><init>()V

    .line 340
    invoke-virtual {v1, v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;->setServiceAreaName(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1, p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;->setServiceAreaDistance(I)V

    .line 342
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz p1, :cond_0

    .line 343
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v1}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onServiceArea(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;)V

    :cond_0
    return-void
.end method

.method private unpacketStartNavi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 412
    new-instance v0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNaviStart;

    invoke-direct {v0}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNaviStart;-><init>()V

    .line 413
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    if-eqz v1, :cond_0

    .line 414
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    invoke-interface {p0, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;->onNaviStart(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNaviStart;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;Landroid/os/Handler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    .line 73
    iput-object p2, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    return-void
.end method

.method public parseBinaryData([B)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "data dispatch thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchThread:Landroid/os/HandlerThread;

    .line 89
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser$1;

    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser$1;-><init>(Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchHandler:Landroid/os/Handler;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 101
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchThread:Landroid/os/HandlerThread;

    .line 105
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMsgDispatchHandler:Landroid/os/Handler;

    return-void
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mRGEventListener:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    .line 78
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->mMasterHandler:Landroid/os/Handler;

    return-void
.end method
