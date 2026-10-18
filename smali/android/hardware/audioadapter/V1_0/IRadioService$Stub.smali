.class public abstract Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;
.super Landroid/os/HwBinder;
.source "IRadioService.java"

# interfaces
.implements Landroid/hardware/audioadapter/V1_0/IRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audioadapter/V1_0/IRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1012
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

    .line 1057
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1058
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1059
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1060
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

    .line 1033
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

    .line 1020
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.audioadapter@1.0::IRadioService"

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

    const-string p0, "android.hardware.audioadapter@1.0::IRadioService"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1066
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

    goto/16 :goto_29

    :sswitch_0
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_57

    .line 1815
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, v2, :cond_2

    .line 1802
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1805
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->notifySyspropsChanged()V

    goto/16 :goto_29

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 1786
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1787
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1789
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1792
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1793
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1794
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 1771
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1772
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1774
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->ping()V

    .line 1777
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1778
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :sswitch_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_57

    .line 1761
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    if-eq v1, v2, :cond_9

    .line 1748
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1749
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1751
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->setHALInstrumentation()V

    goto/16 :goto_29

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    :goto_2
    if-eqz v2, :cond_b

    .line 1715
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1718
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1721
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1723
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1725
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1726
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1727
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1728
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v1, p2, :cond_c

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1732
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    const-wide/16 v0, 0x0

    .line 1736
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1738
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    :goto_4
    if-eqz v2, :cond_e

    .line 1699
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1702
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1705
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1706
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :sswitch_8
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    :goto_5
    if-eqz v2, :cond_10

    .line 1685
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1686
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_10
    const-string p0, "android.hidl.base@1.0::IBase"

    .line 1688
    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    :goto_6
    if-eqz v2, :cond_12

    .line 1669
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1672
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1675
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1676
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    :goto_7
    if-eqz v2, :cond_14

    .line 1653
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_14
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1656
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getSeekingFreq()I

    move-result p0

    .line 1659
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1660
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    :goto_8
    if-eqz v2, :cond_16

    .line 1637
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_16
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1640
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getScanType()I

    move-result p0

    .line 1643
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1644
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    :goto_9
    if-eqz v2, :cond_18

    .line 1619
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_18
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1622
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1626
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->setDefault(II)I

    move-result p0

    .line 1627
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1628
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    :goto_a
    if-eqz v2, :cond_1a

    .line 1601
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_1a
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1604
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1608
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->setManualStep(II)I

    move-result p0

    .line 1609
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1610
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    :goto_b
    if-eqz v2, :cond_1c

    .line 1583
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1584
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_1c
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1586
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1589
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1590
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->setStep(II)I

    move-result p0

    .line 1591
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1592
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    goto :goto_c

    :cond_1d
    move v2, v1

    :goto_c
    if-eqz v2, :cond_1e

    .line 1566
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_1e
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1569
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1572
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getDefault(I)I

    move-result p0

    .line 1573
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1574
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1575
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    goto :goto_d

    :cond_1f
    move v2, v1

    :goto_d
    if-eqz v2, :cond_20

    .line 1549
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1550
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_20
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1552
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1555
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getManualStep(I)I

    move-result p0

    .line 1556
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1557
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1558
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    goto :goto_e

    :cond_21
    move v2, v1

    :goto_e
    if-eqz v2, :cond_22

    .line 1532
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1533
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_22
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1535
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1538
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getStep(I)I

    move-result p0

    .line 1539
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_23

    goto :goto_f

    :cond_23
    move v2, v1

    :goto_f
    if-eqz v2, :cond_24

    .line 1514
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1515
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_24
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1517
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1521
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->setMin(II)I

    move-result p0

    .line 1522
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1523
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1524
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25

    goto :goto_10

    :cond_25
    move v2, v1

    :goto_10
    if-eqz v2, :cond_26

    .line 1496
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1497
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_26
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1499
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1503
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->setMax(II)I

    move-result p0

    .line 1504
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1505
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1506
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_27

    goto :goto_11

    :cond_27
    move v2, v1

    :goto_11
    if-eqz v2, :cond_28

    .line 1479
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1480
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_28
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1482
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1485
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getMin(I)I

    move-result p0

    .line 1486
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1487
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1488
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    goto :goto_12

    :cond_29
    move v2, v1

    :goto_12
    if-eqz v2, :cond_2a

    .line 1462
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1463
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_2a
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1465
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1468
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getMax(I)I

    move-result p0

    .line 1469
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1470
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1471
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2b

    goto :goto_13

    :cond_2b
    move v2, v1

    :goto_13
    if-eqz v2, :cond_2c

    .line 1445
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_2c
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1448
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1451
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->isSig(I)I

    move-result p0

    .line 1452
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1453
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1454
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2d

    goto :goto_14

    :cond_2d
    move v2, v1

    :goto_14
    if-eqz v2, :cond_2e

    .line 1429
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_2e
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1432
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->isFmStero()Z

    move-result p0

    .line 1435
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1436
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1437
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    goto :goto_15

    :cond_2f
    move v2, v1

    :goto_15
    if-eqz v2, :cond_30

    .line 1411
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1412
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_30
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1414
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1418
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->isFreqValid(II)Z

    move-result p0

    .line 1419
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1420
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1421
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_31

    goto :goto_16

    :cond_31
    move v2, v1

    :goto_16
    if-eqz v2, :cond_32

    .line 1395
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1396
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_32
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1398
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->stepDown()I

    move-result p0

    .line 1401
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1402
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1403
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_33

    goto :goto_17

    :cond_33
    move v2, v1

    :goto_17
    if-eqz v2, :cond_34

    .line 1379
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1380
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_34
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1382
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->stepUp()I

    move-result p0

    .line 1385
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1387
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_11
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_35

    goto :goto_18

    :cond_35
    move v2, v1

    :goto_18
    if-eqz v2, :cond_36

    .line 1363
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1364
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_36
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1366
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->scanAllRadio()I

    move-result p0

    .line 1369
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1370
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1371
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_37

    goto :goto_19

    :cond_37
    move v2, v1

    :goto_19
    if-eqz v2, :cond_38

    .line 1347
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1348
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_38
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1350
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->scanChannel()I

    move-result p0

    .line 1353
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1354
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1355
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_13
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_39

    goto :goto_1a

    :cond_39
    move v2, v1

    :goto_1a
    if-eqz v2, :cond_3a

    .line 1331
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1332
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_3a
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1334
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->seekDown()I

    move-result p0

    .line 1337
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1338
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1339
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_14
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_1b

    :cond_3b
    move v2, v1

    :goto_1b
    if-eqz v2, :cond_3c

    .line 1315
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1316
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_3c
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1318
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->seekUp()I

    move-result p0

    .line 1321
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1322
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    goto :goto_1c

    :cond_3d
    move v2, v1

    :goto_1c
    if-eqz v2, :cond_3e

    .line 1299
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1300
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_3e
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1302
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->stop()I

    move-result p0

    .line 1305
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1306
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1307
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_16
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3f

    goto :goto_1d

    :cond_3f
    move v2, v1

    :goto_1d
    if-eqz v2, :cond_40

    .line 1282
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1283
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_40
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1285
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1288
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->seekPlay(I)I

    move-result p0

    .line 1289
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1290
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1291
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_17
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_41

    goto :goto_1e

    :cond_41
    move v2, v1

    :goto_1e
    if-eqz v2, :cond_42

    .line 1265
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1266
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_42
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1268
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1271
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->setMute(I)I

    move-result p0

    .line 1272
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1273
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1274
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_18
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_43

    goto :goto_1f

    :cond_43
    move v2, v1

    :goto_1f
    if-eqz v2, :cond_44

    .line 1249
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1250
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_44
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1252
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getBand()I

    move-result p0

    .line 1255
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1256
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_19
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_45

    goto :goto_20

    :cond_45
    move v2, v1

    :goto_20
    if-eqz v2, :cond_46

    .line 1232
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1233
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_46
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1235
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1238
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->setBand(I)I

    move-result p0

    .line 1239
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1240
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1241
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_47

    goto :goto_21

    :cond_47
    move v2, v1

    :goto_21
    if-eqz v2, :cond_48

    .line 1216
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1217
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_48
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1219
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->getFreq()I

    move-result p0

    .line 1222
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1224
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_49

    goto :goto_22

    :cond_49
    move v2, v1

    :goto_22
    if-eqz v2, :cond_4a

    .line 1199
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_4a
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1202
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1205
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->setFreq(I)I

    move-result p0

    .line 1206
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_1c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4b

    goto :goto_23

    :cond_4b
    move v2, v1

    :goto_23
    if-eqz v2, :cond_4c

    .line 1183
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1184
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_4c
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1186
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->close()I

    move-result p0

    .line 1189
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1190
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1191
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_1d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4d

    goto :goto_24

    :cond_4d
    move v2, v1

    :goto_24
    if-eqz v2, :cond_4e

    .line 1167
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1168
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_4e
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1170
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->open()I

    move-result p0

    .line 1173
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1174
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_1e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4f

    goto :goto_25

    :cond_4f
    move v2, v1

    :goto_25
    if-eqz v2, :cond_50

    .line 1151
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_50
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1154
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->init()I

    move-result p0

    .line 1157
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1158
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :pswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_51

    goto :goto_26

    :cond_51
    move v2, v1

    :goto_26
    if-eqz v2, :cond_52

    .line 1134
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_29

    :cond_52
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1137
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/audioadapter/V1_0/IRadioCallbacks;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/audioadapter/V1_0/IRadioCallbacks;

    move-result-object p1

    .line 1140
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->unregisterCallback(Landroid/hardware/audioadapter/V1_0/IRadioCallbacks;)Z

    move-result p0

    .line 1141
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_29

    :pswitch_20
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_53

    goto :goto_27

    :cond_53
    move v2, v1

    :goto_27
    if-eqz v2, :cond_54

    .line 1117
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_29

    :cond_54
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1120
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/audioadapter/V1_0/IRadioCallbacks;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/audioadapter/V1_0/IRadioCallbacks;

    move-result-object p1

    .line 1123
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->registerCallback(Landroid/hardware/audioadapter/V1_0/IRadioCallbacks;)Z

    move-result p0

    .line 1124
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1126
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_29

    :pswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_55

    goto :goto_28

    :cond_55
    move v2, v1

    :goto_28
    if-eqz v2, :cond_56

    .line 1100
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_29

    :cond_56
    const-string p1, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1103
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->helloWorld(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1107
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1108
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_57
    :goto_29
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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

    const-string v0, "android.hardware.audioadapter@1.0::IRadioService"

    .line 1077
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

    .line 1084
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService$Stub;->interfaceDescriptor()Ljava/lang/String;

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
