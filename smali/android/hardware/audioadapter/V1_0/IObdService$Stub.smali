.class public abstract Landroid/hardware/audioadapter/V1_0/IObdService$Stub;
.super Landroid/os/HwBinder;
.source "IObdService.java"

# interfaces
.implements Landroid/hardware/audioadapter/V1_0/IObdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audioadapter/V1_0/IObdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 731
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

    .line 776
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 777
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 778
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 779
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

    .line 752
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

    .line 739
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.audioadapter@1.0::IObdService"

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

    const-string p0, "android.hardware.audioadapter@1.0::IObdService"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 785
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

    goto/16 :goto_18

    :sswitch_0
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_37

    .line 1274
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1275
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, v2, :cond_2

    .line 1261
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1262
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1264
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->notifySyspropsChanged()V

    goto/16 :goto_18

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 1245
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1246
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1248
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1251
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1252
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1253
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 1230
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1233
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->ping()V

    .line 1236
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1237
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :sswitch_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_37

    .line 1220
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1221
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    if-eq v1, v2, :cond_9

    .line 1207
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1210
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->setHALInstrumentation()V

    goto/16 :goto_18

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    :goto_2
    if-eqz v2, :cond_b

    .line 1174
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1177
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1180
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1182
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1184
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1185
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1186
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1187
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v1, p2, :cond_c

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1191
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    const-wide/16 v0, 0x0

    .line 1195
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1197
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1199
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    :goto_4
    if-eqz v2, :cond_e

    .line 1158
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1161
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1164
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1165
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :sswitch_8
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    :goto_5
    if-eqz v2, :cond_10

    .line 1144
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1145
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_10
    const-string p0, "android.hidl.base@1.0::IBase"

    .line 1147
    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    :goto_6
    if-eqz v2, :cond_12

    .line 1128
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1129
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 1131
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1134
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    :goto_7
    if-eqz v2, :cond_14

    .line 1111
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_14
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 1114
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1117
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->getCpuUsed(I)I

    move-result p0

    .line 1118
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1119
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1120
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    :goto_8
    if-eqz v2, :cond_16

    .line 1094
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1095
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_16
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 1097
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1100
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->getTotalMem(I)J

    move-result-wide p0

    .line 1101
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1102
    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    :goto_9
    if-eqz v2, :cond_18

    .line 1077
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_18
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 1080
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1083
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->getFreeMem(I)J

    move-result-wide p0

    .line 1084
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1085
    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    :goto_a
    if-eqz v2, :cond_1a

    .line 1060
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_1a
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 1063
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1066
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->getVersion(I)Ljava/lang/String;

    move-result-object p0

    .line 1067
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1068
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    :goto_b
    if-eqz v2, :cond_1c

    .line 1042
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_1c
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 1045
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1048
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1049
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->fileExists(Ljava/lang/String;I)Z

    move-result p0

    .line 1050
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1051
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1052
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    goto :goto_c

    :cond_1d
    move v2, v1

    :goto_c
    if-eqz v2, :cond_1e

    .line 1026
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1027
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_1e
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 1029
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->rollBack()I

    move-result p0

    .line 1032
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1033
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    goto :goto_d

    :cond_1f
    move v2, v1

    :goto_d
    if-eqz v2, :cond_20

    .line 1008
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_20
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 1011
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1014
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1015
    invoke-virtual {p0, v2, v3, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->reboot(JI)I

    move-result p0

    .line 1016
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1017
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1018
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    goto :goto_e

    :cond_21
    move v2, v1

    :goto_e
    if-eqz v2, :cond_22

    .line 992
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_22
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 995
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->startUpdate()I

    move-result p0

    .line 998
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_23

    goto :goto_f

    :cond_23
    move v2, v1

    :goto_f
    if-eqz v2, :cond_24

    .line 976
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_24
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 979
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->getUpdateInfo()Ljava/util/ArrayList;

    move-result-object p0

    .line 982
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 983
    invoke-static {p3, p0}, Landroid/hardware/audioadapter/V1_0/UpdateInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25

    goto :goto_10

    :cond_25
    move v2, v1

    :goto_10
    if-eqz v2, :cond_26

    .line 958
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 959
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_26
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 961
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    new-instance p1, Landroid/hardware/audioadapter/V1_0/UpdateInfo;

    invoke-direct {p1}, Landroid/hardware/audioadapter/V1_0/UpdateInfo;-><init>()V

    .line 964
    invoke-virtual {p1, p2}, Landroid/hardware/audioadapter/V1_0/UpdateInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 965
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->removeUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I

    move-result p0

    .line 966
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 967
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 968
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_27

    goto :goto_11

    :cond_27
    move v2, v1

    :goto_11
    if-eqz v2, :cond_28

    .line 940
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_28
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 943
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    new-instance p1, Landroid/hardware/audioadapter/V1_0/UpdateInfo;

    invoke-direct {p1}, Landroid/hardware/audioadapter/V1_0/UpdateInfo;-><init>()V

    .line 946
    invoke-virtual {p1, p2}, Landroid/hardware/audioadapter/V1_0/UpdateInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 947
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->addUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I

    move-result p0

    .line 948
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 950
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    goto :goto_12

    :cond_29
    move v2, v1

    :goto_12
    if-eqz v2, :cond_2a

    .line 924
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_2a
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 927
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->getCrashInfo()Ljava/util/ArrayList;

    move-result-object p0

    .line 930
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 931
    invoke-static {p3, p0}, Landroid/hardware/audioadapter/V1_0/CrashInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2b

    goto :goto_13

    :cond_2b
    move v2, v1

    :goto_13
    if-eqz v2, :cond_2c

    .line 905
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_2c
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 908
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 913
    invoke-virtual {p0, p1, p4, p2}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->writeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 914
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 915
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2d

    goto :goto_14

    :cond_2d
    move v2, v1

    :goto_14
    if-eqz v2, :cond_2e

    .line 887
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_2e
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 890
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 894
    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->readFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 895
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    goto :goto_15

    :cond_2f
    move v2, v1

    :goto_15
    if-eqz v2, :cond_30

    .line 868
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :cond_30
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 871
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 875
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 876
    invoke-virtual {p0, p1, p4, p2}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->runCommand(Ljava/lang/String;ZI)Landroid/hardware/audioadapter/V1_0/CmdExeInfo;

    move-result-object p0

    .line 877
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 878
    invoke-virtual {p0, p3}, Landroid/hardware/audioadapter/V1_0/CmdExeInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_18

    :pswitch_f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_31

    move v1, v2

    :cond_31
    if-eq v1, v2, :cond_32

    .line 853
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_18

    :cond_32
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 856
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    new-instance p1, Landroid/hardware/audioadapter/V1_0/CrashInfo;

    invoke-direct {p1}, Landroid/hardware/audioadapter/V1_0/CrashInfo;-><init>()V

    .line 859
    invoke-virtual {p1, p2}, Landroid/hardware/audioadapter/V1_0/CrashInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 860
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->transferCrashLog(Landroid/hardware/audioadapter/V1_0/CrashInfo;)V

    goto :goto_18

    :pswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_33

    goto :goto_16

    :cond_33
    move v2, v1

    :goto_16
    if-eqz v2, :cond_34

    .line 836
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_18

    :cond_34
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 839
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/audioadapter/V1_0/IObdCallbacks;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/audioadapter/V1_0/IObdCallbacks;

    move-result-object p1

    .line 842
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->unregisterCallback(Landroid/hardware/audioadapter/V1_0/IObdCallbacks;)Z

    move-result p0

    .line 843
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 845
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_18

    :pswitch_11
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_35

    goto :goto_17

    :cond_35
    move v2, v1

    :goto_17
    if-eqz v2, :cond_36

    .line 819
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_18

    :cond_36
    const-string p1, "android.hardware.audioadapter@1.0::IObdService"

    .line 822
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/audioadapter/V1_0/IObdCallbacks;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/audioadapter/V1_0/IObdCallbacks;

    move-result-object p1

    .line 825
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->registerCallback(Landroid/hardware/audioadapter/V1_0/IObdCallbacks;)Z

    move-result p0

    .line 826
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_37
    :goto_18
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    const-string v0, "android.hardware.audioadapter@1.0::IObdService"

    .line 796
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

    .line 803
    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/IObdService$Stub;->interfaceDescriptor()Ljava/lang/String;

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
