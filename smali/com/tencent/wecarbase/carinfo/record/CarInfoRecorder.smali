.class public Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;
.super Ljava/lang/Object;
.source "CarInfoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarInfoRecorder"


# instance fields
.field private mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

.field private mCarInfoListener:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

.field private mContext:Landroid/content/Context;

.field private mIsRunning:Z

.field private mPushCallBack:Lcom/tencent/wecarbase/carinfo/IPushCallBack;

.field private mSenderThread:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

.field private mTaiAccountInfoCallBack:Lcom/tencent/wecarbase/common/callback/TaiAccountInfoCallBack;

.field private mWeCarInfoManager:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/wecarbase/common/callback/TaiAccountInfoCallBack;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mIsRunning:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mPushCallBack:Lcom/tencent/wecarbase/carinfo/IPushCallBack;

    .line 236
    new-instance v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;-><init>(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoListener:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 45
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mTaiAccountInfoCallBack:Lcom/tencent/wecarbase/common/callback/TaiAccountInfoCallBack;

    .line 47
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoListener:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)I
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->getCarUpdateId()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->getCarInfoMsg()Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/IPushCallBack;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mPushCallBack:Lcom/tencent/wecarbase/carinfo/IPushCallBack;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->sendCarInfoRecord(Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    return-object p0
.end method

.method private getCarInfoMsg()Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->getCarInfoMsg()Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    move-result-object p0

    return-object p0
.end method

.method private getCarUpdateId()I
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->getCarUpdateId()I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mWeCarInfoManager:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    .line 56
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mWeCarInfoManager:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->init(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mWeCarInfoManager:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoListener:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->registerListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V

    .line 59
    new-instance v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    .line 60
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->init()V

    return-void
.end method

.method private sendCarInfoRecord(Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;)V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mPushCallBack:Lcom/tencent/wecarbase/carinfo/IPushCallBack;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mTaiAccountInfoCallBack:Lcom/tencent/wecarbase/common/callback/TaiAccountInfoCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mTaiAccountInfoCallBack:Lcom/tencent/wecarbase/common/callback/TaiAccountInfoCallBack;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/common/callback/TaiAccountInfoCallBack;->getNonce()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 161
    :goto_0
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getBrakeStateModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getBrakeStateModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setBrakeState(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 166
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getSeatBeltModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 167
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getSeatBeltModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setSeatBelt(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 170
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getGearModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 171
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getGearModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setGear(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 174
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getAccModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 175
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getAccModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setAcc(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 178
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getTotalMileage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setTotalMileage(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 179
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getEnduranceMileage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setEnduranceMileage(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 181
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getFuelModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 182
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getFuelModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setFuel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 185
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getLeanWaterModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 186
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getLeanWaterModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setLeanWater(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 189
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getCarSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 190
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getCarSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setCarSpeed(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 193
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getEngineSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 194
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getEngineSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setEngineSpeed(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 197
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getDoorStatusModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 198
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getDoorStatusModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setDoorStatus(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 201
    :cond_a
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getLampModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 202
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getLampModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setLampStatusChanged(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 205
    :cond_b
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getOutsideTemperature()Lcom/google/protobuf/ByteString;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 206
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getOutsideTemperature()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setOutsideTemperature(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 209
    :cond_c
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getAirConditionModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 210
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getAirConditionModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setAirCondition(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 213
    :cond_d
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getBatteryVoltage()Lcom/google/protobuf/ByteString;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 214
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getBatteryVoltage()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setBatteryVoltage(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    :cond_e
    const/4 v3, 0x4

    .line 217
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->toByteArray()[B

    move-result-object v2

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/wecarbase/model/CloudMessage;->createMessage(I[BJ)Lcom/tencent/wecarbase/model/CloudMessage;

    move-result-object v0

    .line 218
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mPushCallBack:Lcom/tencent/wecarbase/carinfo/IPushCallBack;

    invoke-interface {p0, v0}, Lcom/tencent/wecarbase/carinfo/IPushCallBack;->addMessage(Lcom/tencent/wecarbase/model/CloudMessage;)V

    .line 223
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getDoorStatusModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DoorStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 226
    sget-object v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_f
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->getLampModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[LampModel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 232
    sget-object p1, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private startSenderThread()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mSenderThread:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mSenderThread:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mSenderThread:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;-><init>(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mSenderThread:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

    .line 72
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mSenderThread:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->start()V

    :cond_1
    return-void
.end method

.method private updateCarInfo()V
    .locals 17

    move-object/from16 v0, p0

    .line 383
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getBrakeState()Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;

    move-result-object v1

    .line 384
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getSeatBeltState()Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;

    move-result-object v2

    .line 385
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getGearData()Lcom/tencent/wecarbase/carinfo/model/GearModel;

    move-result-object v3

    .line 386
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getTotalMileageData()J

    move-result-wide v4

    .line 387
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getEnduranceMileageData()I

    move-result v6

    int-to-long v6, v6

    .line 388
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getFuelData()Lcom/tencent/wecarbase/carinfo/model/FuelModel;

    move-result-object v8

    .line 389
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getLeanWaterData()Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;

    move-result-object v9

    .line 390
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getCarSpeedData()F

    move-result v10

    .line 391
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getEngineSpeedData()F

    move-result v11

    .line 392
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getDoorStatus()Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;

    move-result-object v12

    .line 393
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getLampStatus()Lcom/tencent/wecarbase/carinfo/model/LampModel;

    move-result-object v13

    .line 394
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getOutsideTemperatureData()Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;

    move-result-object v14

    .line 395
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getBatteryVoltageData()F

    move-result v15

    move/from16 v16, v15

    .line 396
    iget-object v15, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    if-eqz v15, :cond_0

    .line 397
    iget-object v15, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v15, v1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateBrakeState(Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;)V

    .line 398
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v1, v2}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateSeatBelt(Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;)V

    .line 399
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v1, v3}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateGear(Lcom/tencent/wecarbase/carinfo/model/GearModel;)V

    .line 400
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    long-to-int v2, v4

    invoke-virtual {v1, v2}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateTotalMileage(I)V

    .line 401
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    long-to-int v2, v6

    invoke-virtual {v1, v2}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateEnduranceMileage(I)V

    .line 402
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v1, v8}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateFuel(Lcom/tencent/wecarbase/carinfo/model/FuelModel;)V

    .line 403
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v1, v9}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateLeanWater(Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;)V

    .line 404
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v1, v10}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateCarSpeed(F)V

    .line 405
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v1, v11}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateEngineSpeed(F)V

    .line 406
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v1, v12}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateDoorStatus(Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;)V

    .line 407
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v1, v13}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateLampStatus(Lcom/tencent/wecarbase/carinfo/model/LampModel;)V

    .line 408
    iget-object v1, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    invoke-virtual {v1, v14}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateOutsideTemperature(Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;)V

    .line 409
    iget-object v0, v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mCarInfoHelper:Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateBatteryVoltage(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mIsRunning:Z

    .line 78
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mSenderThread:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mSenderThread:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->cancel()V

    .line 80
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mSenderThread:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$SenderThread;->interrupt()V

    :cond_0
    return-void
.end method

.method public setIPushCallBack(Lcom/tencent/wecarbase/carinfo/IPushCallBack;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mPushCallBack:Lcom/tencent/wecarbase/carinfo/IPushCallBack;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->mIsRunning:Z

    .line 65
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->startSenderThread()V

    return-void
.end method
