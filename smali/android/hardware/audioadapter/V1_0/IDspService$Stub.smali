.class public abstract Landroid/hardware/audioadapter/V1_0/IDspService$Stub;
.super Landroid/os/HwBinder;
.source "IDspService.java"

# interfaces
.implements Landroid/hardware/audioadapter/V1_0/IDspService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audioadapter/V1_0/IDspService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1021
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1066
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1067
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1068
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1069
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1042
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1029
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.audioadapter@1.0::IDspService"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "android.hardware.audioadapter@1.0::IDspService"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1075
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_23

    :sswitch_0
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_4b

    .line 1732
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1733
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, v2, :cond_2

    .line 1719
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1722
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->notifySyspropsChanged()V

    goto/16 :goto_23

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 1703
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1704
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1706
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1709
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1710
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1711
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 1688
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1691
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->ping()V

    .line 1694
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1695
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :sswitch_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_4b

    .line 1678
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1679
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    if-eq v1, v2, :cond_9

    .line 1665
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1666
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1668
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setHALInstrumentation()V

    goto/16 :goto_23

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    :goto_2
    if-eqz v2, :cond_b

    .line 1632
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1635
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1638
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1640
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1642
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1643
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1644
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1645
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v1, p2, :cond_c

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1649
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    const-wide/16 v0, 0x0

    .line 1653
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1655
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1657
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    :goto_4
    if-eqz v2, :cond_e

    .line 1616
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1619
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1622
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1623
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :sswitch_8
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    :goto_5
    if-eqz v2, :cond_10

    .line 1602
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_10
    const-string p0, "android.hidl.base@1.0::IBase"

    .line 1605
    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1608
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    :goto_6
    if-eqz v2, :cond_12

    .line 1586
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1589
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1592
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1593
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1594
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    :goto_7
    if-eqz v2, :cond_14

    .line 1569
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1570
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_14
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1572
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1575
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setSceneSoundEffectType(I)Z

    move-result p0

    .line 1576
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1577
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1578
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    :goto_8
    if-eqz v2, :cond_16

    .line 1551
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1552
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_16
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1554
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result p1

    .line 1557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result p2

    .line 1558
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setBalanceXY(FF)Z

    move-result p0

    .line 1559
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1560
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1561
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    :goto_9
    if-eqz v2, :cond_18

    .line 1531
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_18
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1534
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result p1

    .line 1537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result p4

    .line 1538
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v0

    .line 1539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result p2

    .line 1540
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setBalance(FFFF)Z

    move-result p0

    .line 1541
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1542
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    :goto_a
    if-eqz v2, :cond_1a

    .line 1515
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_1a
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1518
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getVoiceSoundSpeaker()I

    move-result p0

    .line 1521
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1522
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1523
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    :goto_b
    if-eqz v2, :cond_1c

    .line 1498
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1499
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_1c
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1501
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1504
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setVoiceSoundSpeaker(I)Z

    move-result p0

    .line 1505
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1506
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    goto :goto_c

    :cond_1d
    move v2, v1

    :goto_c
    if-eqz v2, :cond_1e

    .line 1481
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1482
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_1e
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1484
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1487
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getEQTypeBandQs(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1488
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1489
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloatVector(Ljava/util/ArrayList;)V

    .line 1490
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    goto :goto_d

    :cond_1f
    move v2, v1

    :goto_d
    if-eqz v2, :cond_20

    .line 1465
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1466
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_20
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1468
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getBandMaxQ()Ljava/util/ArrayList;

    move-result-object p0

    .line 1471
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1472
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloatVector(Ljava/util/ArrayList;)V

    .line 1473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    goto :goto_e

    :cond_21
    move v2, v1

    :goto_e
    if-eqz v2, :cond_22

    .line 1449
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1450
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_22
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1452
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getBandMinQ()Ljava/util/ArrayList;

    move-result-object p0

    .line 1455
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1456
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloatVector(Ljava/util/ArrayList;)V

    .line 1457
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_23

    goto :goto_f

    :cond_23
    move v2, v1

    :goto_f
    if-eqz v2, :cond_24

    .line 1432
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1433
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_24
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1435
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1438
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setDtsSoundPosition(I)Z

    move-result p0

    .line 1439
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1440
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25

    goto :goto_10

    :cond_25
    move v2, v1

    :goto_10
    if-eqz v2, :cond_26

    .line 1415
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1416
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_26
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1418
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1421
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setDtsType(I)Z

    move-result p0

    .line 1422
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1423
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1424
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_27

    goto :goto_11

    :cond_27
    move v2, v1

    :goto_11
    if-eqz v2, :cond_28

    .line 1398
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1399
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_28
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1401
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1404
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setDtsEnable(Z)Z

    move-result p0

    .line 1405
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1406
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1407
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    goto :goto_12

    :cond_29
    move v2, v1

    :goto_12
    if-eqz v2, :cond_2a

    .line 1378
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1379
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_2a
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1381
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result p1

    .line 1384
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result p4

    .line 1385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v0

    .line 1386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result p2

    .line 1387
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setDelayValue(FFFF)Z

    move-result p0

    .line 1388
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1389
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2b

    goto :goto_13

    :cond_2b
    move v2, v1

    :goto_13
    if-eqz v2, :cond_2c

    .line 1362
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1363
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_2c
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1365
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getDelayPrecision()F

    move-result p0

    .line 1368
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1369
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloat(F)V

    .line 1370
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2d

    goto :goto_14

    :cond_2d
    move v2, v1

    :goto_14
    if-eqz v2, :cond_2e

    .line 1346
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1347
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_2e
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1349
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getDelayMinValue()F

    move-result p0

    .line 1352
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1353
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloat(F)V

    .line 1354
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    goto :goto_15

    :cond_2f
    move v2, v1

    :goto_15
    if-eqz v2, :cond_30

    .line 1330
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_30
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1333
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getDelayMaxValue()F

    move-result p0

    .line 1336
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1337
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloat(F)V

    .line 1338
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_31

    goto :goto_16

    :cond_31
    move v2, v1

    :goto_16
    if-eqz v2, :cond_32

    .line 1312
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1313
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_32
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1315
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloatVector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1318
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloatVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1319
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setBandValue(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p0

    .line 1320
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1321
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1322
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_33

    goto :goto_17

    :cond_33
    move v2, v1

    :goto_17
    if-eqz v2, :cond_34

    .line 1296
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1297
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_34
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1299
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getBands()Ljava/util/ArrayList;

    move-result-object p0

    .line 1302
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1303
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_11
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_35

    goto :goto_18

    :cond_35
    move v2, v1

    :goto_18
    if-eqz v2, :cond_36

    .line 1280
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_36
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1283
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getBandMinValue()Ljava/util/ArrayList;

    move-result-object p0

    .line 1286
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1287
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloatVector(Ljava/util/ArrayList;)V

    .line 1288
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_37

    goto :goto_19

    :cond_37
    move v2, v1

    :goto_19
    if-eqz v2, :cond_38

    .line 1264
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1265
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_38
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1267
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getBandMaxValue()Ljava/util/ArrayList;

    move-result-object p0

    .line 1270
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1271
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloatVector(Ljava/util/ArrayList;)V

    .line 1272
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_13
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_39

    goto :goto_1a

    :cond_39
    move v2, v1

    :goto_1a
    if-eqz v2, :cond_3a

    .line 1247
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1248
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_3a
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1250
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1253
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getEQTypeBandValues(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1254
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1255
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloatVector(Ljava/util/ArrayList;)V

    .line 1256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_14
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_1b

    :cond_3b
    move v2, v1

    :goto_1b
    if-eqz v2, :cond_3c

    .line 1230
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_3c
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1233
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1236
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setEQType(I)Z

    move-result p0

    .line 1237
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1238
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1239
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    goto :goto_1c

    :cond_3d
    move v2, v1

    :goto_1c
    if-eqz v2, :cond_3e

    .line 1213
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1214
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_3e
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1216
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1219
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setEQEnable(Z)Z

    move-result p0

    .line 1220
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1221
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1222
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_16
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3f

    goto :goto_1d

    :cond_3f
    move v2, v1

    :goto_1d
    if-eqz v2, :cond_40

    .line 1196
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1197
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_40
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1199
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1202
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->isChannelMute(I)Z

    move-result p0

    .line 1203
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1204
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1205
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_17
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_41

    goto :goto_1e

    :cond_41
    move v2, v1

    :goto_1e
    if-eqz v2, :cond_42

    .line 1178
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_42
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1181
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1185
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setChannelMute(IZ)Z

    move-result p0

    .line 1186
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1187
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1188
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_18
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_43

    goto :goto_1f

    :cond_43
    move v2, v1

    :goto_1f
    if-eqz v2, :cond_44

    .line 1161
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :cond_44
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1164
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1167
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->getChannelVolume(I)F

    move-result p0

    .line 1168
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1169
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeFloat(F)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_23

    :pswitch_19
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_45

    goto :goto_20

    :cond_45
    move v2, v1

    :goto_20
    if-eqz v2, :cond_46

    .line 1143
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_23

    :cond_46
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1146
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result p2

    .line 1150
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->setChannelVolume(IF)Z

    move-result p0

    .line 1151
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_23

    :pswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_47

    goto :goto_21

    :cond_47
    move v2, v1

    :goto_21
    if-eqz v2, :cond_48

    .line 1126
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_23

    :cond_48
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1129
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1132
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->closeChannel(I)Z

    move-result p0

    .line 1133
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_23

    :pswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_49

    goto :goto_22

    :cond_49
    move v2, v1

    :goto_22
    if-eqz v2, :cond_4a

    .line 1109
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1110
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_23

    :cond_4a
    const-string p1, "android.hardware.audioadapter@1.0::IDspService"

    .line 1112
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1115
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->openChannel(I)Z

    move-result p0

    .line 1116
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_4b
    :goto_23
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "android.hardware.audioadapter@1.0::IDspService"

    .line 1086
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IDspService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
