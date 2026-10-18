.class public Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;
.super Lcom/yftech/transfer/navigation/AbsNavigationAdapter;
.source "BaiduNavigationAdapter.java"


# static fields
.field private static final DEBUG_SDK:Z = true

.field private static final TAG:Ljava/lang/String; = "BaiduNavigationAdapter"


# instance fields
.field private mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentRoadName:Ljava/lang/String;

.field private mH:Landroid/os/Handler;

.field private mIsConnected:Z

.field private mManeuver:Lcom/yftech/car/navigation/CarNavigationManeuver;

.field private mRGEventCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

.field private mReconnectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mIsConnected:Z

    .line 28
    iput v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mReconnectCount:I

    .line 272
    new-instance v0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;-><init>(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V

    iput-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    .line 340
    new-instance v0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;-><init>(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V

    iput-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mRGEventCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Lcom/yftech/car/navigation/CarNavigationManeuver;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mManeuver:Lcom/yftech/car/navigation/CarNavigationManeuver;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Lcom/yftech/car/navigation/CarNavigationManeuver;)Lcom/yftech/car/navigation/CarNavigationManeuver;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mManeuver:Lcom/yftech/car/navigation/CarNavigationManeuver;

    return-object p1
.end method

.method static synthetic access$102(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mReconnectCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mReconnectCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)I
    .locals 2

    .line 20
    iget v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mReconnectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mReconnectCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->unInitBaiduSdk()V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->initBaiduSdk()V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->connectToBaiduService()V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mCurrentRoadName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mCurrentRoadName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;I)Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->baiduLaneSignToSelfLaneSign(I)Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Ljava/lang/String;)Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->baiduTurnInfoToSelfTurnInfo(Ljava/lang/String;)Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    move-result-object p0

    return-object p0
.end method

.method private baiduLaneSignToSelfLaneSign(I)Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    .line 188
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->UNKNOWN:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 150
    :sswitch_0
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->LEFT_AROUND_RIGHT_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 110
    :sswitch_1
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS3_TURN_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 148
    :sswitch_2
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->LEFT_AROUND_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 144
    :sswitch_3
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->LEFT_AND_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 152
    :sswitch_4
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->LEFT_AROUND_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 102
    :sswitch_5
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS2_TURN_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 142
    :sswitch_6
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->LEFT_AND_AROUND:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 180
    :sswitch_7
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->TURN_LEFT_90:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 160
    :sswitch_8
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->RIGHT_AROUND_LEFT_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 112
    :sswitch_9
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS3_TURN_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 158
    :sswitch_a
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->RIGHT_AROUND_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 156
    :sswitch_b
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->RIGHT_AND_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 168
    :sswitch_c
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->STRAIGHT_AROUND_LEFT_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 108
    :sswitch_d
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS3_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 130
    :sswitch_e
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_LEFT_RIGHT_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 132
    :sswitch_f
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_LEFT_RIGHT_STRAIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 106
    :sswitch_10
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS3_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 126
    :sswitch_11
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_LEFT_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 128
    :sswitch_12
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_LEFT_RIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 146
    :sswitch_13
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->LEFT_AND_RIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 172
    :sswitch_14
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->STRAIGHT_LEFT_AROUND:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 94
    :sswitch_15
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS2_LEFT_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 134
    :sswitch_16
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_LEFT_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 136
    :sswitch_17
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_LEFT_STRAIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 96
    :sswitch_18
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS2_LEFT_STRAIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 114
    :sswitch_19
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_AND_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 116
    :sswitch_1a
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_AND_LEFT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 182
    :sswitch_1b
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->TURN_LEFT_90_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 162
    :sswitch_1c
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->RIGHT_AROUND_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 104
    :sswitch_1d
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS2_TURN_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 154
    :sswitch_1e
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->RIGHT_AND_AROUND:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 184
    :sswitch_1f
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->TURN_RIGHT_90:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 174
    :sswitch_20
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->STRAIGHT_RIGHT_AROUND:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 98
    :sswitch_21
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS2_RIGHT_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 138
    :sswitch_22
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_RIGHT_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 140
    :sswitch_23
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_RIGHT_STRAIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 100
    :sswitch_24
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->CROSS2_RIGHT_STRAIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 118
    :sswitch_25
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_AND_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 120
    :sswitch_26
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_AND_RIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 186
    :sswitch_27
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->TURN_RIGHT_90_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 166
    :sswitch_28
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->STRAIGHT_AND_AROUND:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 164
    :sswitch_29
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 122
    :sswitch_2a
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_AND_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 124
    :sswitch_2b
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->AROUND_AND_STRAIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 170
    :sswitch_2c
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->STRAIGHT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 176
    :sswitch_2d
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->TURN_AROUND_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    .line 178
    :sswitch_2e
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;->TURN_AROUND_LEFT_GRAY:Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2e
        0x11 -> :sswitch_2d
        0x1000 -> :sswitch_2c
        0x1010 -> :sswitch_2b
        0x1011 -> :sswitch_2a
        0x1100 -> :sswitch_29
        0x1110 -> :sswitch_28
        0x100000 -> :sswitch_27
        0x100010 -> :sswitch_26
        0x100011 -> :sswitch_25
        0x101000 -> :sswitch_24
        0x101010 -> :sswitch_23
        0x101011 -> :sswitch_22
        0x101100 -> :sswitch_21
        0x101110 -> :sswitch_20
        0x110000 -> :sswitch_1f
        0x110010 -> :sswitch_1e
        0x111000 -> :sswitch_1d
        0x111010 -> :sswitch_1c
        0x10000000 -> :sswitch_1b
        0x10000010 -> :sswitch_1a
        0x10000011 -> :sswitch_19
        0x10001000 -> :sswitch_18
        0x10001010 -> :sswitch_17
        0x10001011 -> :sswitch_16
        0x10001100 -> :sswitch_15
        0x10001110 -> :sswitch_14
        0x10100000 -> :sswitch_13
        0x10100010 -> :sswitch_12
        0x10100011 -> :sswitch_11
        0x10101000 -> :sswitch_10
        0x10101010 -> :sswitch_f
        0x10101011 -> :sswitch_e
        0x10101100 -> :sswitch_d
        0x10101110 -> :sswitch_c
        0x10110000 -> :sswitch_b
        0x10110010 -> :sswitch_a
        0x10111000 -> :sswitch_9
        0x10111010 -> :sswitch_8
        0x11000000 -> :sswitch_7
        0x11000010 -> :sswitch_6
        0x11001000 -> :sswitch_5
        0x11001010 -> :sswitch_4
        0x11100000 -> :sswitch_3
        0x11100010 -> :sswitch_2
        0x11101000 -> :sswitch_1
        0x11101010 -> :sswitch_0
    .end sparse-switch
.end method

.method private baiduTurnInfoToSelfTurnInfo(Ljava/lang/String;)Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;
    .locals 2

    const-string p0, "turn_back"

    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 194
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_BACK:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_0
    const-string p0, "turn_front"

    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 196
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_FRONT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_1
    const-string p0, "turn_right_front"

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 198
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RIGHT_FRONT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_2
    const-string p0, "turn_right"

    .line 199
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 200
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_3
    const-string p0, "turn_right_back"

    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 202
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RIGHT_BACK:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_4
    const-string p0, "turn_left_back"

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 204
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_LEFT_BACK:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_5
    const-string p0, "turn_left"

    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 206
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_6
    const-string p0, "turn_left_front"

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 208
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_LEFT_FRONT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_7
    const-string p0, "turn_ring"

    .line 209
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 210
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RING:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_8
    const-string p0, "turn_left_side"

    .line 211
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 212
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_LEFT_SIDE:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_9
    const-string p0, "turn_right_side"

    .line 213
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 214
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RIGHT_SIDE:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_a
    const-string p0, "turn_left_side_main"

    .line 215
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 216
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_LEFT_SIDE_MAIN:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_b
    const-string p0, "turn_branch_left_straight"

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 218
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_BRANCH_LEFT_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_c
    const-string p0, "turn_right_side_main"

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 220
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RIGHT_SIDE_MAIN:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_d
    const-string p0, "turn_branch_right_straight"

    .line 221
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 222
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_BRANCH_RIGHT_STRAIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_e
    const-string p0, "turn_branch_center"

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 224
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_BRANCH_CENTER:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_f
    const-string p0, "turn_left_side_ic"

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 226
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_LEFT_SIDE_IC:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_10
    const-string p0, "turn_right_side_ic"

    .line 227
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 228
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RIGHT_SIDE_IC:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_11
    const-string p0, "turn_branch_left"

    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 230
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_BRANCH_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_12
    const-string p0, "turn_branch_right"

    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 232
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_BRANCH_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_13
    const-string p0, "turn_dest"

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 234
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_DEST:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_14
    const-string p0, "turn_via_1"

    .line 235
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 236
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_VIA_1:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_15
    const-string p0, "turn_inferry"

    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 238
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_INFERRY:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_16
    const-string p0, "turn_tollgate"

    .line 239
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 240
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_TOLLGATE:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_17
    const-string p0, "turn_lf_2branch_left"

    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 242
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_LF_2BRANCH_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_18
    const-string p0, "turn_lf_2branch_right"

    .line 243
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 244
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_LF_2BRANCH_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_19
    const-string p0, "turn_rf_2branch_left"

    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 246
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RF_2BRANCH_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_1a
    const-string p0, "turn_rf_2branch_right"

    .line 247
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 248
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RF_2BRANCH_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_1b
    const-string p0, "turn_ring_front"

    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 250
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RING_FRONT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_1c
    const-string p0, "turn_ring_left"

    .line 251
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 252
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RING_LEFT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_1d
    const-string p0, "turn_ring_leftback"

    .line 253
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 254
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RING_LEFTBACK:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_1e
    const-string p0, "turn_ring_leftfront"

    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 256
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RING_LEFTFRONT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_1f
    const-string p0, "turn_ring_right"

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 258
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RING_RIGHT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_20
    const-string p0, "turn_ring_rightback"

    .line 259
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 260
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RING_RIGHTBACK:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_21
    const-string p0, "turn_ring_rightfront"

    .line 261
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 262
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RING_RIGHTFRONT:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    :cond_22
    const-string p0, "turn_ring_tuanback"

    .line 263
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 264
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->TURN_RING_TURNBACK:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0

    .line 266
    :cond_23
    sget-object p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baiduTurnInfoToSelfTurnInfo, unknown info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object p0, Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;->UNKNOWN:Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    return-object p0
.end method

.method private connectToBaiduService()V
    .locals 1

    .line 77
    iget-boolean p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mIsConnected:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->getInstance()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->isConnect()Z

    move-result p0

    if-nez p0, :cond_1

    .line 78
    :cond_0
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->getInstance()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->open()V

    .line 79
    sget-object p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "connectToBaiduService"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private disconnectToBaiduService()V
    .locals 2

    .line 85
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->getInstance()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->isConnect()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 86
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->getInstance()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    move-result-object p0

    const/16 v0, 0x190

    const-string v1, "User Exit"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->close(ILjava/lang/String;)V

    .line 87
    sget-object p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "disconnectToBaiduService"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initBaiduSdk()V
    .locals 8

    .line 64
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->getInstance()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->setShowLog(Z)V

    .line 66
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->getInstance()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    move-result-object v2

    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    iget-object v6, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mRGEventCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;

    iget-object v7, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;)V

    .line 67
    sget-object p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "initBaiduSdk"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unInitBaiduSdk()V
    .locals 1

    .line 71
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->getInstance()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;->unInit()V

    .line 72
    sget-object p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "unInitBaiduSdk"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.baidu.navi"

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 37
    iput-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mH:Landroid/os/Handler;

    .line 39
    invoke-direct {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->initBaiduSdk()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->unInitBaiduSdk()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->start()V

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mCurrentRoadName:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->connectToBaiduService()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->stop()V

    .line 59
    invoke-direct {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->disconnectToBaiduService()V

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mCurrentRoadName:Ljava/lang/String;

    return-void
.end method
