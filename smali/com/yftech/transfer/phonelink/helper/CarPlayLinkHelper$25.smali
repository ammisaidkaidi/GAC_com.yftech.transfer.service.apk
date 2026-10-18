.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$25;
.super Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;
.source "CarPlayLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 2423
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$25;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 24

    .line 2472
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2475
    :cond_0
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 2476
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->getGpsStatus()Landroid/location/GpsStatus;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 2478
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 2479
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 2480
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    .line 2481
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 2482
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v3

    .line 2483
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v4

    .line 2484
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->getEffectStatus()Ljava/lang/String;

    move-result-object v11

    const/4 v0, -0x1

    if-eqz v1, :cond_3

    .line 2487
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2489
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v12, v0

    .line 2490
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2491
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 2492
    const-class v13, Landroid/location/GpsSatellite;

    :try_start_0
    const-string v14, "mValid"

    .line 2495
    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/4 v14, 0x1

    .line 2496
    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2497
    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 2498
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GpsSatellite next mValid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2503
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GpsSatellite next error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v12

    :cond_3
    const-string v1, "ins"

    .line 2512
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gpsinfo:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    invoke-static {}, Lcom/so/GpsManager;->getInstance()Lcom/so/GpsManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-double v12, v12

    float-to-double v14, v3

    float-to-double v2, v2

    move-wide/from16 v20, v14

    float-to-double v14, v4

    move-wide/from16 v22, v14

    int-to-double v14, v0

    const-string v0, "A"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-wide/from16 v16, v2

    move-object v2, v1

    move-wide v3, v12

    move-wide/from16 v11, v20

    move-wide/from16 v20, v14

    move-wide/from16 v0, v22

    move-wide/from16 v13, v16

    move-wide v15, v0

    move-wide/from16 v17, v20

    invoke-virtual/range {v2 .. v19}, Lcom/so/GpsManager;->updateGps(DDDDDDDDI)V

    :cond_4
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 23

    .line 2426
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2429
    :cond_0
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->getGpsStatus()Landroid/location/GpsStatus;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 2431
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 2432
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 2433
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 2434
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 2435
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    .line 2436
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    .line 2437
    sget-object v10, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-virtual {v10}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->getEffectStatus()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    if-eqz v0, :cond_2

    .line 2440
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2442
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 2443
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2444
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 2445
    const-class v13, Landroid/location/GpsSatellite;

    :try_start_0
    const-string v14, "mValid"

    .line 2448
    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/4 v14, 0x1

    .line 2449
    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2450
    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 2451
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GpsSatellite next mValid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2456
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GpsSatellite next error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "ins"

    .line 2465
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gpsinfo:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    invoke-static {}, Lcom/so/GpsManager;->getInstance()Lcom/so/GpsManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-double v12, v12

    float-to-double v14, v3

    float-to-double v2, v2

    move-wide/from16 v19, v14

    float-to-double v14, v1

    move-wide/from16 v21, v14

    int-to-double v14, v11

    const-string v1, "A"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move-object v1, v0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-wide/from16 v10, v19

    move-wide/from16 v12, v16

    move-wide/from16 v16, v14

    move-wide/from16 v14, v21

    invoke-virtual/range {v1 .. v18}, Lcom/so/GpsManager;->updateGps(DDDDDDDDI)V

    :cond_3
    return-void
.end method
