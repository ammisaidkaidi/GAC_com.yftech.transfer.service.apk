.class public Lcom/yftech/transfer/phonelink/manager/CarSensorManager;
.super Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;
.source "CarSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/phonelink/manager/CarSensorManager$CarSensorObservor;
    }
.end annotation


# static fields
.field private static final NS2S:F = 1.0E-9f

.field public static final ins:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/phonelink/manager/CarSensorManager$CarSensorObservor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gravity:[F

.field private mAngle:[F

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private timestamp:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->observors:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;-><init>()V

    const/4 v0, 0x3

    .line 21
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mAngle:[F

    .line 25
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->gravity:[F

    .line 97
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/manager/CarSensorManager$1;-><init>(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 49
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->timestamp:F

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;F)F
    .locals 0

    .line 18
    iput p1, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->timestamp:F

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mAngle:[F

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashSet;
    .locals 1

    .line 18
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->observors:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yftech/transfer/phonelink/manager/CarSensorManager;)[F
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->gravity:[F

    return-object p0
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/phonelink/manager/CarSensorManager$CarSensorObservor;)Z
    .locals 1

    .line 45
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/phonelink/manager/CarSensorManager$CarSensorObservor;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/phonelink/manager/CarSensorManager$CarSensorObservor;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getGravityAccelerometer()[F
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->gravity:[F

    return-object p0
.end method

.method public getGyroscope()[F
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mAngle:[F

    return-object p0
.end method

.method public init()V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    .line 63
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 66
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init for sensor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "Google LLC"

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVersion()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 79
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init Sensor.TYPE_GRAVITY defaultSensor:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 81
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init Sensor.TYPE_ACCELEROMETER defaultSensor:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init finial defaultSensor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 88
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    return-void
.end method

.method public uninit()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
